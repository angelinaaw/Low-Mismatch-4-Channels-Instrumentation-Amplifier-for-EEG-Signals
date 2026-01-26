# Top Level Integration

**Last Updated:** 26th January

---

## 1. Overview
The top-level integration connects the EEG front-end signal path through three stages of chopper switches (CsA, CsB, and CsB_) feeding into an instrumentation amplifier (INA), followed by another three-stage chopper switch set (CsC, CsB, CsA) and finally a switched-capacitor low-pass filter (LPF). Complementary clocks drive all chopper switches to ensure proper modulation and demodulation, suppressing low-frequency offsets and 1/f noise, while the INA amplifies the differential signal with high input impedance and low noise. The fully integrated digital clocks and precise timing enable a compact, low-power CMOS implementation that delivers a clean baseband EEG output ready for further processing.

**NOTE:** You can run full integration analog circuit netlist (CS-INA-CS-LPF, complementary clk) + digital circuit netlist (Frequency divider) by accessing the .spice from the **Top Integration .spice Folder**. Both result, using PULSE as alternative from digital and using PWL from csv provided from the digital (OpenLane) netlist give the same gain result & waveforms.

For the layout implementation, two GDS versions are provided:
- A full analog layout, generated using the gLayout framework in a Jupyter Notebook environment, and
- A fully integrated layout, combining the analog front-end with the digital block designed in OpenLane, merged and finalized using KLayout.

---

## 2. Schematic Design

<table width="100%">
<tr>
<td width="60%" align="center">
  <img src="../Images/IntegratedCS.jpg" width="100%"/>
</td>
<td width="40%" valign="middle">
  <b>Figure 1.</b><br>
  Integrated Schematic of 3 Switches<br><br>
  <i>Three-stage chopper switch integration schematic.</i>
</td>
</tr>
</table>

---

<table width="100%">
<tr>
<td width="60%" align="center">
  <img src="../Images/FullSchem.jpg" width="100%"/>
</td>
<td width="40%" valign="middle">
  <b>Figure 2.</b><br>
  Integrated Schematic of the System<br><br>
  <i>Complete integrated schematic of the EEG front-end system.</i>
</td>
</tr>
</table>

---

<table width="100%">
<tr>
<td width="60%" align="center">
  <img src="../Images/Ext_Cap1.jpg" width="100%"/>
</td>
<td width="40%" valign="middle">
  <b>Figure 3.</b><br>
  External Capacitor Circuit (Off-Chip)<br><br>
  <i>Configuration for output stabilization.</i>
</td>
</tr>
</table>

---

## 3. Simulation Results

### A. Integrated Chopper Switches Performance

<table width="100%">
<tr>
<td width="60%" align="center">
  <img src="../Images/IntegratedCS_Tb1.jpg" width="100%"/>
</td>
<td width="40%" valign="middle">
  <b>Figure 4.</b><br>
  Chopper Switches Integrated TB (1)<br><br>
  <i>Testbench validation part 1.</i>
</td>
</tr>
</table>

<table width="100%">
<tr>
<td width="60%" align="center">
  <img src="../Images/IntegratedCS_Tb2.jpg" width="100%"/>
</td>
<td width="40%" valign="middle">
  <b>Figure 5.</b><br>
  Chopper Switches Integrated TB (2)<br><br>
  <i>Testbench validation part 2.</i>
</td>
</tr>
</table>

### B. Full Circuit Integration

<table width="100%">
<tr>
<td width="60%" align="center">
  <img src="../Images/FullSchem_Tb1.jpg" width="100%"/>
</td>
<td width="40%" valign="middle">
  <b>Figure 6.</b><br>
  Output Signals per-Stage (1)<br><br>
  <i>System simulation showing signal progression through initial stages.</i>
</td>
</tr>
</table>

<table width="100%">
<tr>
<td width="60%" align="center">
  <img src="../Images/FullSchem_Tb2.jpg" width="100%"/>
</td>
<td width="40%" valign="middle">
  <b>Figure 7.</b><br>
  Output Signals per-Stage (2)<br><br>
  <i>System simulation showing signal progression through final stages.</i>
</td>
</tr>
</table>

### C. Prefrontal Cortex Signal Analysis

<table width="100%">
<tr>
<td width="60%" align="center">
  <img src="../Images/FullSchem_Tb3.jpg" width="100%"/>
</td>
<td width="40%" valign="middle">
  <b>Figure 8.</b><br>
  Prefrontal Cortex Probes<br><br>
  <i>Input and output waveforms demonstrating the complete signal processing chain.</i>
</td>
</tr>
</table>
