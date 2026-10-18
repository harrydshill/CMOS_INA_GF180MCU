v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 140 0 160 {lab=C}
N -40 160 0 160 {lab=C}
N -40 -160 0 -160 {lab=nC}
N 0 -160 0 -140 {lab=nC}
N 30 0 30 100 {lab=B}
N -80 0 -30 0 {lab=A}
N -30 0 -30 100 {lab=A}
N -30 -100 -30 0 {lab=A}
N 30 0 80 0 {lab=B}
N 30 -100 30 0 {lab=B}
N 0 -100 0 -40 {lab=VPOS}
N 0 -40 80 -40 {lab=VPOS}
N 0 40 80 40 {lab=VNEG}
N 0 40 0 100 {lab=VNEG}
C {iopin.sym} -80 0 0 1 {name=p1 lab=A}
C {iopin.sym} 80 0 0 0 {name=p2 lab=B
}
C {ipin.sym} -40 160 0 0 {name=p3 lab=C}
C {ipin.sym} -40 -160 0 0 {name=p4 lab=nC}
C {ipin.sym} 80 -40 0 1 {name=p5 lab=VPOS}
C {ipin.sym} 80 40 0 1 {name=p6 lab=VNEG}
C {symbols/nfet_03v3.sym} 0 120 3 0 {name=M3
L=2u
W=10u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 0 -120 1 0 {name=M4
L=2u
W=10u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
