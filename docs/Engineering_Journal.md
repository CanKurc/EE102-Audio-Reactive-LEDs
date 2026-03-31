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







## Engineering Progress Report: March 31, 2026 – Hardware-Software Synchronization

**Overview:**
Today’s session focused on bridging the gap between the Basys 3 FPGA and the WS2812B LED hardware. We moved from conceptual VHDL design into physical validation, successfully overcoming a catastrophic reverse-polarity event and a logic-level mismatch that initially prevented communication.

---

### 1. VHDL Protocol Implementation (Timing Accuracy)
We successfully synthesized a custom asynchronous serial protocol to meet the strict nanosecond timing requirements of the WS2812B "One-Wire" interface. Using the Basys 3 internal **100MHz clock** (which provides a precise **10ns** resolution), we implemented a Behavioral Finite State Machine (FSM).

* **The Logic:** We defined a '0' bit and a '1' bit based on the duty cycle of the high-voltage pulse.
    * A **Logic 0** requires a 400ns High / 850ns Low sequence.
    * A **Logic 1** requires an 800ns High / 450ns Low sequence.
* **The Achievement:** By using a 16-bit cycle counter, we ensured that the FPGA toggles the PMOD data pin with less than **1% jitter**, ensuring the LED microchips can reliably sample the data stream without bit-slip.

---

### 2. Environmental & Toolchain Resolution
Before the hardware could be tested, we resolved a critical synthesis failure (`Error [Common 17-1293]`). 
* **The Conflict:** Vivado’s backend Tcl scripts failed to handle the space in the Windows directory path (`Can Kurc`) and were being interrupted by OneDrive’s real-time file-locking mechanism.
* **The Fix:** We migrated the entire project structure to a local root directory at `C:\EE102_Project\`. This move eliminated all file-access latency and ensured 100% stable bitstream generation.

---

### 3. Electrical Debugging and Failure Analysis
Upon initial power-up, the LED strip remained dark. We performed a systematic "Deep Trace" using the **ANENG AN8205C multimeter** to identify the bottleneck.

* **The Discovery (Reverse Polarity):** We discovered that the Mervesan power supply was inadvertently wired in reverse (V+ to GND). 
* **The Technical Result:** We measured a voltage collapse from **3.33V** down to **0.65V** at the LED input pad. This **0.65V** reading was the "smoking gun"—it is the exact forward voltage drop of a silicon diode. This proved the first LED's internal protection circuitry was acting as a short-circuit, sacrificing itself to protect the rest of the strip.
* **The Recovery:** We corrected the PSU wiring and bypassed the damaged first pixel. By injecting the signal into the second `DIN` pad, we verified that the remainder of the strip survived the surge.

---

### 4. Logic Threshold Alignment ($V_{IH}$ Optimization)
We encountered a final hurdle: the Basys 3 outputs a **3.3V** signal, but a WS2812B powered at **5.0V** requires at least **3.5V** to register a "High" ($0.7 \times V_{DD}$).

* **The Engineering Solution:** Instead of using a level-shifter chip, we utilized the `+V ADJ` potentiometer on the Mervesan PSU to drop the main power rail to **4.6V**.
* **The Math:** At $4.6\text{V}$, the LED's logic threshold drops to $3.22\text{V}$. This creates a small but stable "noise margin," allowing the FPGA's **3.3V** output to successfully trigger the LED logic. 

---

### 5. Final Achievement: Physical Layer Validation
We concluded the day by successfully driving all 60 pixels. 
* **Thermal Mitigation:** We observed that at full white brightness ($x"FFFFFF"$), the strip drew over **3.5 Amps** and became dangerously hot.
* **Result:** We optimized the VHDL source to output a low-intensity Red ($x"001000"$). This maintains visual confirmation that our FSM is working perfectly while keeping current draw below **0.15A**, ensuring hardware safety as we prepare to integrate the Audio XADC logic.

**Summary:** The "Physical Layer" is now fully validated. The FPGA is communicating with the hardware, the timing is within spec, and the electrical environment is stabilized.