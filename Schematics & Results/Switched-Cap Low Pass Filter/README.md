# Switched-Cap Low Pass Filter Progress Log

**Last Updated:** 26th January

---

## 1. Overview
The switched-capacitor low-pass filter is used to remove high-frequency components after chopper demodulation, recovering the clean baseband EEG signal. Instead of relying on physical resistors, which can consume significant area and vary with process, the filter uses capacitor ratios and a clock signal to define its cutoff frequency precisely. This makes it highly area-efficient, tunable, and well-suited for integration in CMOS processes. The switching operation emulates a resistor using charge transfer, allowing for compact, accurate, and fully integrated filtering essential in low-power EEG front-end systems.

---

## 2. Target Specification

<div align="center">

| **Parameter** | **Value** | **Unit** |
| :--- | :---: | :---: |
| **Cutoff Frequency (f<sub>c</sub>)** | <250 | Hz |
| **Clock Frequency (f<sub>clk</sub>)** | 4 | kHz |

</div>

---

## 3. Schematic Design

### A. LPF Inside Chip
On-chip implementation of the switched-capacitor low-pass filter.

<p align="center">
  <img src="../../Images/LPF_Rev.jpg" alt="LPF_Rev" width="800"/>
</p>
<h4 align="center">Figure 1(a). LPF Schematic Inside Chip</h4>

### B. LPF with External Components
Implementation with external ceramic capacitor and inductor for enhanced filtering.

<p align="center">
  <img src="../../Images/LPF_EXT_REV.jpg" alt="LPF_EXT_REV" width="800"/>
</p>
<h4 align="center">Figure 1(b). LPF Schematic With External Ceramic Capacitor and Inductor</h4>

---

## 4. Simulation Results

### A. Testbench Setup
Configuration and setup for the switched-capacitor low-pass filter simulation.

<p align="center">
  <img src="../../Images/TB_LPF1.jpg" alt="TB_LPF1" width="800"/>
</p>
<h4 align="center">Figure 2. Switched-Cap Low Pass Filter Testbench</h4>

### B. Noise Analysis
Comprehensive noise characterization across frequency spectrum.

<p align="center">
  <img src="../../Images/TB_LPF2.jpg" alt="TB_LPF2" width="800"/>
</p>
<h4 align="center">Figure 3. Noise Analysis (1) Result</h4>

<div align="center">
  <table>
    <tr>
      <td align="center"><img src="../../Images/TB_LPF3.jpg" alt="TB_LPF3" width="400"/><br><b>Figure 4. Noise Analysis (2) Result</b></td>
      <td align="center"><img src="../../Images/TB_LPF4.jpg" alt="TB_LPF4" width="400"/><br><b>Figure 5. Noise Analysis (3) Result</b></td>
    </tr>
  </table>
</div>

---

## 5. Performance of Designed Switched-Cap Low Pass Filter

<div align="center">

| **Parameter** | **Achieved Value** | **Unit** | **Status** |
| :--- | :---: | :---: | :---: |
| **Cutoff Frequency (f<sub>c</sub>)** | 100 | Hz | Pass |
| **Clock Frequency (f<sub>clk</sub>)** | 4 | kHz | Pass |

</div>

**Note:** Capacitors have the size of 10u x 10u (m = 3)
