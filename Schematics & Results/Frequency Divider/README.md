# Frequency Divider Progress Log

**Last Updated:** 26th January

---

## 1. Overview
The frequency divider is designed to generate synchronized clock signals required by various timing-dependent blocks, such as the switched-capacitor LPF and chopper switch. It operates by dividing an input clock by two at each stage, producing sequentially halved frequencies (e.g., f, f/2, f/4, etc.) suitable for multi-stage operations. To ensure proper timing alignment and avoid glitches, a fixed delay of 500 ns is introduced at each division stage. This controlled delay spacing also helps with phase management and ensures predictable timing between clock signals, which is critical for maintaining accurate sampling and modulation sequences across the system.

To Simulate the Digital Component Netlist as .spice file, you **must have** the **clockdiv.lef.spice** and **clockdiv_tb.spice** provided in the **folder "Clock Divider .spice"**.

---

## 2. Target Specification

<div align="center">

| **Parameter** | **Value / Target** | **Unit** |
| :--- | :---: | :---: |
| **Chopper A Operating Frequency** | 4 | kHz |
| **Chopper B Operating Frequency** | 2 | kHz |
| **Chopper C Operating Frequency** | 1 | kHz |

</div>

---

## 3. RTL Code

```verilog
module clockdiv2(
    input wire clk, // reference input clock
    input wire rst_n, // active low reset
    output wire outclkdiv1, // freq/1 clock
    output wire outclkdiv2, // freq/2 clock
    output wire outclkdiv4 // freq/4 clock
);
reg [1:0] count;
assign outclkdiv1 = clk;
assign outclkdiv2 = count[0];
assign outclkdiv4 = count[1];
always@(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        count[1:0] <= 2'b00; 
    else
        count[1:0] <= count + 1'b1;
end
endmodule
```

---

## 4. RTL Simulation Code

```verilog
`include "clockdiv2.v"
`timescale 1ns/1ps
module tb_clockdev();
reg clk;
reg rst_n;
wire clkdiv1;
wire clkdiv2;
wire clkdiv4;
clockdiv2 dut1 (
    .clk(clk),
    .rst_n(rst_n),
    .outclkdiv1(clkdiv1),
    .outclkdiv2(clkdiv2),
    .outclkdiv4(clkdiv4)
);
always #5 clk = ~clk;
initial 
begin
$dumpfile("tb_clockdev.vcd"); // For waveform with verilator
$dumpvars(0, tb_clockdev);
clk = 0;
rst_n = 0;
repeat(2)
begin
@(posedge clk);
end
rst_n = 1;
repeat(20)
begin
@(posedge clk);
end
$finish;
end
endmodule
```

---

## 5. RTL Simulation Result

<p align="center">
  <img src="../../Images/FreqDiv.jpg" alt="FreqDiv" width="700"/>
</p>
<h4 align="center">Figure 1(a). Frequency Divider Testbench Result on OpenLane</h4>

<p align="center">
  <img src="../../Images/FD_Itg.jpg" alt="FD_Itg" width="700"/>
</p>
<h4 align="center">Figure 1(b). Frequency Divider Testbench Result on NGSPICE</h4>

**Note:** rst_n are active low. For 2 clock cycle, it will be LOW, then always HIGH. All HIGH value for Clk is 5V. You might see 10, 15, or 20 on the graph ONLY* to avoid overlap view for every clock divided.

---

## 6. Performance of Designed Clock Divider

<div align="center">

| **Parameter** | **Value / Target** | **Unit** |
| :--- | :---: | :---: |
| **Chopper A Operating Frequency** | 4 | kHz |
| **Chopper B Operating Frequency** | 2 | kHz |
| **Chopper C Operating Frequency** | 1 | kHz |

</div>

---

## 7. Layout of Designed Clock Divider

<p align="center">
  <img src="../../Images/FreqDivLayout.jpg" alt="FreqDivLayout" width="700"/>
</p>
<h4 align="center">Figure 2(a). Frequency Divider Layout</h4>

<p align="center">
  <img src="../../Images/FD_Ly.jpg" alt="FD_Ly" width="700"/>
</p>
<h4 align="center">Figure 2(b). Frequency Divider Layout (Full)</h4>
