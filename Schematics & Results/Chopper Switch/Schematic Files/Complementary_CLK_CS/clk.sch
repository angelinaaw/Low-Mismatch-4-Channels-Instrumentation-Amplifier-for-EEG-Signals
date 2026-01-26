v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 460 -700 460 -570 {lab=CLK_IN}
N 520 -700 520 -570 {lab=#net1}
N 490 -700 490 -650 {lab=VSS}
N 490 -610 490 -570 {lab=VDD}
N 490 -530 490 -490 {lab=VSS}
N 490 -800 490 -740 {lab=VDD}
N 330 -430 400 -430 {lab=CLK_IN}
N 400 -640 400 -430 {lab=CLK_IN}
N 400 -640 460 -640 {lab=CLK_IN}
N 710 -700 710 -590 {lab=#net1}
N 520 -640 710 -640 {lab=#net1}
N 750 -670 750 -610 {lab=_CLK}
N 750 -640 890 -640 {lab=_CLK}
N 490 -760 550 -760 {lab=VDD}
N 550 -760 750 -760 {lab=VDD}
N 750 -760 750 -730 {lab=VDD}
N 490 -510 750 -510 {lab=VSS}
N 750 -560 750 -510 {lab=VSS}
N 750 -700 800 -700 {lab=VDD}
N 800 -760 800 -700 {lab=VDD}
N 750 -760 800 -760 {lab=VDD}
N 750 -590 800 -590 {lab=VSS}
N 800 -590 800 -510 {lab=VSS}
N 750 -510 790 -510 {lab=VSS}
N 790 -510 800 -510 {lab=VSS}
N 460 -350 460 -240 {lab=CLK_IN}
N 500 -320 500 -260 {lab=#net2}
N 500 -410 500 -380 {lab=VDD}
N 500 -210 500 -160 {lab=VSS}
N 500 -350 550 -350 {lab=VDD}
N 550 -410 550 -350 {lab=VDD}
N 500 -410 550 -410 {lab=VDD}
N 500 -240 550 -240 {lab=VSS}
N 550 -240 550 -160 {lab=VSS}
N 500 -160 540 -160 {lab=VSS}
N 540 -160 550 -160 {lab=VSS}
N 400 -430 400 -300 {lab=CLK_IN}
N 400 -300 460 -300 {lab=CLK_IN}
N 710 -350 710 -240 {lab=#net2}
N 750 -320 750 -260 {lab=CLK}
N 750 -410 750 -380 {lab=VDD}
N 750 -210 750 -160 {lab=VSS}
N 750 -350 800 -350 {lab=VDD}
N 800 -410 800 -350 {lab=VDD}
N 750 -410 800 -410 {lab=VDD}
N 750 -240 800 -240 {lab=VSS}
N 800 -240 800 -160 {lab=VSS}
N 750 -160 790 -160 {lab=VSS}
N 790 -160 800 -160 {lab=VSS}
N 500 -300 710 -300 {lab=#net2}
N 750 -300 890 -300 {lab=CLK}
N 550 -410 750 -410 {lab=VDD}
N 550 -160 750 -160 {lab=VSS}
N 410 -800 490 -800 {lab=VDD}
N 550 -460 550 -410 {lab=VDD}
N 350 -460 550 -460 {lab=VDD}
N 350 -800 350 -460 {lab=VDD}
N 350 -800 410 -800 {lab=VDD}
N 410 -800 410 -780 {lab=VDD}
N 290 -610 490 -610 {lab=VDD}
N 290 -800 290 -610 {lab=VDD}
N 290 -800 350 -800 {lab=VDD}
N 890 -300 1020 -300 {lab=CLK}
N 890 -640 1020 -640 {lab=_CLK}
N 800 -510 940 -510 {lab=VSS}
N 800 -160 930 -160 {lab=VSS}
N 270 -430 330 -430 {lab=CLK_IN}
N 1100 -510 1100 -160 {lab=VSS}
N 940 -160 1100 -160 {lab=VSS}
N 940 -510 1090 -510 {lab=VSS}
N 1090 -510 1100 -510 {lab=VSS}
N 930 -160 940 -160 {lab=VSS}
C {devices/code_shown.sym} 450 -970 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {symbols/nfet_03v3.sym} 490 -720 1 0 {name=M1
L=0.5u
W=3u
nf=5
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 490 -550 1 1 {name=M2
L=0.5u
W=3u
nf=5
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 730 -700 0 0 {name=M3
L=0.3u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 730 -590 0 0 {name=M4
L=0.3u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 480 -350 0 0 {name=M5
L=0.3u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 480 -240 0 0 {name=M6
L=0.3u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 730 -350 0 0 {name=M7
L=0.3u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 730 -240 0 0 {name=M8
L=0.3u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {opin.sym} 1020 -300 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {opin.sym} 1020 -640 0 0 {name=p6 sig_type=std_logic lab=_CLK}
C {ipin.sym} 490 -490 0 0 {name=p8 lab=VSS}
C {lab_wire.sym} 490 -670 0 0 {name=p3 lab=VSS}
C {ipin.sym} 410 -780 0 0 {name=p9 lab=VDD}
C {ipin.sym} 270 -430 0 0 {name=p4 lab=CLK_IN}
