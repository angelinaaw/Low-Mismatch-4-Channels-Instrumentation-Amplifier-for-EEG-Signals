# Low-Mismatch 4-Channel Instrumentation Amplifier for EEG Signals

**By [Team Name] Team**

---

## Datasheet

### **1. Functionality and Target Specifications**

This chip is a high-precision, low-mismatch instrumentation amplifier array specifically designed for multichannel Electroencephalography (EEG) signal measurement. It employs a **group-chopping technique** in which multiple chopper switches (MOSFETs) are cascaded to sequentially exchange differential input signals across channels. This cyclic routing allows each input to be amplified by every amplifier in the array, effectively averaging out gain mismatches. 

Additionally, input-referred DC offset is mitigated through chopper modulation and demodulation, which shifts low-frequency noise and offset to higher frequencies where they are easily filtered out. As a result, amplification across all channels becomes uniform and virtually free from bias. The design is implemented using the **IHP SG13G2 open-source PDK**, a 130 nm process technology selected for its high-precision analog capabilities and excellent component matching.

<h4 align="center">Table 1. Target Specification</h4>

<div align="center">

| **Parameter** | **Target Specs** | **Notes** |
| :--- | :--- | :--- |
| **Number of Channels** | 4 | Scalable to 8, 16, or more depending on chip area. |
| **Supply Voltage** | 3.3 V (Analog)<br>1.2 V (Digital) | Analog supply for switches/amps, digital for clock logic. [1] |
| **Input-Referred Noise** | 39 nV/√Hz | [1] |
| **Area per Channel** | 0.017 mm² | [1] |
| **Power Consumption** | < 200 µW / channel | At 3.3 V supply. |
| **NEF (Noise Efficiency Factor)** | 2.1 | Indicates high power efficiency relative to noise. [1] |
| **Gain Mismatch** | ~400 ppm | Between channels. [1] |

</div>

### **2. Block Diagram**

<p align="center">
  <img src="Images/BlockDiagramUpdate.jpg" alt="BlockDiagram">
</p>
<h4 align="center">Figure 1. Block Diagram of the System Design</h4>

<h4 align="center">Table 2. Complexity and Functionality of Blocks</h4>

<div align="center">

| **Block Component** | **Function** | **Complexity** | **Notes** |
| :--- | :--- | :---: | :--- |
| **Chopper Switch** | Reduces 1/f noise via modulation/demodulation. | High | Requires multi-phase clocks for multi-level switching. |
| **INA (Inst. Amp)** | Amplifies differential signals with high CMRR. | High | Uses time-division multiplexing. Requires fast settling time and optimized power (9 FETs/INA). |
| **Low Pass Filter** | Suppresses high-frequency noise/artifacts. | Moderate | Switched-capacitor topology. Simulation is challenging due to switching behavior. |
| **Frequency Divider** | Generates system clocks from master clock. | Moderate | Scalable sequential logic (Flip-flops) to generate ClkA, ClkB, ClkC. |
| **Clock Inverter** | Generates inverted clocks with delay. | Low | Composed of transmission gates and inverters for LPF/CS timing. |

</div>

### **3. Components Specification**

#### **A. Chopper Switch**
The chopper switch is implemented to reduce low-frequency (1/f) noise and input offset voltage that can severely degrade the quality of EEG signals. It operates by modulating the input signal with a square wave, shifting it to a higher frequency band where amplifier noise is less intrusive. After amplification, the signal is demodulated back to baseband.

<p align="center">
  <img src="Images/chopperswitchcell.jpg" alt="chopperswithcell" width="400"/>
</p>
<h4 align="center">Figure 2. Chopper Switch Cell [4]</h4>

<p align="center">
  <img src="Images/adoptionchopperswitch.jpg" alt="adoptionchopperswitch" width="400"/>
</p>
<h4 align="center">Figure 3. Adoption of the Chopper Switch Cell [4]</h4>

<h4 align="center">Table 3. Target Specification: Chopper Switch</h4>

<div align="center">

| **Parameter** | **Value / Target** | **Unit** |
| :--- | :---: | :---: |
| Stage 1 Freq (Chopper A) | 4 | kHz |
| Stage 2 Freq (Chopper B) | 2 | kHz |
| Stage 3 Freq (Chopper C) | 1 | kHz |
| R<sub>on</sub> | < 1 | kΩ |
| Delay Time (Inter-stage) | ± 500 | ns |
| Off Leakage Current | < 0.1 | µA |
| Clock Divider Delay | < 1 | ms |

</div>

<br>

