v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 -160 -60 -160 {lab=CONF1}
N -80 -160 -80 -80 {lab=CONF1}
N -80 -80 -60 -80 {lab=CONF1}
N -20 -130 -20 -110 {lab=nCONF1}
N -20 -120 5 -120 {lab=nCONF1}
N 5 -120 5 -110 {lab=nCONF1}
N -20 -210 0 -210 {lab=PSUP_LV}
N -20 -210 -20 -190 {lab=PSUP_LV}
N -20 -30 0 -30 {lab=NSUP}
N -20 -50 -20 -30 {lab=NSUP}
N -20 -80 -20 -50 {lab=NSUP}
N -20 -190 -20 -160 {lab=PSUP_LV}
N -80 80 -60 80 {lab=CONF0}
N -80 80 -80 160 {lab=CONF0}
N -80 160 -60 160 {lab=CONF0}
N -20 110 -20 130 {lab=nCONF0}
N -20 120 5 120 {lab=nCONF0}
N 5 120 5 130 {lab=nCONF0}
N -20 30 0 30 {lab=PSUP_LV}
N -20 30 -20 50 {lab=PSUP_LV}
N -20 210 0 210 {lab=NSUP}
N -20 190 -20 210 {lab=NSUP}
N -20 160 -20 190 {lab=NSUP}
N -20 50 -20 80 {lab=PSUP_LV}
C {ipin.sym} -240 -60 0 0 {name=p6 lab=PSUP_LV}
C {ipin.sym} -240 -40 0 0 {name=p7 lab=NSUP}
C {ipin.sym} -240 40 0 0 {name=p4 lab=CONF1}
C {lab_wire.sym} -240 -40 0 1 {name=p12 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -240 40 0 1 {name=p15 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -240 -60 0 1 {name=p13 sig_type=std_logic lab=PSUP_LV}
C {ipin.sym} -240 60 0 0 {name=p14 lab=CONF0}
C {lab_wire.sym} -240 60 0 1 {name=p17 sig_type=std_logic lab=CONF0}
C {symbols/nfet_03v3.sym} -40 -80 0 0 {name=M9
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} -40 -160 0 0 {name=M10
L=0.28u
W=0.22u
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
C {lab_wire.sym} 5 -110 0 1 {name=p50 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} 0 -210 0 1 {name=p51 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 0 -30 0 1 {name=p52 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -80 -110 0 0 {name=p45 sig_type=std_logic lab=CONF1
}
C {symbols/nfet_03v3.sym} -40 160 0 0 {name=M1
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} -40 80 0 0 {name=M2
L=0.28u
W=0.22u
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
C {lab_wire.sym} 5 130 0 1 {name=p18 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} 0 30 0 1 {name=p19 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 0 210 0 1 {name=p20 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -80 130 0 0 {name=p21 sig_type=std_logic lab=CONF0}
C {iopin.sym} 260 0 0 1 {name=p1 lab=IN}
C {iopin.sym} 540 0 0 0 {name=p2 lab=OUT}
C {iopin.sym} 540 -130 0 0 {name=p3 lab=FB}
