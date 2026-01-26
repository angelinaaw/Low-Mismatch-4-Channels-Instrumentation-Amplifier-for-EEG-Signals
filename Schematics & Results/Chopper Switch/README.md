# Chopper Switch Progress Log

**Last Updated:** 16th August

---

## 1. Overview
The chopper switch is implemented to reduce low-frequency (1/f) noise and input offset voltage that can severely degrade the quality of EEG signals. It operates by modulating the input signal with a square wave, shifting it to a higher frequency band where amplifier noise is more uniform and less intrusive. After amplification, the signal is demodulated back to baseband, effectively canceling out the low-frequency noise and offset introduced by the amplifier.

---

## 2. Target Specifications

<div align="center">

| **Parameter** | **Description** | **Target Value** | **Unit** |
| :--- | :--- | :---: | :---: |
| **Frequency A** | Stage 1 Chopper Operating Freq | 4 | kHz |
| **Frequency B** | Stage 2 Chopper Operating Freq | 2 | kHz |
| **Frequency C** | Stage 3 Chopper Operating Freq | 1 | kHz |
| **Ron** | Switch On-Resistance | < 1 | kΩ |
| **Delay** | Delay Time Between Stages | ± 500 | ns |
| **Leakage** | Off-State Leakage Current | < 0.1 | µA |
| **Clock Delay** | Divider to `Clk` & `_Clk` Delay | < 1 | ms |

</div>

---

## 3. Schematic Design

<p align="center">
  <img src="../Images/CSchematic.jpg" alt="Chopper Switch Schematic" width="800"/>
</p>
<h4 align="center">Figure 1. Full Chopper Switch Schematic</h4>

<p align="center">
  <img src="../Images/CSC_Schematic.jpg" alt="Chopper C Schematic" width="600"/>
</p>
<h4 align="center">Figure 2. Detail: Chopper Switch Stage C Schematic</h4>

---

## 4. Simulation Results

### A. Stage A (Chopper A)
Simulation results for the first stage of the chopper circuit operating at 4 kHz.

<p align="center">
  <img src="../Images/CSA_Tb.jpg" alt="CSA Simulation" width="700"/>
</p>
<h4 align="center">Figure 3. Chopper Switch A Simulation</h4>

### B. Stage B (Chopper B)
Simulation results for the second stage of the chopper circuit operating at 2 kHz.

<p align="center">
  <img src="../Images/CSB_TB.jpg" alt="CSB Simulation" width="700"/>
</p>
<h4 align="center">Figure 4. Chopper Switch B Simulation</h4>

### C. Stage C (Chopper C)
Detailed analysis of the third stage, including testbench setup and transient response zooming.

<div align="center">
  <table>
    <tr>
      <td align="center"><img src="../Images/CSC_Tb.jpg" alt="CSC Testbench" width="400"/><br><b>Figure 5. Testbench Setup</b></td>
      <td align="center"><img src="../Images/CSC_Tb_Res2.jpg" alt="CSC Sim 2" width="400"/><br><b>Figure 6. Transient Zoom</b></td>
    </tr>
  </table>
</div>

<p align="center">
  <img src="../Images/CSC_Tb_Res1.jpg" alt="CSC Result Full" width="700"/>
</p>
<h4 align="center">Figure 7. Chopper Switch C Full Simulation Response</h4>

---

## 5. Rds, Ileakage, and Time Delay Analysis

This section details the parametric verification of the switch components. The analysis focuses on the specific characteristics of the MOSFETs used, ensuring they meet the stringent requirements for On-Resistance (Ron) and Off-State Leakage Current to prevent signal attenuation.

<p align="center">
  <img src="../Images/CS_Spec.jpg" alt="Spec Summary" width="800"/>
</p>
<h4 align="center">Figure 8. Simulation Measurement Logs for Leakage, Ron, and Timing</h4>

**Key Points of Analysis :**

* **Off-State Leakage Current (Left Graph):**
  The leakage current fluctuates between approximately 3.5 pA and 4 pA depending on the VAB voltage. This is significantly lower than the 0.1 µA (< 0.001 µA) safety limit, ensuring minimal charge loss during the off-state.

* **On-Resistance / Ron (Middle Graph):**
  The simulation measures the resistance of a single path at approximately 298 Ohms at 1.75V. Since the signal passes through 3 cascaded paths (CSa, CSb, CSc), the total accumulated Ron is calculated as:
  `298 Ω × 3 ≈ 894 Ω`.
  This total value remains under the 1 kΩ target, ensuring that the voltage drop across the switches is negligible.

* **Clock Complementary Delay (Right Graph):**
  The timing analysis between `clk_in` and `clk_out` shows a precise transition delay. The measured delay at `VHIGH/2` is approximately 101.5 µs (< 1 ms), verifying that the non-overlapping clock scheme functions correctly without introducing excessive latency.

---

## 6. Performance Summary

The table below summarizes the final verification results of the designed Chopper Switch against the initial target specifications.

<div align="center">

| **Parameter** | **Target** | **Simulated Result** | **Unit** | **Status** |
| :--- | :---: | :---: | :---: | :---: |
| **Freq A** | 4 | **4** | kHz | Pass |
| **Freq B** | 2 | **2** | kHz | Pass |
| **Freq C** | 1 | **1** | kHz | Pass |
| **Ron** | < 1000 | **894** | Ω | Pass |
| **Delay** | ± 500 | **± 500** | ns | Pass |
| **Leakage** | < 100,000 | **4** | pA | Pass |
| **Clock Delay** | < 1 | **0.101** | ms | Pass |

</div>
