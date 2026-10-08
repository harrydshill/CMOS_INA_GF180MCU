v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {1Meg} 450 -260 0 0 0.4 0.4 {}
T {1.8Meg} 460 -150 0 0 0.4 0.4 {}
T {180k} 460 -40 0 0 0.4 0.4 {}
T {18k} 460 60 0 0 0.4 0.4 {}
T {1.8k} 460 160 0 0 0.4 0.4 {}
N 320 -180 350 -180 {lab=OUT+}
N 320 -190 320 -170 {lab=OUT+}
N 320 -270 320 -260 {lab=IN+}
N 320 -280 320 -270 {lab=IN+}
N 320 -280 350 -280 {lab=IN+}
N 320 280 350 280 {lab=OUT-}
N -440 190 -420 190 {lab=C0}
N -440 190 -440 270 {lab=C0}
N -440 270 -420 270 {lab=C0}
N -380 220 -380 240 {lab=nC0}
N -380 230 -355 230 {lab=nC0}
N -355 230 -355 240 {lab=nC0}
N -380 140 -360 140 {lab=PSUP_LV}
N -380 140 -380 160 {lab=PSUP_LV}
N -380 320 -360 320 {lab=NSUP}
N -380 300 -380 320 {lab=NSUP}
N -440 -50 -420 -50 {lab=C1}
N -440 -50 -440 30 {lab=C1}
N -440 30 -420 30 {lab=C1}
N -380 -20 -380 0 {lab=nC1}
N -380 -10 -355 -10 {lab=nC1}
N -355 -10 -355 0 {lab=nC1}
N -380 -100 -360 -100 {lab=PSUP_LV}
N -380 -100 -380 -80 {lab=PSUP_LV}
N -380 80 -360 80 {lab=NSUP}
N -380 60 -380 80 {lab=NSUP}
N -440 -290 -420 -290 {lab=C2}
N -440 -290 -440 -210 {lab=C2}
N -440 -210 -420 -210 {lab=C2}
N -380 -260 -380 -240 {lab=nC2}
N -380 -250 -355 -250 {lab=nC2}
N -355 -250 -355 -240 {lab=nC2}
N -380 -340 -360 -340 {lab=PSUP_LV}
N -380 -340 -380 -320 {lab=PSUP_LV}
N -380 -160 -360 -160 {lab=NSUP}
N -380 -180 -380 -160 {lab=NSUP}
N 320 -170 320 -160 {lab=OUT+}
N 320 -200 320 -190 {lab=OUT+}
N 320 260 320 310 {lab=OUT-}
N 320 100 320 140 {lab=#net1}
N 320 0 320 40 {lab=#net2}
N 320 -100 320 -60 {lab=#net3}
N 180 -80 320 -80 {lab=#net3}
N 180 -90 180 -80 {lab=#net3}
N 180 -180 180 -170 {lab=OUT+}
N 180 -180 320 -180 {lab=OUT+}
N -380 270 -380 300 {lab=NSUP}
N -380 160 -380 190 {lab=PSUP_LV}
N -380 -80 -380 -50 {lab=PSUP_LV}
N -380 30 -380 60 {lab=NSUP}
N -380 -320 -380 -290 {lab=PSUP_LV}
N -380 -210 -380 -180 {lab=NSUP}
N -1050 -160 -1030 -160 {lab=CONF0}
N -1050 -160 -1050 -80 {lab=CONF0}
N -1050 -80 -1030 -80 {lab=CONF0}
N -990 -130 -990 -110 {lab=nCONF0}
N -990 -120 -965 -120 {lab=nCONF0}
N -965 -120 -965 -110 {lab=nCONF0}
N -990 -210 -970 -210 {lab=PSUP_LV}
N -990 -210 -990 -190 {lab=PSUP_LV}
N -990 -30 -970 -30 {lab=NSUP}
N -990 -50 -990 -30 {lab=NSUP}
N -990 -80 -990 -50 {lab=NSUP}
N -990 -190 -990 -160 {lab=PSUP_LV}
N -1050 80 -1030 80 {lab=CONF1}
N -1050 80 -1050 160 {lab=CONF1}
N -1050 160 -1030 160 {lab=CONF1}
N -990 110 -990 130 {lab=nCONF1}
N -990 120 -965 120 {lab=nCONF1}
N -965 120 -965 130 {lab=nCONF1}
N -990 30 -970 30 {lab=PSUP_LV}
N -990 30 -990 50 {lab=PSUP_LV}
N -990 210 -970 210 {lab=NSUP}
N -990 190 -990 210 {lab=NSUP}
N -990 160 -990 190 {lab=NSUP}
N -990 50 -990 80 {lab=PSUP_LV}
N -140 120 320 120 {lab=#net1}
N -140 -90 -140 120 {lab=#net1}
N 20 -90 20 20 {lab=#net2}
N 20 20 320 20 {lab=#net2}
N -140 -180 180 -180 {lab=OUT+}
N -140 -180 -140 -170 {lab=OUT+}
N 20 -180 20 -170 {lab=OUT+}
N 320 370 320 400 {lab=IN-}
N 320 400 350 400 {lab=IN-}
C {iopin.sym} 350 -280 0 0 {name=p1 lab=IN+}
C {iopin.sym} 350 400 0 0 {name=p2 lab=IN-}
C {iopin.sym} 350 280 0 0 {name=p3 lab=OUT-}
C {iopin.sym} 350 -180 0 0 {name=p4 lab=OUT+}
C {ipin.sym} -1220 -50 0 0 {name=p6 lab=PSUP_LV}
C {ipin.sym} -1220 -30 0 0 {name=p7 lab=NSUP}
C {ipin.sym} -1220 50 0 0 {name=p8 lab=CONF0}
C {ipin.sym} -1220 30 0 0 {name=p9 lab=CONF1}
C {symbols/ppolyf_u_3k.sym} 320 -230 0 0 {name=R1
W=1e-6
L=333e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 320 -130 0 0 {name=R2
W=1e-6
L=600e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 320 340 0 0 {name=R3
W=1e-6
L=33e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_wire.sym} -1220 -30 0 1 {name=p11 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -1220 50 0 1 {name=p15 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -1220 30 0 1 {name=p16 sig_type=std_logic lab=CONF1
}
C {symbols/nfet_03v3.sym} -400 270 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} -400 190 0 0 {name=M2
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
C {lab_wire.sym} -440 240 0 0 {name=p18 sig_type=std_logic lab=C0}
C {lab_wire.sym} -355 240 0 1 {name=p19 sig_type=std_logic lab=nC0}
C {lab_wire.sym} -1220 -50 0 1 {name=p5 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -360 140 0 1 {name=p20 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -360 320 0 1 {name=p21 sig_type=std_logic lab=NSUP}
C {symbols/nfet_03v3.sym} -400 30 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} -400 -50 0 0 {name=M4
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
C {lab_wire.sym} -440 0 0 0 {name=p22 sig_type=std_logic lab=C1}
C {lab_wire.sym} -355 0 0 1 {name=p23 sig_type=std_logic lab=nC1}
C {lab_wire.sym} -360 -100 0 1 {name=p24 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -360 80 0 1 {name=p25 sig_type=std_logic lab=NSUP}
C {symbols/nfet_03v3.sym} -400 -210 0 0 {name=M5
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
C {symbols/pfet_03v3.sym} -400 -290 0 0 {name=M6
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
C {lab_wire.sym} -440 -240 0 0 {name=p26 sig_type=std_logic lab=C2}
C {lab_wire.sym} -355 -240 0 1 {name=p27 sig_type=std_logic lab=nC2}
C {lab_wire.sym} -360 -340 0 1 {name=p28 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -360 -160 0 1 {name=p29 sig_type=std_logic lab=NSUP}
C {blocks/transmission_gate/transmission_gate.sym} 180 -130 1 0 {name=x1}
C {symbols/ppolyf_u_3k.sym} 320 -30 0 0 {name=R4
W=1e-6
L=60e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 320 70 0 0 {name=R5
W=1e-6
L=6e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 320 170 0 0 {name=R6
W=1e-6
L=0.6e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_wire.sym} 160 -150 0 0 {name=p33 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 200 -150 0 1 {name=p34 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 20 -130 1 0 {name=x2}
C {lab_wire.sym} 0 -150 0 0 {name=p35 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 40 -150 0 1 {name=p36 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} -140 -130 1 0 {name=x3}
C {lab_wire.sym} -160 -150 0 0 {name=p37 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -120 -150 0 1 {name=p38 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 160 -130 0 0 {name=p10 sig_type=std_logic lab=C0}
C {lab_wire.sym} 0 -130 0 0 {name=p17 sig_type=std_logic lab=C1}
C {lab_wire.sym} -160 -130 0 0 {name=p39 sig_type=std_logic lab=C2}
C {lab_wire.sym} 200 -130 0 1 {name=p40 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 40 -130 0 1 {name=p41 sig_type=std_logic lab=nC1}
C {lab_wire.sym} -120 -130 0 1 {name=p42 sig_type=std_logic lab=nC2}
C {blocks/and/and.sym} -670 -120 0 0 {name=x4}
C {lab_wire.sym} -740 -100 0 0 {name=p43 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -740 -140 0 0 {name=p44 sig_type=std_logic lab=CONF1
}
C {symbols/nfet_03v3.sym} -1010 -80 0 0 {name=M7
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
C {symbols/pfet_03v3.sym} -1010 -160 0 0 {name=M8
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
C {lab_wire.sym} -965 -110 0 1 {name=p46 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -970 -210 0 1 {name=p47 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -970 -30 0 1 {name=p48 sig_type=std_logic lab=NSUP}
C {symbols/nfet_03v3.sym} -1010 160 0 0 {name=M9
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
C {symbols/pfet_03v3.sym} -1010 80 0 0 {name=M10
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
C {lab_wire.sym} -965 130 0 1 {name=p50 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -970 30 0 1 {name=p51 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -970 210 0 1 {name=p52 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -1050 -110 0 0 {name=p53 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -1050 130 0 0 {name=p45 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} -600 -120 0 1 {name=p49 sig_type=std_logic lab=C2}
C {blocks/and/and.sym} -670 0 0 0 {name=x5}
C {lab_wire.sym} -600 0 0 1 {name=p56 sig_type=std_logic lab=C1}
C {blocks/and/and.sym} -670 120 0 0 {name=x6}
C {lab_wire.sym} -600 120 0 1 {name=p59 sig_type=std_logic lab=C0}
C {lab_wire.sym} -740 -20 0 0 {name=p54 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} -740 20 0 0 {name=p55 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -740 100 0 0 {name=p57 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -740 140 0 0 {name=p58 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -660 -180 0 1 {name=p60 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -680 -180 0 0 {name=p61 sig_type=std_logic lab=NSUP}
C {noconn.sym} -680 180 3 0 {name=l1}
C {noconn.sym} -660 180 3 0 {name=l2}
C {lab_wire.sym} 300 -230 0 0 {name=p12 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 -130 0 0 {name=p13 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 -30 0 0 {name=p14 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 70 0 0 {name=p30 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 170 0 0 {name=p31 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 340 0 0 {name=p32 sig_type=std_logic lab=PSUP_LV}
C {ammeter.sym} 320 230 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
