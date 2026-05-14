# EE-102: Standalone Audio-Reactive LED Sequencer

**Author:** Can Kurc · Student ID 22502100  
**Course:** EE-102 Introduction to Digital Circuit Design (Section 02)  
**Institution:** Bilkent University, Spring 2026  
**Instructor:** Prof. Ergin Atalar

---

## Overview

A standalone, real-time audio-reactive LED controller built **entirely in VHDL** on a Digilent Basys 3 FPGA. The system listens to ambient audio through a microphone, isolates the energy envelope using a custom digital filter, detects bass beats with a hysteresis-based detector, and drives a 60-pixel WS2812B addressable LED strip with nanosecond-accurate timing — all in synthesized digital logic, with no microcontroller, no soft processor core, and no software runtime.

End-to-end latency from acoustic event to visible color change is **under 5 ms**. The strip refreshes at **~435 fps**. The audio is sampled at **~962 kSPS** through the Artix-7 on-chip XADC.

---

## Project Highlights

- **Pure VHDL.** No MicroBlaze, no AXI, no software. All logic is cycle-deterministic.
- **Custom WS2812B driver** implementing the strict single-wire NRZ protocol with 10 ns timing precision.
- **Hysteresis beat detection** inspired by the Schmitt trigger — two switch-tunable thresholds, event-driven, no false re-triggers.
- **Three-state animation FSM** with fading, idle hold, and a triangle-wave breathing animation during silence.
- **Dual-clock-rate design pattern** capturing 10 ns beat pulses while running animation timers on a 435 Hz frame tick — both inside one synchronous process.
- **Strictly modular architecture.** Phase 1's manual switch interface was replaced with the Phase 2 audio pipeline by changing a few wires in the block design — zero modifications to any other module.

---

## System Architecture

```
    ┌──────────────┐    ┌──────────────┐    ┌─────────┐
    │  MAX4466 mic │───▶│ 10kΩ / 4.7kΩ │───▶│  XADC   │
    │  (3.3 V max) │    │   divider    │    │  12-bit │
    └──────────────┘    └──────────────┘    └────┬────┘
                                                 │ 12-bit @ ~962 kSPS
                                                 ▼
                                       ┌──────────────────┐
                                       │  moving_average  │  4-tap, ÷4 via shift
                                       └────────┬─────────┘
                                                ▼
                                       ┌─────────────────────┐
                                       │ hysteresis_detector │  2-state FSM, tunable
                                       └────────┬────────────┘
                                                ▼ 10 ns beat pulse
                                       ┌──────────────────┐
                                       │ beat_color_auto  │  3-state animation FSM
                                       └────────┬─────────┘
                                                ▼ color_idx + brightness
                                       ┌──────────────┐
                                       │  color_lut   │  16-color ROM + dimmer
                                       └────────┬─────┘
                                                ▼ 24-bit GRB
                                       ┌──────────────────┐
                                       │ ws2812b_driver   │  2-state FSM, 100 MHz
                                       └────────┬─────────┘
                                                ▼ 1440 bits / 2.3 ms frame
                                       ┌──────────────┐
                                       │  330 Ω → DIN │
                                       │  60 × WS2812B│
                                       └──────────────┘
```

All blocks are wired together in three Vivado Block Designs: `seven_segment_display`, `led_subsystem`, and `master_wrapper` (the top level).

---

## Hardware

| Component | Notes |
|---|---|
| **FPGA** | Digilent Basys 3 (Artix-7 XC7A35TCPG236-1), 100 MHz |
| **Microphone** | MAX4466 electret module, adjustable gain |
| **Voltage divider** | 10 kΩ / 4.7 kΩ, scales 3.3 V mic output to ~1.05 V for the XADC (rated 1.0 V max) |
| **LED strip** | 60-pixel WS2812B, GRB color order |
| **PSU** | Mervesan MT-60-5, 5 V / 12 A SMPS |
| **Series resistor** | 330 Ω on DIN, close to the first LED, for transmission-line damping |
| **Decoupling** | 1000 µF / 25 V electrolytic across V+ / V- at the LED injection point |
| **Shared ground** | PSU V− tied to Basys 3 PMOD JA Pin 5 to establish a common reference |

> ⚠️ **Mains safety.** The Mervesan PSU is wired directly to 220 V AC and bolted to a chassis earth. Do not replicate without proper enclosure and earth grounding.

---

## VHDL Module Reference

### Phase 2 — full DSP-to-LED pipeline

