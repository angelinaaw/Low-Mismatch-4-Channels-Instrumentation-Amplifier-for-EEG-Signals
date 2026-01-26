v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 130 -210 130 -180 {lab=#net1}
N 130 -120 130 -100 {lab=GND}
N 180 -140 180 -120 {lab=#net2}
N 180 -60 180 -40 {lab=GND}
N 180 -150 180 -140 {lab=#net2}
N 130 -380 130 -350 {lab=ch1_in+}
N 180 -320 180 -290 {lab=ch1_in-}
N 250 -210 250 -180 {lab=#net3}
N 250 -120 250 -100 {lab=GND}
N 300 -140 300 -120 {lab=#net4}
N 300 -60 300 -40 {lab=GND}
N 300 -150 300 -140 {lab=#net4}
N 250 -380 250 -350 {lab=ch2_in+}
N 300 -320 300 -290 {lab=ch2_in-}
N 360 -210 360 -180 {lab=#net5}
N 360 -120 360 -100 {lab=GND}
N 410 -140 410 -120 {lab=#net6}
N 410 -60 410 -40 {lab=GND}
N 410 -150 410 -140 {lab=#net6}
N 360 -380 360 -350 {lab=ch3_in+}
N 410 -320 410 -290 {lab=ch3_in-}
N 480 -210 480 -180 {lab=#net7}
N 480 -120 480 -100 {lab=GND}
N 530 -140 530 -120 {lab=#net8}
N 530 -60 530 -40 {lab=GND}
N 530 -150 530 -140 {lab=#net8}
N 480 -380 480 -350 {lab=ch4_in+}
N 530 -320 530 -290 {lab=ch4_in-}
N 690 -170 690 -140 {lab=GND}
N 740 -170 740 -140 {lab=GND}
N 690 -240 690 -230 {lab=#net9}
N 740 -240 740 -230 {lab=#net10}
N 740 -320 740 -300 {lab=VDD}
N 690 -320 690 -300 {lab=VBIAS}
N 130 -290 130 -270 {lab=#net11}
N 180 -230 180 -210 {lab=#net12}
N 250 -290 250 -270 {lab=#net13}
N 300 -230 300 -210 {lab=#net14}
N 360 -290 360 -270 {lab=#net15}
N 410 -230 410 -210 {lab=#net16}
N 480 -290 480 -270 {lab=#net17}
N 530 -230 530 -210 {lab=#net18}
N 620 -170 620 -140 {lab=GND}
N 620 -270 620 -230 {lab=#net19}
N 620 -350 620 -330 {lab=VCM}
N 340 -740 370 -740 {lab=ch1_in+}
N 340 -720 370 -720 {lab=ch1_in-}
N 340 -700 370 -700 {lab=ch2_in+}
N 340 -680 370 -680 {lab=ch2_in-}
N 340 -660 370 -660 {lab=ch3_in+}
N 340 -640 370 -640 {lab=ch3_in-}
N 340 -620 370 -620 {lab=ch4_in+}
N 340 -600 370 -600 {lab=ch4_in-}
N 480 -640 510 -640 {lab=ch3_out-}
N 480 -600 500 -600 {lab=ch4_out-}
N 500 -600 510 -600 {lab=ch4_out-}
N 480 -620 510 -620 {lab=ch4_out+}
N 480 -660 510 -660 {lab=ch3_out+}
N 480 -680 510 -680 {lab=ch2_out-}
N 480 -700 500 -700 {lab=ch2_out+}
N 500 -700 510 -700 {lab=ch2_out+}
N 480 -720 510 -720 {lab=ch1_out-}
N 480 -740 510 -740 {lab=ch1_out+}
N 410 -530 410 -510 {lab=VCM}
N 430 -530 430 -510 {lab=GND}
N 410 -830 410 -800 {lab=VBIAS}
N 430 -830 430 -800 {lab=VDD}
C {FULL_INA_TB.sym} 180 -210 0 0 {name=x1}
C {vsource.sym} 130 -240 0 0 {name=V1 value="1.5 AC 1" savecurrent=false}
C {gnd.sym} 130 -100 0 0 {name=l1 lab=GND}
C {vsource.sym} 130 -150 0 0 {name=V5 value="SINE(0 10u 2k)" savecurrent=false}
C {vsource.sym} 180 -180 0 0 {name=V4 value="1.5" savecurrent=false}
C {vsource.sym} 180 -90 0 0 {name=V6 value="SINE(0 10u 2k 0 0 180)" savecurrent=false}
C {gnd.sym} 180 -40 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 130 -380 1 0 {name=p11 sig_type=std_logic lab=ch1_in+}
C {lab_pin.sym} 180 -320 1 0 {name=p12 sig_type=std_logic lab=ch1_in-}
C {vsource.sym} 250 -240 0 0 {name=V7 value="1.5 AC 1" savecurrent=false}
C {gnd.sym} 250 -100 0 0 {name=l5 lab=GND}
C {vsource.sym} 250 -150 0 0 {name=V8 value="SINE(0 10u 2k)" savecurrent=false}
C {vsource.sym} 300 -180 0 0 {name=V9 value="1.5" savecurrent=false}
C {vsource.sym} 300 -90 0 0 {name=V10 value="SINE(0 10u 2k 0 0 180)" savecurrent=false}
C {gnd.sym} 300 -40 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 250 -380 1 0 {name=p13 sig_type=std_logic lab=ch2_in+}
C {lab_pin.sym} 300 -320 1 0 {name=p14 sig_type=std_logic lab=ch2_in-}
C {vsource.sym} 360 -240 0 0 {name=V11 value="1.5 AC 1" savecurrent=false}
C {gnd.sym} 360 -100 0 0 {name=l7 lab=GND}
C {vsource.sym} 360 -150 0 0 {name=V12 value="SINE(0 10u 2k)" savecurrent=false}
C {vsource.sym} 410 -180 0 0 {name=V13 value="1.5" savecurrent=false}
C {vsource.sym} 410 -90 0 0 {name=V14 value="SINE(0 10u 2k 0 0 180)" savecurrent=false}
C {gnd.sym} 410 -40 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 360 -380 1 0 {name=p15 sig_type=std_logic lab=ch3_in+}
C {lab_pin.sym} 410 -320 1 0 {name=p16 sig_type=std_logic lab=ch3_in-}
C {vsource.sym} 480 -240 0 0 {name=V15 value="1.5 AC 1" savecurrent=false}
C {gnd.sym} 480 -100 0 0 {name=l9 lab=GND}
C {vsource.sym} 480 -150 0 0 {name=V16 value="SINE(0 10u 2k)" savecurrent=false}
C {vsource.sym} 530 -180 0 0 {name=V17 value="1.5" savecurrent=false}
C {vsource.sym} 530 -90 0 0 {name=V18 value="SINE(0 10u 2k 0 0 180)" savecurrent=false}
C {gnd.sym} 530 -40 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 480 -380 1 0 {name=p17 sig_type=std_logic lab=ch4_in+}
C {lab_pin.sym} 530 -320 1 0 {name=p18 sig_type=std_logic lab=ch4_in-}
C {vsource.sym} 690 -200 0 0 {name=V19 value=3.3 savecurrent=false
L=3u
W=270uu}
C {gnd.sym} 690 -140 0 0 {name=l19 lab=GND}
C {vsource.sym} 740 -200 0 0 {name=V20 value=1.5 savecurrent=false
L=3u
W=270uu}
C {gnd.sym} 740 -140 0 0 {name=l20 lab=GND}
C {res.sym} 740 -270 2 0 {name=R4
value=150m
footprint=1206
device=resistor
m=1}
C {res.sym} 690 -270 2 0 {name=R5
value=150m
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 740 -320 1 0 {name=p43 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 690 -320 1 0 {name=p44 sig_type=std_logic lab=VBIAS}
C {res.sym} 130 -320 2 0 {name=R2
value=50k
footprint=1206
device=resistor
m=1}
C {res.sym} 180 -260 2 0 {name=R1
value=50k
footprint=1206
device=resistor
m=1}
C {res.sym} 250 -320 2 0 {name=R3
value=50k
footprint=1206
device=resistor
m=1}
C {res.sym} 300 -260 2 0 {name=R6
value=50k
footprint=1206
device=resistor
m=1}
C {res.sym} 360 -320 2 0 {name=R7
value=50k
footprint=1206
device=resistor
m=1}
C {res.sym} 410 -260 2 0 {name=R8
value=50k
footprint=1206
device=resistor
m=1}
C {res.sym} 480 -320 2 0 {name=R9
value=50k
footprint=1206
device=resistor
m=1}
C {res.sym} 530 -260 2 0 {name=R10
value=50k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 620 -200 0 0 {name=V2 value=1 savecurrent=false}
C {gnd.sym} 620 -140 0 0 {name=l3 lab=GND}
C {res.sym} 620 -300 2 0 {name=R11
value=150m
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 620 -350 1 0 {name=p1 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 340 -740 0 0 {name=p2 sig_type=std_logic lab=ch1_in+}
C {lab_pin.sym} 340 -720 0 0 {name=p3 sig_type=std_logic lab=ch1_in-}
C {lab_pin.sym} 340 -700 0 0 {name=p4 sig_type=std_logic lab=ch2_in+}
C {lab_pin.sym} 340 -680 0 0 {name=p5 sig_type=std_logic lab=ch2_in-}
C {lab_pin.sym} 340 -660 0 0 {name=p6 sig_type=std_logic lab=ch3_in+}
C {lab_pin.sym} 340 -640 0 0 {name=p7 sig_type=std_logic lab=ch3_in-}
C {lab_pin.sym} 340 -620 0 0 {name=p8 sig_type=std_logic lab=ch4_in+}
C {lab_pin.sym} 340 -600 0 0 {name=p9 sig_type=std_logic lab=ch4_in-}
C {noconn.sym} 510 -740 2 0 {name=l4}
C {noconn.sym} 510 -720 2 0 {name=l11}
C {noconn.sym} 510 -700 2 0 {name=l12}
C {noconn.sym} 510 -680 2 0 {name=l13}
C {noconn.sym} 510 -660 2 0 {name=l14}
C {noconn.sym} 510 -640 2 0 {name=l15}
C {noconn.sym} 510 -620 2 0 {name=l16}
C {noconn.sym} 510 -600 2 0 {name=l17}
C {lab_pin.sym} 500 -740 2 0 {name=p10 sig_type=std_logic lab=ch1_out+}
C {lab_pin.sym} 500 -720 2 0 {name=p19 sig_type=std_logic lab=ch1_out-}
C {lab_pin.sym} 500 -700 2 0 {name=p20 sig_type=std_logic lab=ch2_out+}
C {lab_pin.sym} 500 -680 2 0 {name=p21 sig_type=std_logic lab=ch2_out-}
C {lab_pin.sym} 500 -660 2 0 {name=p22 sig_type=std_logic lab=ch3_out+}
C {lab_pin.sym} 500 -640 2 0 {name=p23 sig_type=std_logic lab=ch3_out-}
C {lab_pin.sym} 500 -620 2 0 {name=p24 sig_type=std_logic lab=ch4_out+}
C {lab_pin.sym} 500 -600 2 0 {name=p25 sig_type=std_logic lab=ch4_out-}
C {lab_pin.sym} 410 -510 3 0 {name=p26 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 410 -830 1 0 {name=p27 sig_type=std_logic lab=VBIAS}
C {lab_pin.sym} 430 -830 1 0 {name=p28 sig_type=std_logic lab=VDD}
C {gnd.sym} 430 -510 0 0 {name=l18 lab=GND}
C {devices/code_shown.sym} 640 -560 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {devices/code_shown.sym} 620 -1160 0 0 {name=NGSPICE only_toplevel=true
value="
	* -- AC ANALYSIS ---
	*.ac dec 100 1 1e12
	* -- TRANSIENT --
	.tran 50n 0.5m
.control
	* Ac sweep
	ac
	set gnuplot = 1
	setplot ac1
	display
	setplot
	set color0=white
	
	* Eksekusi transien
	reset
	run

	* Plot transient
	plot V(ch3_in+)-V(ch3_in-)
	plot V(ch3_out+)-V(ch3_out-)
	plot V(ch2_in+)-V(ch2_in-)
	plot V(ch2_out+)-V(ch2_out-)
	*plot db(V(out1)-V(out2))
	*plot ph(V(ch1_out+)-V(ch1_out-))
	*plot db(V(ch1_out+)-V(ch1_out-))
	*plot ph(V(ch2_out+)-V(ch2_out-))

save all

.endc
"}
