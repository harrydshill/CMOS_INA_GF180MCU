v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {i forgot to pull this pin to the symbol ->}
E {}
T {i forgot to pull this pin to the symbol ->} -630 240 0 0 0.4 0.4 {}
N 10 -80 50 -80 {lab=#net1}
N 50 -80 60 -80 {lab=#net1}
N -90 150 40 150 {lab=#net2}
N 20 150 20 180 {lab=#net2}
N 20 240 20 280 {lab=NSUP}
N -170 -170 -120 -170 {lab=PSUP}
N -170 280 -160 280 {lab=NSUP}
N -90 120 -90 150 {lab=#net2}
N 100 120 100 150 {lab=#net2}
N 140 90 160 90 {lab=V-}
N -150 90 -130 90 {lab=V+}
N -90 -60 -90 50 {lab=#net1}
N 100 -60 100 50 {lab=Vo}
N -90 -110 -90 -80 {lab=PSUP}
N 100 -100 100 -80 {lab=#net3}
N 100 90 100 120 {lab=#net2}
N -90 90 -90 120 {lab=#net2}
N 40 150 100 150 {lab=#net2}
N -50 -80 10 -80 {lab=#net1}
N -90 -170 -90 -110 {lab=PSUP}
N -120 -170 100 -170 {lab=PSUP}
N 100 -170 100 -110 {lab=PSUP}
N -90 50 -90 60 {lab=#net1}
N 100 50 100 60 {lab=Vo}
N -90 -30 -30 -30 {lab=#net1}
N -30 -80 -30 -30 {lab=#net1}
N -160 280 20 280 {lab=NSUP}
N 100 10 160 10 {lab=Vo}
C {symbols/nfet_06v0_nvt.sym} 120 90 0 1 {name=M1
L=1.80u
W=0.80u
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
C {symbols/nfet_06v0_nvt.sym} -110 90 0 0 {name=M2
L=1.80u
W=0.80u
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
C {symbols/pfet_06v0.sym} -70 -80 0 1 {name=M5
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
C {symbols/pfet_06v0.sym} 80 -80 0 0 {name=M6
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
C {isource.sym} 20 210 0 0 {name=I0 value=5u}
C {iopin.sym} -170 280 0 1 {name=p1 lab=NSUP}
C {iopin.sym} -170 -170 0 1 {name=p2 lab=PSUP}
C {iopin.sym} -150 90 0 1 {name=p3 lab=V+}
C {iopin.sym} 160 90 0 0 {name=p4 lab=V-}
C {iopin.sym} -170 220 0 1 {name=p5 lab=EN}
C {iopin.sym} 160 10 0 0 {name=p6 lab=Vo}
C {iopin.sym} -170 250 0 1 {name=p7 lab=N_EN}
