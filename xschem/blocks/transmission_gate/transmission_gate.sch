v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -20 -0 -0 {lab=C}
N -40 0 -0 0 {lab=C}
N -40 -320 0 -320 {lab=nC}
N -0 -320 -0 -300 {lab=nC}
N 30 -160 30 -60 {lab=B}
N -80 -160 -30 -160 {lab=A}
N -30 -160 -30 -60 {lab=A}
N -30 -260 -30 -160 {lab=A}
N 30 -160 80 -160 {lab=B}
N 30 -260 30 -160 {lab=B}
N -0 -260 0 -200 {lab=VPOS}
N 0 -200 80 -200 {lab=VPOS}
N 0 -120 80 -120 {lab=VNEG}
N 0 -120 0 -60 {lab=VNEG}
C {iopin.sym} -80 -160 0 1 {name=p1 lab=A}
C {iopin.sym} 80 -160 0 0 {name=p2 lab=B
}
C {ipin.sym} -40 0 0 0 {name=p3 lab=C}
C {ipin.sym} -40 -320 0 0 {name=p4 lab=nC}
C {symbols/nfet_06v0.sym} 0 -40 1 1 {name=M1
L=0.70u
W=0.30u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 0 -280 1 0 {name=M2
L=0.55u
W=0.30u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {ipin.sym} 80 -200 0 1 {name=p5 lab=VPOS}
C {ipin.sym} 80 -120 0 1 {name=p6 lab=VNEG}
