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

### A. Integrated Chopper Switches
Three-stage chopper switch integration schematic.

<p align="center">
  <img src="../Images/IntegratedCS.jpg" alt="IntegratedCS" width="700"/>
</p>
<h4 align="center">Figure 1. Integrated Schematic of 3 Switches</h4>

### B. Full System Integration
Complete integrated schematic of the EEG front-end system.

<p align="center">
  <img src="../Images/FullSchem.jpg" alt="FullSchem" width="800"/>
</p>
<h4 align="center">Figure 2. Integrated Schematic of the System</h4>

### C. External Capacitor Circuit
Off-chip external capacitor configuration for output stabilization.

<p align="center">
  <img src="../Images/Ext_Cap1.jpg" alt="Ext_Cap1" width="700"/>
</p>
<h4 align="center">Figure 3. External Capacitor Circuit for Outputs (off-chip)</h4>

---

## 3. Simulation Results

### A. Integrated Chopper Switches Performance
Testbench validation of the three-stage chopper switch integration.

<p align="center">
  <img src="../Images/IntegratedCS_Tb1.jpg" alt="IntegratedCS_Tb1" width="700"/>
</p>
<h4 align="center">Figure 4. Chopper Switches Integrated TB (1)</h4>

<p align="center">
  <img src="../Images/IntegratedCS_Tb2.jpg" alt="IntegratedCS_Tb2" width="700"/>
</p>
<h4 align="center">Figure 5. Chopper Switches Integrated TB (2)</h4>

### B. Full Circuit Integration
Complete system simulation showing signal progression through each stage.

<p align="center">
  <img src="../Images/FullSchem_Tb1.jpg" alt="FullSchem_Tb1" width="700"/>
</p>
<h4 align="center">Figure 6. Output Signals per-Stage in Top Integration (1)</h4>

<p align="center">
  <img src="../Images/FullSchem_Tb2.jpg" alt="FullSchem_Tb2" width="700"/>
</p>
<h4 align="center">Figure 7. Output Signals per-Stage in Top Integration (2)</h4>

### C. Prefrontal Cortex Signal Analysis
Input and output waveforms demonstrating the complete signal processing chain.

<p align="center">
  <img src="../Images/FullSchem_Tb3.jpg" alt="FullSchem_Tb3" width="700"/>
</p>
<h4 align="center">Figure 8. Simulation Prefrontal Cortex Probes (Input and Output)</h4>

---

## 4. Layout

<p align="center">
  <img src="../Images/Full_Layout.jpg" alt="Full_Layout" width="800"/>
</p>
<h4 align="center">Figure 9. Integrated Layout</h4>
