v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1110 -580 -1010 -580 {lab=Vin1}
N -1010 -580 -1010 -510 {lab=Vin1}
N -950 -580 -950 -510 {lab=#net1}
N -980 -640 -980 -590 {lab=VSS}
N -980 -550 -980 -510 {lab=VDD}
N -980 -730 -980 -680 {lab=_CLK}
N -980 -470 -980 -370 {lab=CLK}
N -950 -580 -780 -580 {lab=#net1}
N -950 -270 -950 -200 {lab=#net2}
N -1010 -270 -1010 -200 {lab=Vin2}
N -980 -250 -980 -200 {lab=VSS}
N -980 -330 -980 -290 {lab=VDD}
N -980 -160 -980 -110 {lab=_CLK}
N -1110 -270 -1010 -270 {lab=Vin2}
N -950 -270 -780 -270 {lab=#net2}
N -780 -270 -630 -270 {lab=#net2}
N -780 -580 -630 -580 {lab=#net1}
N -510 -580 -510 -510 {lab=#net1}
N -450 -580 -450 -510 {lab=Vout1}
N -480 -640 -480 -590 {lab=VSS}
N -480 -550 -480 -510 {lab=VDD}
N -480 -730 -480 -680 {lab=CLK1}
N -480 -470 -480 -370 {lab=_CLK1}
N -450 -580 -330 -580 {lab=Vout1}
N -450 -270 -450 -200 {lab=Vout2}
N -510 -270 -510 -200 {lab=#net2}
N -480 -250 -480 -200 {lab=VSS}
N -480 -330 -480 -290 {lab=VDD}
N -480 -160 -480 -110 {lab=CLK1}
N -630 -580 -510 -580 {lab=#net1}
N -630 -270 -510 -270 {lab=#net2}
N -450 -270 -330 -270 {lab=Vout2}
N -330 -580 -330 -440 {lab=Vout1}
N -780 -580 -780 -440 {lab=#net1}
N -630 -580 -630 -440 {lab=#net1}
N -780 -380 -780 -270 {lab=#net2}
N -630 -380 -630 -270 {lab=#net2}
N -330 -380 -330 -270 {lab=Vout2}
N -330 -270 -90 -270 {lab=Vout2}
N -330 -580 -90 -580 {lab=Vout1}
N -1010 -640 -1010 -580 {lab=Vin1}
N -950 -640 -950 -580 {lab=#net1}
N -1010 -330 -1010 -270 {lab=Vin2}
N -950 -330 -950 -270 {lab=#net2}
N -450 -640 -450 -580 {lab=Vout1}
N -510 -640 -510 -580 {lab=#net1}
N -510 -330 -510 -270 {lab=#net2}
N -450 -330 -450 -270 {lab=Vout2}
C {simulator_commands_shown.sym} -240 -780 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
"
      }
C {ipin.sym} -980 -590 0 0 {name=p2 sig_type=std_logic lab=VSS
nf=1
L=0.3u
m=1
W=4u}
C {ipin.sym} -980 -550 0 0 {name=p3 sig_type=std_logic lab=VDD
nf=1
L=0.3u
m=1
W=4u}
C {ipin.sym} -980 -730 0 0 {name=p4 sig_type=std_logic lab=_CLK}
C {ipin.sym} -980 -440 0 0 {name=p5 sig_type=std_logic lab=CLK
L=0.3u
nf=1
m=5
W=4u}
C {lab_wire.sym} -980 -240 2 0 {name=p10 sig_type=std_logic lab=VSS
nf=1
L=0.3u
m=1
W=4u}
C {lab_wire.sym} -980 -310 2 0 {name=p11 sig_type=std_logic lab=VDD
nf=1
L=0.3u
m=1
W=4u}
C {lab_wire.sym} -980 -130 2 0 {name=p12 sig_type=std_logic lab=_CLK
W=4u}
C {ipin.sym} -1110 -580 0 0 {name=p13 sig_type=std_logic lab=Vin1}
C {ipin.sym} -1110 -270 0 0 {name=p18 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} -480 -600 0 0 {name=p19 sig_type=std_logic lab=VSS
nf=1
L=0.3u
m=1
W=4u}
C {lab_wire.sym} -480 -530 0 0 {name=p20 sig_type=std_logic lab=VDD
nf=1
L=0.3u
m=1
W=4u}
C {ipin.sym} -480 -730 0 0 {name=p21 sig_type=std_logic lab=CLK1
W=4u}
C {ipin.sym} -480 -440 0 0 {name=p22 sig_type=std_logic lab=_CLK1
L=0.3u
nf=1
m=5
W=4u}
C {lab_wire.sym} -480 -240 2 0 {name=p23 sig_type=std_logic lab=VSS
nf=1
L=0.3u
m=1
W=4u}
C {lab_wire.sym} -480 -310 2 0 {name=p24 sig_type=std_logic lab=VDD
nf=1
L=0.3u
m=1
W=4u}
C {lab_wire.sym} -480 -130 2 0 {name=p25 sig_type=std_logic lab=CLK1
W=4u}
C {opin.sym} -90 -580 1 0 {name=p31 sig_type=std_logic lab=Vout1}
C {opin.sym} -90 -270 3 0 {name=p32 sig_type=std_logic lab=Vout2}
C {sg13g2_pr/cap_cmim.sym} -330 -410 0 0 {name=C3
model=cap_cmim
w=10e-6
l=10e-6
m=3
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -630 -410 0 0 {name=C4
model=cap_cmim
w=10e-6
l=10e-6
m=3
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -780 -410 0 0 {name=C6
model=cap_cmim
w=10e-6
l=10e-6
m=3
spiceprefix=X}
C {sg13g2_pr/sg13_lv_pmos.sym} -980 -350 1 0 {name=M7
l=0.3u
w=5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -980 -180 3 0 {name=M8
l=0.3u
w=5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -980 -660 1 0 {name=M11
l=0.3u
w=5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -980 -490 3 0 {name=M12
l=0.3u
w=5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -480 -660 1 0 {name=M13
l=0.3u
w=5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -480 -180 3 0 {name=M14
l=0.3u
w=5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -480 -350 1 0 {name=M15
l=0.3u
w=5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -480 -490 3 0 {name=M16
l=0.3u
w=5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