| Module | Role |
|---|---|
| `moving_average.vhd` | 4-tap moving-average filter; smooths the raw XADC stream. Division by 4 is a free 2-bit right shift. |
| `hysteresis_detector.vhd` | Two-state FSM (ARMED / FIRED). Fires a single-cycle `beat_pulse` when the filtered signal crosses the upper threshold; re-arms only after the signal falls below the lower threshold. Both thresholds are live-tunable via Basys 3 switches. |
| `beat_color_auto.vhd` | Three-state animation FSM (FADING → FADED_WAIT → BREATHING). On every beat, snaps back to FADING with the next color at full brightness. Uses the **dual-clock-rate pattern** — outer process on the 100 MHz clock to capture beat pulses, inner state logic gated on the `frame_done` tick from the LED driver. |
| `color_lut.vhd` | 16-entry GRB color ROM with per-channel brightness scaling. The 3-bit brightness input right-shifts each channel for 8 levels. |
| `ws2812b_driver.vhd` | Two-state FSM (RESET_STATE / SEND_STATE) driving the strip's single-wire NRZ protocol. Serializes 1440 bits per frame with cycle-accurate timing: T0H=40, T0L=85, T1H=80, T1L=45, reset=50,000 ticks. |

### Phase 1 — manual control (kept for reference)

| Module | Role |
|---|---|
| `manual_color_select.vhd` | Reads switches for color index, brightness, and enable. Phase 2 replaces this module with `beat_color_auto`; the rest of the pipeline is unchanged. |

### Seven-segment display subsystem (from Lab 5, repurposed)

| Module | Role |
|---|---|
| `binary_input_to_7_segment_display.vhd` | 4-bit BCD-to-7-segment decoder (with hex letters). |
| `anode_decoder.vhd` | 2-bit digit-select to 4-bit one-hot anode enable. |
| `clock_divider.vhd` | 20-bit refresh counter feeding `digit_select`. |
| `mux_4_to_1.vhd` | 4:1 nibble selector across the 16-bit input. |

---

## WS2812B Protocol — Why It's Hard

The WS2812B is a single-wire NRZ protocol with no clock line. The duration of each HIGH pulse alone encodes whether the bit is a 1 or a 0:

| Symbol | Description | Nominal | Cycles @ 100 MHz |
|---|---|---|---|
| T0H | "0" bit HIGH | ~400 ns | 40 |
| T0L | "0" bit LOW  | ~850 ns | 85 |
| T1H | "1" bit HIGH | ~800 ns | 80 |
| T1L | "1" bit LOW  | ~450 ns | 45 |
| RES | Latch / reset LOW | ≥ 300 µs | 50,000 (uses 500 µs for margin) |

Each LED eats the first 24 bits it sees (its GRB color, MSB first) and forwards every bit after that to the next LED in the chain. For 60 pixels, the FPGA streams **1440 bits in one continuous transmission** followed by the 500 µs latch period. Total frame time: ~2.3 ms → ~435 fps.

A single missed clock tick corrupts the color data for all 60 LEDs. There is no library to hide this — the driver counts cycles by hand.

---

## Development Phases

The project was built in two distinct phases, each with its own validation milestone.

### Phase 1 — Hardware bring-up and manual control

Phase 1 was the foundation: everything needed to prove the hardware and the LED protocol worked, with no audio involved at all.

**What was built in Phase 1:**

- The full analog front-end — MAX4466 microphone, voltage divider on a breadboard, oscilloscope validation of the divider output against the 1.0 V XADC limit.
- External power delivery — the 5 V / 12 A Mervesan SMPS, the 1000 µF decoupling capacitor at the LED injection point, the 330 Ω series resistor on the data line, and the shared-ground connection between the PSU and the Basys 3.
- The `ws2812b_driver` — the cycle-accurate FSM that serializes 1440 bits per frame at the WS2812B's nanosecond timing tolerances.
- The `color_lut` — a 16-color ROM with 8-level brightness scaling.
- The `manual_color_select` module — a thin pass-through that reads the Basys 3 switches and forwards a 4-bit color index, a 3-bit brightness, and the enable bit straight to the driver.
- The seven-segment display chain from Lab 5, repurposed to show the live 12-bit XADC value in hex so the microphone could be visually tested.

**How Phase 1 was validated:**

- A hardcoded `x"FFFFFF"` was driven to all 60 LEDs at full white, confirming bit serialization, daisy-chaining, and timing.
- A 16-color test verified every entry in the lookup table against its switch combination.
- The enable switch and reset button were tested for correct behavior.
- The seven-segment display was confirmed to fluctuate live with sound, validating the XADC path end-to-end.
- A TA signed off Phase 1 against the proposal.

