v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -150 -20 170 -20 {}
L 4 -150 -130 -150 -20 {}
L 4 -150 -130 170 -130 {}
L 4 170 -130 170 -20 {}
L 4 -250 350 70 350 {}
L 4 -250 240 -250 350 {}
L 4 -250 240 70 240 {}
L 4 70 240 70 350 {}
L 4 120 120 120 140 {}
L 4 120 120 140 120 {}
L 4 120 120 190 210 {}
T {diff pair common 
centroid please} 200 210 0 0 0.2 0.2 {}
N 10 150 100 150 {lab=AA2}
N -170 -170 -90 -170 {lab=PSUP}
N -170 410 10 410 {lab=NSUP}
N -90 120 -90 150 {lab=AA2}
N 100 120 100 150 {lab=AA2}
N 140 90 160 90 {lab=V-}
N -150 90 -130 90 {lab=V+}
N -90 -30 -90 60 {lab=AA1
}
N 100 10 100 60 {lab=Vo}
N -30 -80 60 -80 {lab=AA1}
N -90 -170 -90 -80 {lab=PSUP}
N -90 -170 100 -170 {lab=PSUP}
N 100 -170 100 -80 {lab=PSUP}
N -90 -30 -30 -30 {lab=AA1}
N -30 -80 -30 -30 {lab=AA1}
N 100 10 160 10 {lab=Vo}
N -90 90 100 90 {lab=NSUP}
N -90 150 10 150 {lab=AA2}
N -90 -60 -90 -30 {lab=AA1}
N -50 -80 -30 -80 {lab=AA1}
N 100 -50 100 10 {lab=Vo}
N 270 110 270 130 {lab=NSUP}
N 160 10 340 10 {lab=Vo}
N 270 10 270 50 {lab=Vo}
N -300 -170 -170 -170 {lab=PSUP}
N -300 410 -170 410 {lab=NSUP}
N -160 300 -30 300 {lab=AA3}
N 10 150 10 270 {lab=AA2}
N 10 330 10 390 {lab=NSUP}
N 10 390 10 410 {lab=NSUP}
N -200 300 -200 410 {lab=NSUP}
N -140 250 -140 300 {lab=AA3}
N -200 250 -140 250 {lab=AA3}
N -200 250 -200 270 {lab=AA3}
N -200 220 -200 250 {lab=AA3}
N -200 140 -200 160 {lab=PSUP}
N 10 300 10 330 {lab=NSUP}
C {symbols/pfet_06v0.sym} -70 -80 0 1 {name=M5
L=4u
W=2u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
G {}
K {}
V {}
S {}
E {}
T {3.3 V to 5 V level shifter} -250 -240 0 0 0.3 0.3 {}
T {6 V devices; common ground required} -250 -210 0 0 0.2 0.2 {}
N -120 -180 20 -180 {lab=VDD33}
N 20 -180 20 -130 {lab=VDD33}
N -120 180 520 180 {lab=GND}
N 20 130 20 180 {lab=GND}
N -20 -100 -120 -100 {lab=VIN}
N -20 100 -120 100 {lab=VIN}
N 20 -70 100 -70 {lab=VINA}
N 100 -70 100 100 {lab=VINA}
N -120 100 100 100 {lab=VIN}
N 100 100 280 100 {lab=VIN}
N 100 -70 480 -70 {lab=VINA}
N 480 -70 480 100 {lab=VINA}
N 280 100 280 100 {lab=VIN}
N 320 -180 520 -180 {lab=VDD5}
N 320 -180 320 -130 {lab=VDD5}
N 520 -180 520 -130 {lab=VDD5}
N 320 -70 320 70 {lab=VL}
N 520 -70 520 70 {lab=VOUT}
N 280 -100 520 -70 {lab=VOUT}
N 480 -100 320 -70 {lab=VL}
N 320 130 320 180 {lab=GND}
N 520 130 520 180 {lab=GND}
C {ipin.sym} -120 -180 0 0 {name=p1 lab=VDD33}
C {ipin.sym} 320 -180 0 0 {name=p2 lab=VDD5}
C {ipin.sym} -120 180 0 0 {name=p3 lab=GND}
C {ipin.sym} -120 -100 0 0 {name=p4 lab=VIN}
C {opin.sym} 520 70 0 0 {name=p5 lab=VOUT}
C {symbols/pfet_06v0.sym} 0 -100 0 0 {name=M1
L=4u
W=2u
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
C {symbols/nfet_06v0_nvt.sym} 0 100 0 0 {name=M2
L=2u
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
C {symbols/pfet_06v0.sym} 300 -100 0 0 {name=M3
L=4u
W=2u
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
C {symbols/pfet_06v0.sym} 500 -100 0 0 {name=M4
L=4u
W=2u
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
C {symbols/nfet_06v0_nvt.sym} 300 100 0 0 {name=M5
L=2u
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
C {symbols/nfet_06v0_nvt.sym} 500 100 0 0 {name=M6
L=2u
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
