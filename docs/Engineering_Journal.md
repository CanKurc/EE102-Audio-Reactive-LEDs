## Date: March 11, 2026 - Issue #1 Completed (Analog Front-End Construction)

**Objective:** Design and construct a physical voltage divider to safely interface the 3.3V MAX4466 audio sensor with the 1.0V-tolerant Artix-7 XADC pins on the Basys 3.

**Hardware & Assembly:**
* **Sensor Preparation:** Soldered a 3-pin male header to the MAX4466 PCB using a Bakon SBK936b station set to 350°C and ProsKit flux to ensure high-quality, low-resistance audio signal joints.
* **Divider Network:** Implemented a passive resistive voltage divider on the breadboard. 
  * Series Resistor ($R_1$): 10kΩ
  * Shunt Resistor ($R_2$): 4.7kΩ
* **Theoretical Transfer Function:** Based on the 3.3V supply from the Basys 3, the maximum theoretical peak voltage was calculated as:
  $$V_{out} = V_{in} \times \frac{R_2}{R_1 + R_2} = 3.3V \times \frac{4700}{10000 + 4700} \approx 1.05V$$



**Testing & Validation:**
* Conducted live testing using an ANENG AN8205C digital multimeter set to DC voltage.
* **Idle State:** Measured a steady 0.52V DC bias at the center tap in a quiet environment.
* **Dynamic State:** Physical pressure testing (blowing directly into the microphone capsule) yielded a peak of 0.57V. 
* **Engineering Note on AC vs DC Measurement:** Attempted to measure loud music, but the multimeter remained at 0.52V. It was concluded that the digital multimeter's slow DC sample rate was merely averaging the fast-moving AC audio waveform. The 0.57V pressure test successfully proved the dynamic range capabilities of the sensor while guaranteeing the absolute peak stays well below the 1.0V XADC destruction threshold.

**Final Integration:**
* The safe center tap was successfully routed via jumper wire to the Basys 3 JXADC Header, Pin 1, which corresponds to the internal `VAUX6` analog channel.

## Date: March 25, 2026 - Issue #2 Completed (High-Current Power Delivery & System Grounding)

**Objective:** Design and construct an isolated, high-current power delivery system to safely drive a 60-pixel WS2812B LED strip using a 5V/12A SMPS without drawing current through the Basys 3 PMOD headers.

**Hardware & Assembly:**
* **AC Mains Preparation:** Stripped and integrated Brown (Live) and Blue (Neutral) internal wires from a standard AC power cable to interface with the Mervesan MT-60-5 power supply. Avoided tinning the wire tips to prevent mechanical failure via cold flow (creep) under the terminal screws, relying on tightly twisted bare copper for a secure mechanical bond.
* **DC Power Routing:** Removed the factory JST connector from the WS2812B strip to enable direct, high-current 3-way soldered junctions.
* **Decoupling Network:** Integrated a 1000µF electrolytic capacitor directly across the 5V and GND injection points. Soldered using a Bakon SBK936b station set to 350°C. 
* **Insulation:** Secured and physically isolated both the 5V and GND junctions using heavy-duty heat shrink tubing to eliminate short-circuit risks.

**Testing & Validation:**
* Conducted cold circuit testing using a digital multimeter set to continuity mode.
* **Engineering Note on SMPS Measurement:** Initial continuity testing across the PSU output terminals yielded a continuous beep, indicating a theoretical short. By dividing the circuit and testing the cables in isolation, it was concluded that the multimeter was reading the SMPS's internal inductors and bleed resistors. The isolated wiring was verified to have infinite resistance between rails.
* **Live State:** Powered the Mervesan via 220V mains. The multimeter measured a clean, stable 5.0V DC at the far end of the WS2812B strip, confirming zero significant voltage drop across the soldered junctions.

**Final Integration:**
* A dedicated common ground jumper wire was successfully routed from the Mervesan `-V` terminal to the Basys 3 PMOD Header JA, Pin 5, establishing a shared 0V reference plane for the logic signals.


## Date: March 25, 2026 - Issue #3 Completed (WS2812B Signal Integrity)

**Objective:** Prevent transmission line ringing and protect the FPGA from potential voltage spikes on the high-speed data line between the Basys 3 and the LED strip.

**Hardware & Assembly:**
* **Impedance Matching:** Implemented a series current-limiting resistor ($R_s$) on the data line.
  * Series Resistor ($R_s$): 330Ω
* **Placement:** Soldered $R_s$ directly in series with the WS2812B green `DIN` wire, placing the component as physically close to the first LED pixel as possible to maximize signal integrity and prevent the nanosecond-level square waves from echoing.
* **Insulation:** Secured the soldered joint using heat shrink tubing.