At the end of Phase 1 the LED strip lit up in any of 16 colors at any of 8 brightness levels, driven by physical switches — fully working as a manual RGB controller, but with no audio reactivity yet.

### Phase 2 — Audio-reactive pipeline

Phase 2 added everything that turns the controller into a music-reactive system: `moving_average`, `hysteresis_detector`, and `beat_color_auto`. The full XADC-to-LED pipeline became operational.

**The modular swap.** This is the project's strongest architectural payoff. The transition from Phase 1 to Phase 2 was made by:

1. Removing the `manual_color_select` instance from the block design.
2. Wiring `beat_color_auto`'s outputs to the same `color_idx` / `brightness_level` / `enable` ports.

Zero modifications were made to `ws2812b_driver`, `color_lut`, or the seven-segment display chain. They didn't know or care that their inputs were now coming from audio instead of switches. The clean handover is a direct result of the strict single-responsibility-per-module rule followed from day one.

---

## Performance

| Metric | Value |
|---|---|
| End-to-end latency (sound → light) | < 5 ms |
| LED frame rate | ~435 fps |
| XADC sample rate | ~962 kSPS |
| Beat detector pulse width | 10 ns (one 100 MHz cycle) |
| Animation tick rate | ~435 Hz (driven by `frame_done`) |
| Color palette | 16 colors × 8 brightness levels |
| Logic utilization (Artix-7 XC7A35T) | LUT 1%, FF 1%, IO 27%, BUFG 3% |

---

## Basys 3 I/O Map

| Signal | Pin | Direction |
|---|---|---|
| Microphone analog in | JXADC Pin 1 (VAUX6) | In |
| WS2812B data out | PMOD JA Pin 1 | Out |
| Shared ground | PMOD JA Pin 5 | — |
| Reset | BTNC (center button) | In |
| LED enable | SW15 | In |
| Hysteresis upper threshold | SW0–SW5 | In |
| Hysteresis lower threshold | SW6–SW11 | In |
| Seven-segment display | On-board pins | Out |
| Clock | W5 (100 MHz) | In |

The full XDC constraints file is in [`vivado_project/`](vivado_project/).

---

## Repository Structure

```
EE102-Audio-Reactive-LEDs/
├── docs/
│   └── EE_102_Project_Report.pdf       Final report
├── vivado_project/
│   ├── *.xpr                           Vivado workspace
│   ├── constraints.xdc                 Pin / IO mapping
│   ├── sources/                        VHDL source files
│   └── ip/                             Generated XADC IP (Verilog, auto-generated)
├── .gitattributes                      Marks Vivado-generated files as such for language stats
├── .gitignore                          Excludes Vivado synthesis junk
└── README.md
```

---

## Build & Run

1. Open `vivado_project/*.xpr` in Vivado 2023.2 (or newer).
2. Run Synthesis, Implementation, and Generate Bitstream.
3. Connect Basys 3, MAX4466 (via voltage divider), and the WS2812B strip (with its own 5 V PSU and shared ground).
4. Program the device.
5. Tune the upper and lower thresholds on SW0–SW11 for your room's noise floor — quiet bedroom: upper around `0x18`, lower around `0x10`; loud party: bump both up.
6. SW15 enables / disables the strip. BTNC resets.

---

## Course Context

This project covers Bilkent EE-102 weeks 10–12 (finite state machine design methodology) and builds on lab work: Lab 2 (hierarchical modules with port maps), Lab 4 (logical shifts), Lab 5 (seven-segment display, multiplexer, clock divider). It extends the course material into territory not covered in lecture — the dual-clock-rate synchronization pattern, the default-assignment FSM output style, and the cycle-accurate WS2812B protocol.

The full engineering narrative, including the debugging stories (the `nolurcalis` bit-slice bug, the SMPS continuity-test red herring) and the AI usage disclosure, is in the final report linked below.

---

## Resources

📄 **Final Report:** [`docs/EE_102_Project_Report.pdf`](docs/EE_102_Project_Report.pdf)  
🎥 **Demo Video:** [https://youtu.be/OFfqUWP0drM](https://youtu.be/OFfqUWP0drM)  
🔗 **Lab Repository:** [Bilkent-EEE102-Labs](https://github.com/CanKurc/Bilkent-EEE102-Labs)

---

*Developed for the Bilkent University EE-102 Spring 2026 term project.*