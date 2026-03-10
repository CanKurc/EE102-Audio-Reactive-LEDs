# EEE-102 Term Project: Audio-Reactive LED Sequencer
**Author:** Can Kurc (ID: 22502100, Section: 002)

## 1. Introduction & Objectives
*Briefly describe the goal of the project: creating a standalone, pure-VHDL audio-reactive lighting system without the use of microcontrollers. Mention the strict hardware constraints and the nanosecond timing requirements.*

## 2. Hardware Architecture & Safety Implementation
### 2.1 Analog Front-End (AFE)
*Detail the MAX4466 microphone and the 10kΩ/4.7kΩ passive voltage divider used to protect the Basys 3 XADC from exceeding 1.0V.*

### 2.2 Power Delivery Network
*Explain the 60W Mervesan power supply, the necessity of the Earth Ground connection to the chassis, and the shared DC ground with the FPGA.*

### 2.3 Signal Integrity 
*Explain the purpose of the 1000µF decoupling capacitor and the 330Ω series resistor on the data line to prevent transmission line ringing.*

## 3. VHDL Digital Design (Phase 1 & 2)
### 3.1 XADC Instantiation (DRP)
*Discuss how the Dynamic Reconfiguration Port was used to continuously sample the analog audio.*

### 3.2 Digital Signal Processing (DSP)
*Explain the Moving Average Filter architecture. Detail how shift registers were used alongside bitwise right-shifting to perform hardware division and isolate bass beats.*

### 3.3 WS2812B Physical Layer (PHY) Controller
*Detail the Finite State Machine (FSM) used to generate the 800kHz protocol from the 100MHz system clock, including the >300µs reset latch.*

## 4. Experimental Setup & Results
*Include photos of the final breadboard, the Basys 3, and the LED strip. Describe the visual behavior of the LEDs reacting to music.*

## 5. Engineering Logbook & Troubleshooting
*Paste the contents of your `Engineering_Journal.md` here. Detail the specific bugs encountered (e.g., timing violations, grounding noise) and how they were resolved.*

## 6. Conclusion
*Summarize what was learned regarding FPGA hardware interfacing, DSP, and version control.*

## 7. References
* Basys 3 Reference Manual
* Xilinx 7 Series FPGAs XADC User Guide
* WS2812B Datasheet