**Testing & Validation:**
* Conducted a "body capacitance" noise injection test on the floating data pin to manually trigger the LED ICs prior to FPGA integration. 
* **Engineering Note on Signal Filtering:** The LED strip remained dark during the touch test. It was concluded that $R_s$ was successfully acting as a low-pass filter, attenuating the ambient 50Hz electromagnetic noise picked up by the human body and preventing spontaneous, unintended LED triggering.

**Final Integration:**
* A standard jumper pin was soldered to the input side of $R_s$ and routed directly to the Basys 3 PMOD Header JA, Pin 1, preparing the hardware to receive the 3.3V logic signal from the FPGA.







## Date: March 31, 2026 - Issue #5 In Progress (VHDL Physical Layer Protocol Synthesis)

**Objective:** Implement a Behavioral Finite State Machine (FSM) to synthesize the 800kHz single-wire WS2812B protocol and validate hardware communication via a full-intensity white light test.

**VHDL Logic & FSM Architecture:**
* **State Definitions:** A three-state machine was defined to manage the asynchronous data stream:
    * **IDLE/LATCH:** The data line was held at 0V for a period exceeding 300µs (30,000 clock ticks). This state was utilized to signal the end of a data frame, forcing the internal LED drivers to commit the shifted bits to the PWM output.
    * **SEND_BIT:** A high-precision timing loop was implemented to generate the Pulse Width Modulated (PWM) bit-stream. Using the 10ns clock period of the Basys 3, the protocol was executed as follows:
        * **Logic 0:** 40 ticks HIGH / 85 ticks LOW.
        * **Logic 1:** 80 ticks HIGH / 45 ticks LOW.
* **Shift Register Implementation:** A 24-bit internal shift register was coded to serialize the Green, Red, and Blue (GRB) color data. For initial validation, the vector was hardcoded to `x"FFFFFF"`. The Most Significant Bit (MSB) was extracted and transmitted first, with a bit-counter used to trigger the transition back to the LATCH state after 1,440 bits (60 LEDs × 24 bits) were processed.
* **White Light Achievement:** The hardcoded `x"FFFFFF"` value was successfully transmitted across the entire 60-LED strip. This result provided empirical proof that the shift register logic, bit-timing accuracy, and the serial daisy-chaining capability of the hardware were fully operational.

**Hardware Validation & Logic Alignment:**
* **Polarity Correction:** The Mervesan MT-60-5 power supply wiring was corrected (Red to +5V, White to GND) after a reverse-polarity event was identified via multimeter. It was observed that the first LED chip resumed normal operation without the need for a physical bypass, indicating the internal protection circuitry prevented permanent latch-up.

