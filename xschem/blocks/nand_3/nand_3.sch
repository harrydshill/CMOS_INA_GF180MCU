v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 180 0 220 {lab=#net1}
N 0 280 0 300 {lab=NSUP}
N 0 50 60 50 {lab=NSUP}
N 0 -50 20 -50 {lab=C}
N -60 50 -40 50 {lab=A}
N -60 250 -40 250 {lab=C}
N -220 -50 -200 -50 {lab=B}
N -160 -20 -160 0 {lab=Y}
N -160 0 60 0 {lab=Y}
N 60 -20 60 0 {lab=Y}
N 0 0 0 20 {lab=Y}
N -160 -100 -160 -80 {lab=PSUP}
N 60 -100 60 -80 {lab=PSUP}
N -160 -80 -160 -50 {lab=PSUP}
N 60 -80 60 -50 {lab=PSUP}
N 60 0 100 -0 {lab=Y}
N 0 150 60 150 {lab=NSUP}
N -60 150 -40 150 {lab=B}
N 0 250 60 250 {lab=NSUP}
N -440 -50 -420 -50 {lab=C}
N -380 -20 -380 0 {lab=Y}
N -380 0 -160 0 {lab=Y}
N -380 -100 -380 -80 {lab=PSUP}
N -380 -80 -380 -50 {lab=PSUP}
N 0 80 -0 120 {lab=#net2}
C {lab_wire.sym} 0 300 2 1 {name=p1 sig_type=std_logic lab=NSUP}
C {symbols/nfet_03v3.sym} -20 250 0 0 {name=M5
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
W=0.5u
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
C {ipin.sym} -590 -40 0 0 {name=p3 lab=PSUP}
C {ipin.sym} -590 -20 0 0 {name=p4 lab=NSUP}
C {lab_wire.sym} -590 -20 0 1 {name=p5 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -590 -40 0 1 {name=p6 sig_type=std_logic lab=PSUP}
C {symbols/pfet_03v3.sym} -180 -50 0 0 {name=M3
L=0.28u
W=0.5u
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
C {ipin.sym} -590 0 0 0 {name=p7 lab=A}
C {ipin.sym} -590 20 0 0 {name=p8 lab=B}
C {lab_wire.sym} 60 -100 0 0 {name=p9 sig_type=std_logic lab=PSUP}
C {opin.sym} 100 0 0 0 {name=p12 lab=Y}
C {ipin.sym} -590 40 0 0 {name=p10 lab=C}
C {lab_wire.sym} -590 0 0 1 {name=p11 sig_type=std_logic lab=A}
C {lab_wire.sym} -590 20 0 1 {name=p13 sig_type=std_logic lab=B}
C {lab_wire.sym} -590 40 0 1 {name=p14 sig_type=std_logic lab=C}
C {lab_wire.sym} -60 250 0 0 {name=p15 sig_type=std_logic lab=C}
C {symbols/nfet_03v3.sym} -20 150 0 0 {name=M4
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
C {lab_wire.sym} 60 150 0 1 {name=p16 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -60 150 0 0 {name=p17 sig_type=std_logic lab=B}
C {lab_wire.sym} -60 50 0 0 {name=p18 sig_type=std_logic lab=A}
C {lab_wire.sym} 60 250 0 1 {name=p19 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -160 -100 0 0 {name=p20 sig_type=std_logic lab=PSUP}
C {lab_wire.sym} 0 -50 0 0 {name=p21 sig_type=std_logic lab=C}
C {lab_wire.sym} -220 -50 0 0 {name=p22 sig_type=std_logic lab=B}
C {symbols/pfet_03v3.sym} -400 -50 0 0 {name=M6
L=0.28u
W=0.5u
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
C {lab_wire.sym} -380 -100 0 0 {name=p23 sig_type=std_logic lab=PSUP}
C {lab_wire.sym} -440 -50 0 0 {name=p24 sig_type=std_logic lab=C}
