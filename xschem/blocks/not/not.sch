v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 -40 -50 40 {lab=A}
N 0 -10 0 10 {lab=B}
N 0 -90 20 -90 {lab=PSUP}
N 0 -90 0 -70 {lab=PSUP}
N 0 90 20 90 {lab=NSUP}
N 0 70 0 90 {lab=NSUP}
N 0 -70 0 -40 {lab=PSUP}
N 0 40 0 70 {lab=NSUP}
N 0 0 20 0 {lab=B}
N -60 0 -50 0 {lab=A}
N -50 -40 -40 -40 {lab=A}
N -50 40 -40 40 {lab=A}
C {symbols/nfet_03v3.sym} -20 40 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} -20 -40 0 0 {name=M1
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
C {ipin.sym} 20 -90 2 0 {name=p1 lab=PSUP}
C {ipin.sym} 20 90 2 0 {name=p2 lab=NSUP}
C {ipin.sym} -60 0 2 1 {name=p3 lab=A}
C {opin.sym} 20 0 0 0 {name=p4 lab=B}
