v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 10 0 60 0 {lab=#net1}
N 10 -170 50 -170 {lab=#net2}
N 10 -280 50 -280 {lab=#net3}
N 50 -280 60 -280 {lab=#net3}
N 50 -170 60 -170 {lab=#net2}
N -90 150 40 150 {lab=#net4}
N 40 150 40 180 {lab=#net4}
N 40 240 40 280 {lab=NSUP}
N -160 280 40 280 {lab=NSUP}
N -120 -350 -90 -350 {lab=PSUP}
N -30 -350 100 -350 {lab=PSUP}
N -90 -250 -90 -200 {lab=#net5}
N 100 -250 100 -200 {lab=#net6}
N -170 -350 -120 -350 {lab=PSUP}
N 100 -350 100 -310 {lab=PSUP}
N -90 -350 -90 -310 {lab=PSUP}
N -170 280 -160 280 {lab=NSUP}
N -90 120 -90 150 {lab=#net4}
N 100 120 100 150 {lab=#net4}
N 100 30 100 60 {lab=#net7}
N -90 30 -90 60 {lab=#net8}
N 140 90 160 90 {lab=V-}
N -150 90 -130 90 {lab=V+}
N -90 -140 -90 -30 {lab=#net9}
N 100 -140 100 -30 {lab=#net10}
N -90 -310 -90 -280 {lab=PSUP}
N 100 -310 100 -280 {lab=PSUP}
N -90 -200 -90 -170 {lab=#net5}
N 100 -190 100 -170 {lab=#net11}
N -90 0 -90 30 {lab=#net8}
N 100 0 100 20 {lab=#net12}
N 100 90 100 120 {lab=#net4}
N -90 90 -90 120 {lab=#net4}
N 40 150 100 150 {lab=#net4}
N -50 0 10 -0 {lab=#net1}
N -50 -170 10 -170 {lab=#net2}
N -50 -280 10 -280 {lab=#net3}
N -90 -350 -30 -350 {lab=PSUP}
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
C {symbols/nfet_06v0_nvt.sym} 80 0 0 0 {name=M3
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
C {symbols/nfet_06v0_nvt.sym} -70 0 0 1 {name=M4
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
C {symbols/pfet_06v0.sym} -70 -170 0 1 {name=M5
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
C {symbols/pfet_06v0.sym} 80 -170 0 0 {name=M6
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
C {symbols/pfet_06v0.sym} -70 -280 0 1 {name=M7
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
C {symbols/pfet_06v0.sym} 80 -280 0 0 {name=M8
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
C {isource.sym} 40 210 0 0 {name=I0 value=10u}
C {iopin.sym} -170 280 0 1 {name=p1 lab=NSUP}
C {iopin.sym} -170 -350 0 1 {name=p2 lab=PSUP}
C {iopin.sym} -150 90 0 1 {name=p3 lab=V+}
C {iopin.sym} 160 90 0 0 {name=p4 lab=V-}
C {iopin.sym} -170 250 0 1 {name=p5 lab=N_EN}