[![Chopper Switch](https://img.shields.io/badge/Progress_Log-Chopper%20Switch-007EC6?style=for-the-badge&logo=github&logoColor=white)](Components%20Progress%20Log/Chopper%20Switch)

---

#### **B. Instrumentation Amplifier**
An open-loop amplifier provides high gain for low-amplitude EEG signals while minimizing power and silicon area. Unlike closed-loop designs, open-loop architectures require fewer transistors and passive elements, resulting in a significantly smaller footprint ideal for compact multi-channel systems.

<p align="center">
  <img src="Images/figure2.jpg" alt="INA Diagram" width="600"/>
</p>
<h4 align="center">Figure 4. Open-Loop Amplifier Architecture [1]</h4>

<h4 align="center">Table 4. Target Specification: Open-Loop Amplifier</h4>

<div align="center">

| **Parameter** | **Typical Value** | **Unit** |
| :--- | :---: | :---: |
| Open-Loop Gain | > 50 | dB |
| Bandwidth | ± 10 | kHz |
| Phase Margin | > 60 | degrees |
| UGF | 10 - 40 | MHz |
| PSRR | ± 60 | dB |
| CMRR | ≥ 80 | dB |
| Power Consumption | < 500 | µW |
| Input Range | ≤ 350 | µV |

</div>

<br>

[![Progress Log](https://img.shields.io/badge/Progress_Log-Instrumentation%20Amplifier-007EC6?style=for-the-badge&logo=github&logoColor=white)](Instrumentation%20Amplifier)

---

#### **C. Low Pass Filter (LPF)**
The switched-capacitor low-pass filter removes high-frequency components after chopper demodulation. It uses capacitor ratios and a clock signal to define the cutoff frequency precisely, avoiding large physical resistors.

<p align="center">
  <img src="Images/figure5.jpg" alt="LPF Diagram" width="600"/>
</p>
<h4 align="center">Figure 5. Switched-Cap Low-Pass Filter [1]</h4>

<h4 align="center">Table 5. Target Specification: LPF</h4>

<div align="center">
  
| **Parameter** | **Value** | **Unit** |
| :--- | :---: | :---: |
| Cutoff Frequency (f<sub>c</sub>) | < 200 | Hz |
| Clock Frequency (f<sub>clk</sub>) | 4 | kHz |

</div>

<br>

[![Progress Log](https://img.shields.io/badge/Progress_Log-Switched--Cap%20LPF-007EC6?style=for-the-badge&logo=github&logoColor=white)](Switched-Cap%20Low%20Pass%20Filter)

---

#### **D. Dummy EEG Signal**
To validate the system, a realistic dummy EEG signal is constructed using data from the *Mendeley EEG Motor Movement/Imagery Dataset*. This ensures the testbench evaluates the system under authentic amplitude, frequency, and noise conditions.

<h4 align="center">Table 6. Characteristic of Dummy EEG Signals</h4>

<div align="center">

| **Activity** | **Frequency (Hz)** | **Amplitude (μV)** |
| :--- | :---: | :---: |
| Baseline Eyes Open | 2.25 – 30.94 | 20.03 – 174.53 |
| Closing Left Hand | 2.99 – 12.72 | 1.49 – 8.29 |
| Closing Right Hand | 4.99 – 46.41 | 9.41 – 108.74 |
| Dorsal Flexion (L Foot) | 0.50 – 41.17 | 1.41 – 6.02 |
| Plantar Flexion (L Foot) | 4.99 – 29.44 | 1.52 – 5.40 |
| Dorsal Flexion (R Foot) | 8.98 – 34.43 | 1.52 – 4.67 |
| Plantar Flexion (R Foot) | 7.98 – 13.97 | 1.66 – 3.92 |
| Resting | 0.00 – 40.67 | 9.86 – 124.15 |

</div>

*Dataset DOI: 10.17632/x8psbz3f6x.2*

<br>

[![Progress Log](https://img.shields.io/badge/Progress_Log-EEG%20Dummy%20Signal-007EC6?style=for-the-badge&logo=github&logoColor=white)](EEG%20Dummy%20Signal)

---

#### **E. Frequency Divider**
The frequency divider generates synchronized clock signals (f, f/2, f/4) for the chopper and LPF blocks. It includes a fixed 500 ns delay at each stage to prevent glitches and ensure proper phase alignment.

<p align="center">
  <img src="Images/figure3_2.jpg" alt="Clocking Scheme" width="600"/>
</p>
<h4 align="center">Figure 6. Clocking Scheme [1]</h4>

<h4 align="center">Table 7. Target Specification: Frequency Divider</h4>

<div align="center">
  
| **Parameter** | **Value** | **Unit** |
| :--- | :---: | :---: |
| Chopper A Freq | 4 | kHz |
| Chopper B Freq | 2 | kHz |
| Chopper C Freq | 1 | kHz |

</div>

<br>

[![Progress Log](https://img.shields.io/badge/Progress_Log-Frequency%20Divider-007EC6?style=for-the-badge&logo=github&logoColor=white)](Frequency%20Divider)

---

#### **F. Implementation Considerations: Biasing & Buffering**

**Current Mirror Biasing**
To ensure robust operation, the design avoids distributing a global bias voltage ($V_{bias}$). Instead, it uses a **Current Steering** topology where a reference current ($I_{bias}$) is distributed to each channel. Local current mirrors then replicate this to bias the PMOS loads, ensuring stability against IR drops and ground bounce.

**Output Buffer**
An optional unity-gain analog buffer is inserted at the output to drive external loads (pads, ADC inputs). It provides high input impedance to isolate the amplifier core and low output impedance to drive capacitive loads without distortion, preserving the signal's SNR.

<br>

[![Progress Log](https://img.shields.io/badge/Progress_Log-Buffer%20%26%20Biasing-007EC6?style=for-the-badge&logo=github&logoColor=white)](Buffer)

---

### **4. Pin Configuration**

<p align="center">
  <img src="Images/PinUpdate4.jpg" alt="Pinout">
</p>
<h4 align="center">Figure 7. Chip Architecture & Pinout</h4>

<h4 align="center">Table 8. External Pin Function</h4>

<div align="center">

| **Pin** | **Name** | **Type** | **Direction** | **Description** |
| :---: | :--- | :---: | :---: | :--- |
| 1 | AVDD | Power | Bidirectional | Analog Supply Voltage (3.3V) |
| 2 | AVSS | Ground | Bidirectional | Analog Ground |
| 3 | VDD | Power | Bidirectional | Digital Supply Voltage (1.2V/5V) |
| 4 | VSS | Ground | Bidirectional | Digital Ground |
| 5-12 | INxP/N | Analog | Input | Differential Analog Inputs (Ch 1-4) |
| 13-20 | OUTxP/N | Analog | Output | Differential Analog Outputs (Ch 1-4) |
| 21 | VBIAS | Analog | Bidirectional | Bias Voltage/Current Reference |
| 22 | CLK | Digital | Input | Master Clock Input |
| 23 | VCM | Analog | Bidirectional | Common Mode Voltage Reference |

</div>

### **5. Application Diagram**

<p align="center">
  <img src="Images/ApplicationUpdate4.jpg" alt="Application">
</p>
<h4 align="center">Figure 8. Example Application Circuit</h4>

The system amplifies 4-channel biopotential signals. The circuit uses a **Three-Level Chopper Switching** scheme (CSa, CSb, CSc) to perform dynamic offset cancellation and signal swapping.

**Switching Phases:**

* **Phase 1 (CSa Only):** Direct signal path.
    * Ch1 → INA1, Ch2 → INA2, etc.
    * ![Phase1](Images/Phase1.jpg)

* **Phase 2 (CSb ON):** Swap adjacent pairs.
    * Ch1 → INA2, Ch2 → INA1.
    * ![Phase2](Images/Phase2.jpg)

* **Phase 3 (CSc ON, CSb OFF):** Swap alternate pairs.
    * Ch1 → INA3, Ch3 → INA1.
    * ![Phase3](Images/Phase3.jpg)

* **Phase 4 (CSb & CSc ON):** Cross-pair swap.
    * Ch1 → INA4, Ch4 → INA1.
    * ![Phase4](Images/Phase4.jpg)

This sequence ensures that over time, every input is processed by every amplifier, averaging out mismatches.

---

## Progress Tracksheet
[![Tracksheet](https://img.shields.io/badge/Google%20Sheets-Team%20Tracksheet-34A853?style=for-the-badge&logo=google-sheets&logoColor=white)](https://docs.google.com/spreadsheets/d/1Lt7VIuRgg6ifpHQ2P5A1QMIH-cknrxcGIBxvP4BVC10/edit?gid=0#gid=0)

---

### **References**

1.  Tao Tang, et al. “Group Chopping: An 8-Channel, 0.04% Gain Mismatch, 2.1 uW 0.017 mm2 Instrumentation Amplifier for Bio-potential Recording". *IEEE Journal of Solid-State Circuits*, vol. 16, no. 3, 2022.
2.  WhaleTeq Medical Device Manufacturer. “CMRR Test Principle and Method.”
3.  S. Yazicioglu, et al. “A 0.5 V 2.1 µW EEG acquisition IC with differential and common-mode active DC offset rejection,” *IEEE JSSC*, 2022.
4.  Z. Yao, et al. "A 0.8 μW/Channel Readout IC... With an Analog Accumulator and a Fully Digital Chopper," *Sensors*, 2025.
