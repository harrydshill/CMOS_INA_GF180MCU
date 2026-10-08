v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 80 0 120 {lab=#net1}
N -0 180 -0 200 {lab=NSUP}
N 0 150 0 180 {lab=NSUP}
N 0 50 60 50 {lab=NSUP}
N 0 -50 20 -50 {lab=A}
N -60 50 -40 50 {lab=A}
N -80 50 -60 50 {lab=A}
N -70 150 -40 150 {lab=B}
N -60 -50 -60 50 {lab=A}
N -60 -50 -0 -50 {lab=A}
N -240 150 -70 150 {lab=B}
N -220 -50 -200 -50 {lab=B}
N -220 -50 -220 150 {lab=B}
N -160 -20 -160 0 {lab=#net2}
N -160 0 60 0 {lab=#net2}
N 60 -20 60 0 {lab=#net2}
N 0 0 0 20 {lab=#net2}
N -160 -100 -160 -80 {lab=PSUP_LV}
N -160 -100 60 -100 {lab=PSUP_LV}
N 60 -100 60 -80 {lab=PSUP_LV}
N 60 0 200 0 {lab=#net2}
N -160 -80 -160 -50 {lab=PSUP_LV}
N 60 -80 60 -50 {lab=PSUP_LV}
N 260 -80 260 -50 {lab=PSUP_LV}
N 260 -100 260 -80 {lab=PSUP_LV}
N 260 -20 260 20 {lab=xxx}
N 200 -50 200 0 {lab=#net2}
N 200 -50 220 -50 {lab=#net2}
N 200 0 200 50 {lab=#net2}
N 200 50 220 50 {lab=#net2}
N 260 50 260 100 {lab=NSUP}
N 260 -0 300 0 {lab=xxx}
C {lab_wire.sym} 0 200 2 1 {name=p1 sig_type=std_logic lab=NSUP}
C {symbols/nfet_03v3.sym} -20 150 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} -20 50 0 0 {name=M1
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
C {lab_wire.sym} 60 50 0 1 {name=p2 sig_type=std_logic lab=NSUP}
C {symbols/pfet_03v3.sym} 40 -50 0 0 {name=M2
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
C {ipin.sym} -230 -180 0 0 {name=p3 lab=PSUP_LV}
C {ipin.sym} -230 -160 0 0 {name=p4 lab=NSUP}
C {lab_wire.sym} -230 -160 0 1 {name=p5 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -230 -180 0 1 {name=p6 sig_type=std_logic lab=PSUP_LV}
C {symbols/pfet_03v3.sym} -180 -50 0 0 {name=M3
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
C {ipin.sym} -80 50 0 0 {name=p7 lab=A}
C {ipin.sym} -240 150 0 0 {name=p8 lab=B}
C {lab_wire.sym} -60 -100 0 0 {name=p9 sig_type=std_logic lab=PSUP_LV}
C {symbols/pfet_03v3.sym} 240 -50 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 240 50 0 0 {name=M6
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
C {lab_wire.sym} 260 -100 0 0 {name=p10 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 260 100 2 1 {name=p11 sig_type=std_logic lab=NSUP}
C {opin.sym} 300 0 0 0 {name=p12 lab=O}