**Testing & Validation:**
* **Static Measurement:** An ANENG AN8205C multimeter was utilized to verify a steady 3.33V output at the FPGA pin during a "Static High" test.
* **Environmental Resolution:** A critical project migration was performed to `C:\EE102_Project\` to eliminate write-permission errors caused by the OneDrive sync engine and file-path character restrictions. This migration enabled the successful generation of the bitstream used for the final hardware test.

**Current Status:** The FSM and 24-bit serialization logic are verified via the white light test. Issue #5 remains "In Progress" as dynamic color control via external inputs has not yet been integrated.


## Date: March 31, 2026 - Issue #5 Continued (Reference Architecture: Dynamic Color & Brightness Control)

**Objective:** Design and document a reference architecture for extending the white-light FSM to accept real-time color selection and brightness control from the Basys 3 physical switches.

**Reference Design Decisions:**
* **Switch Allocation:** 8 of the 16 onboard switches were allocated to LED control:
    * SW0–SW3 (`color_sel[3:0]`): 4-bit index into a 16-entry Color Look-Up Table.
    * SW4–SW6 (`brightness[2:0]`): 3-bit brightness scaler using right-shift division.
    * SW7 (`led_enable`): Master on/off control. When low, all-zero data is sent (strip dark).
* **Color LUT:** A constant array of 16 pre-defined 24-bit colors in GRB byte order (the native format of the WS2812B protocol).
* **Brightness Scaling:** Each 8-bit color channel is right-shifted by the brightness value (0–7), providing 8 logarithmic brightness levels from full intensity (÷1) to very dim (÷128). Right-shifting synthesizes to pure wire routing with zero logic resource cost.
* **Frame-Boundary Switch Sampling:** Switch values are latched once per frame at the transition from `RESET_STATE` to `SEND_STATE`, preventing mid-frame color tearing.
* **`mod 24` Replacement:** The combinational `bit_count mod 24` operation was identified as synthesizing to an expensive hardware divider. The reference design replaces it with a `bit_in_pixel` counter (0→23, rollover) using a simple comparator.

**Current Status:** Issue #5 remains "In Progress". The next step is a from-scratch reimplementation, built incrementally, guided by the course syllabus material and the author's existing VHDL knowledge.


## Date: April 3, 2026 - Issue #5 Completed (Dynamic Color Control & Modular Refactoring)

**Objective:** Extend the validated white-light FSM to support 16-color selection, 8-level brightness control, and on/off switching via the Basys 3 physical switches. Simultaneously refactor the monolithic design into a modular architecture to prepare for Phase 2 integration.

**Dynamic Color & Brightness Implementation:**
* **Color Look-Up Table:** A 16-entry constant array of 24-bit GRB colors was implemented. Switches SW0–SW3 provide a 4-bit index (`color_sel`) that selects the active color using `to_integer(unsigned(color_sel))` as the array index.
* **Brightness Scaling:** A VHDL function (`scale_brightness`) was implemented using `shift_right` from `IEEE.NUMERIC_STD`. Each 8-bit color channel (G, R, B) is right-shifted by the 3-bit brightness value from SW4–SW6, providing 8 logarithmic brightness levels from full (÷1) to very dim (÷128). Right-shifting synthesizes to zero-cost wire routing in hardware.
* **On/Off Enable:** Switch SW7 (`led_enable`) gates the output. When low, the driver sends all-zero data (strip dark).
* **Frame-Boundary Switch Sampling:** Switch values are latched exactly once per frame at the `RESET_STATE` → `SEND_STATE` transition, preventing mid-frame color tearing across the 60-LED strip.
* **Counter Optimization:** The combinational `bit_count mod 24` operation was replaced with a dedicated `bit_in_pixel` counter (0→23, rollover), eliminating an expensive hardware divider.
* **Constraints Update:** Pin mappings were added for SW0–SW7 (V17, V16, W16, W17, W15, V15, W14, W13) and the reset button BTNC (U18).

<<<<<<< HEAD
**Testing & Validation:**
* All 16 colors were verified on the physical 60-LED strip. Some colors require fine-tuning of their GRB hex values (noted for later adjustment in `color_lut.vhd`).
* All 8 brightness levels were verified from full intensity to barely visible.
* The on/off switch and center-button reset were confirmed operational.

**Modular Refactoring:**

The monolithic `led_controller.vhd` (170 lines) was split into four purpose-built modules to enable clean Phase 2 integration:

* **`ws2812b_driver.vhd`** — Pure physical layer. Takes a 24-bit `color_in` and `enable` signal, bit-bangs the WS2812B protocol to 60 LEDs. Contains the two-state FSM (RESET_STATE/SEND_STATE), timing constants, and all three counters. A `frame_done` output signal was added that pulses once per frame (~435 Hz), providing a timing reference for Phase 2's fade-out and breathing effects. This module never changes between phases.

* **`color_lut.vhd`** — Pure combinational color database. Takes a 4-bit `color_index` and 3-bit `brightness_level`, outputs a brightness-scaled 24-bit GRB color. Contains the 16-color constant array and the `scale_brightness` function. Shared by both Phase 1 and Phase 2 without modification.

* **`manual_color_select.vhd`** — Phase 1 switch reader. Passes physical switch values (SW0–SW7) through to `color_index`, `brightness_level`, and `enable` outputs. Defines the interface contract for Phase 2: any module producing these three output signals (`color_index(3:0)`, `brightness_level(2:0)`, `enable`) can replace this module. In Phase 2, `beat_color_auto.vhd` will have identical output ports but derive values from beat detection, fade-out counters, and breathing logic.

* **`top_module.vhd`** — Structural wiring only. Instantiates all sub-modules and connects them via internal signals. Contains zero logic. The Phase 2 swap requires changing only one component instantiation (replacing `manual_color_select` with `beat_color_auto`).

**Design Decision — Modularity for Phase 2:**

The key interface boundary is the three signals between the "brain" module and `color_lut`: `color_index(3:0)`, `brightness_level(2:0)`, and `enable`. Phase 2 additions (moving average filter, hysteresis beat detector, color automation FSM with fade-out, cycling, and breathing) all connect upstream of this boundary without modifying any existing module.

**Updated Proposal:**

The project proposal was revised on April 2, 2026 to reflect the updated Phase 2 plan. New additions include: hysteresis-based dual-threshold beat detection (preventing flickering), beat-triggered color cycling through the LUT, smooth brightness fade-out after each beat pulse, and inter-beat breathing mode (triangle-wave brightness ramp when no beats are detected). GitHub Issues #8 and #9 were updated to reflect this scope.

**Current Status:** Issue #5 is closed. The modular LED control system is fully operational with switch-based color and brightness control. Next steps: Issue #4 (XADC microphone integration) and Issue #6 (Phase 1 top-level integration with seven-segment display).
=======
**Current Status:** Issue #5 remains "In Progress". The next step is a from-scratch reimplementation, built incrementally, guided by the course syllabus material and the author's existing VHDL knowledge.
>>>>>>> 98e9cde748029e6316ff535d3da4b16f173b56dd
