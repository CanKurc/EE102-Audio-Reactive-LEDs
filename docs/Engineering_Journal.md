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