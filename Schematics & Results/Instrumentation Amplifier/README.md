# Instrumentation Amplifier Progress Log

**Last Updated:** 16th August

---

## 1. Overview
An open-loop amplifier is used to provide high gain for low-amplitude EEG signals while minimizing power and silicon area. Unlike closed-loop designs that require additional components such as compensation networks and feedback resistors, open-loop amplifiers offer a simpler architecture with fewer transistors and passive elements. This results in a significantly smaller layout footprint, making it ideal for compact, low-power multi-channel EEG systems where area efficiency is critical.

---

## 2. Target Specification

<div align="center">

| **Parameter** | **Typical Value** | **Unit** |
| :--- | :---: | :---: |
| **Open-Loop Gain** | >50 | dB |
| **Bandwidth** | +/-10 | kHz |
| **Phase Margin** | >60 | degrees |
| **UGF** | 10 - 40 | MHz |
| **Power Supply Rejection Ratio (PSRR)** | +/- 60 | dB |
| **Common-Mode Rejection Ratio (CMRR)** | >= 70 | dB |
| **Power** | < 500 | uW |
| **Input range (INA)** | <=350 | uV |

</div>

---

## 3. Schematic Design

<p align="center">
  <img src="../Images/SCHEM_INA.jpg" alt="SCHEM_INA" width="800"/>
</p>
<h4 align="center">Figure 1. Individual Instrumentation Amplifier Schematic</h4>

---

## 4. Simulation Results

### A. Testbench Setup
Configuration and setup for the instrumentation amplifier simulation.

<p align="center">
  <img src="../Images/TSB_INA1.jpg" alt="TSB_INA1" width="800"/>
</p>
<h4 align="center">Figure 2. Instrumentation Amplifier Testbench</h4>

### B. Gain Analysis
Open-loop gain and frequency response characterization.

<p align="center">
  <img src="../Images/TSB_INA2.jpg" alt="TSB_INA2" width="800"/>
</p>
<h4 align="center">Figure 3. Gain Testbench Result</h4>

### C. Common-Mode Rejection Ratio (CMRR)
CMRR performance analysis across frequency range.

<p align="center">
  <img src="../Images/TSB_INA3.jpg" alt="TSB_INA3" width="800"/>
</p>
<h4 align="center">Figure 4. CMRR Testbench Result</h4>

---

## 5. Performance of Designed Instrumentation Amplifier

<div align="center">

| **Parameter** | **Achieved Value** | **Unit** | **Status** |
| :--- | :---: | :---: | :---: |
| **Open-Loop Gain** | 53.9 | dB | Pass |
| **Bandwidth** | +/-10 | kHz | Pass |
| **Phase Margin** | >60 | degrees | Pass |
| **UGF** | 33 | MHz | Pass |
| **Power Supply Rejection Ratio (PSRR)** | 58.17 | dB | Pass |
| **Common-Mode Rejection Ratio (CMRR)** | 75.71 | dB | Pass |
| **Power** | +/- 50 | uW | Pass |
| **Input range (INA)** | <=350 | uV | Pass |

</div>
