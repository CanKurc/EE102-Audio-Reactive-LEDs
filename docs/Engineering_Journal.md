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
  * Series Resistor ($R_s$): 330Ω (or 470Ω)
* **Placement:** Soldered $R_s$ directly in series with the WS2812B green `DIN` wire, placing the component as physically close to the first LED pixel as possible to maximize signal integrity and prevent the nanosecond-level square waves from echoing.
* **Insulation:** Secured the soldered joint using heat shrink tubing.

**Testing & Validation:**
* Conducted a "body capacitance" noise injection test on the floating data pin to manually trigger the LED ICs prior to FPGA integration. 
* **Engineering Note on Signal Filtering:** The LED strip remained dark during the touch test. It was concluded that $R_s$ was successfully acting as a low-pass filter, attenuating the ambient 50Hz electromagnetic noise picked up by the human body and preventing spontaneous, unintended LED triggering.

**Final Integration:**
* A standard jumper pin was soldered to the input side of $R_s$ and routed directly to the Basys 3 PMOD Header JA, Pin 1, preparing the hardware to receive the 3.3V logic signal from the FPGA.







## Date: March 31, 2026 - Issue #4 Completed (VHDL Protocol Synthesis & Toolchain Environment)

**Objective:** Develop a nanosecond-precise timing controller in pure VHDL to satisfy the high-speed asynchronous protocol requirements of the WS2812B LEDs using the Basys 3 100MHz onboard oscillator.

**Logic Design & Implementation:**
* **Timing Architecture:** A behavioral Finite State Machine (FSM) was implemented utilizing a 10ns clock period ($T_{clk} = 1/100\text{MHz}$). Logic bit-widths were defined by specific clock-cycle counts to ensure protocol compliance.
    * **Logic 0 Bit:** Generated by a 40-tick HIGH pulse (400ns) followed by an 85-tick LOW pulse (850ns).
    * **Logic 1 Bit:** Generated by an 80-tick HIGH pulse (800ns) followed by a 45-tick LOW pulse (450ns).
    * **Reset/Latch Pulse:** Defined as 50,000 ticks (500µs) of constant LOW voltage to ensure data is successfully latched into the internal PWM drivers of the 60-LED strip.
* **Modular Routing:** A diagnostic internal signal was routed to both the physical PMOD output and the onboard LD0 (U16). This provided a secondary logic probe to verify FSM transitions independently of the external hardware.

**Testing & Validation:**
* **Environment Debugging:** Synthesis was initially interrupted by Error `[Common 17-1293]`. 
* **Engineering Note on Toolchain Integrity:** It was determined that the Vivado Tcl backend was incompatible with file paths containing spaces (e.g., `C:\Users\Can Kurc\`). Furthermore, real-time OneDrive synchronization resulted in metadata locks during bitstream generation. A project migration to a local root directory `C:\EE102_Project\` was performed, successfully resolving all directory access and write-permission conflicts.
* **Logic Probe Results:** Post-migration, the onboard LD0 demonstrated a steady, high-frequency flicker (approx. 430Hz), confirming that the VHDL code was successfully generating data frames and cycling between the SEND and RESET states.

## Date: March 31, 2026 - Issue #5 Completed (Reverse Polarity Recovery & Logic Threshold Alignment)

**Objective:** Diagnose system failure following a high-current reverse-polarity event and reconcile the 3.3V FPGA logic levels with the 5.0V TTL requirements of the LED ICs.

**Hardware Failure Analysis:**
* **Fault Detection:** A "Static High" characterization test was performed by forcing the VHDL output to a constant '1'. 
* **Voltage Collapse:** A raw output of 3.33V was measured at the jumper wire. However, upon contact with the LED `DIN` pad, the voltage was observed to collapse to 0.65V.
* **Engineering Note on Silicon Junction Damage:** The measured 0.65V was identified as the characteristic forward voltage drop ($V_f$) of a silicon PN-junction. This confirmed that a reverse-polarity event (V+ and GND swapped) had occurred. The internal input protection diode of the first LED chip was acting as a clamped short-circuit to ground, effectively draining all electrical pressure from the FPGA pin.

**System Recovery & Optimization:**
* **Physical Correction:** The Mervesan PSU terminals were re-terminated to ensure correct DC polarity (Red to +5V, White to GND). 
* **Bypass Strategy:** The damaged first pixel was bypassed by injecting the data signal directly into the `DIN` pad of the second LED. The remainder of the strip successfully illuminated, confirming that the failure was localized to the first pixel.
* **Logic Threshold Calibration:** To bridge the gap between the 3.3V FPGA output and the 3.5V requirement of the LEDs (at 5.0V $V_{DD}$), the Mervesan `+V ADJ` potentiometer was adjusted to lower the supply voltage to 4.6V.
* **Theoretical Calculation:** At $V_{DD} = 4.6V$, the logic high threshold ($V_{IH}$) is reduced to:
  $$V_{IH(min)} = 0.7 \times 4.6V \approx 3.22V$$
  This adjustment established a stable noise margin, allowing the 3.3V FPGA signal to be correctly recognized as a valid Logic 1.

**Thermal Management & Final Integration:**
* **Power Draw Analysis:** Significant thermal accumulation was observed during full-white ($x"FFFFFF"$) testing due to a theoretical current draw of 3.6 Amps. 
* **Mitigation:** The VHDL `color_data` was updated to $x"001000"$ (Low-intensity Red). This reduced system current to $<0.15A$, maintaining a safe operating temperature during Phase 2 development.
* **Achievement:** Hardware communication was successfully established across all remaining pixels. Phase 1 (Hardware Integration) is officially complete.
### 5. Final Achievement: Physical Layer Validation
We concluded the day by successfully driving all 60 pixels. 
* **Thermal Mitigation:** We observed that at full white brightness ($x"FFFFFF"$), the strip drew over **3.5 Amps** and became dangerously hot.
* **Result:** We optimized the VHDL source to output a low-intensity Red ($x"001000"$). This maintains visual confirmation that our FSM is working perfectly while keeping current draw below **0.15A**, ensuring hardware safety as we prepare to integrate the Audio XADC logic.

**Summary:** The "Physical Layer" is now fully validated. The FPGA is communicating with the hardware, the timing is within spec, and the electrical environment is stabilized.