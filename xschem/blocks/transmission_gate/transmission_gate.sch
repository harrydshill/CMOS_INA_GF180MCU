v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {GF180MCU analog transmission gate
6V PFET/NFET pass gate} 0 -220 0 0 0.4 0.4 {}
N -200 -80 -20 -80 {lab=CTRL}
N -200 80 -20 80 {lab=CTRLB}
N 20 -110 220 -110 {lab=A}
N 20 -50 220 -50 {lab=B}
N 20 50 220 50 {lab=B}
N 20 110 220 110 {lab=A}
N 20 -80 220 -80 {lab=VDD}
N 20 80 220 80 {lab=VSS}
C {ipin.sym} -200 -80 0 0 {name=p1 lab=CTRL}
C {ipin.sym} -200 80 0 0 {name=p2 lab=CTRLB}
C {iopin.sym} 220 -110 0 0 {name=p3 lab=A}
C {iopin.sym} 220 110 0 0 {name=p4 lab=B}
C {ipin.sym} 220 -80 0 0 {name=p5 lab=VDD}
C {ipin.sym} 220 80 0 0 {name=p6 lab=VSS}
C {symbols/pfet_06v0.sym} 0 -80 0 0 {name=M1
L=0.5u
W=4u
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
C {symbols/nfet_06v0_nvt.sym} 0 80 0 0 {name=M2
L=0.5u
W=4u
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
