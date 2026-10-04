v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {414.2k} -130 -450 0 0 0.2 0.2 {}
T {414.2k} -130 -350 0 0 0.2 0.2 {}
T {1Meg} -130 -250 0 0 0.2 0.2 {}
T {1Meg} -130 -70 0 0 0.2 0.2 {}
T {0b00 - 0db - short all top bypass, disconnect bottom resistor
0b01 - 3db - short all but one 4k top bypass, connect bottom resistor
0b10 - 6db - short all but the 10k top bypass, connect bottom resistor
0b11 - 9db - remove all top bypasses, connect bottom resistor
} -110 -590 0 0 0.2 0.2 {}
N -0 -0 40 -0 {lab=bottom}
N -0 -20 -0 0 {lab=bottom}
N -40 -190 0 -190 {lab=center}
N 0 -310 0 -270 {lab=#net1}
N 0 -410 0 -370 {lab=#net2}
N 0 -490 0 -470 {lab=top}
N 0 -490 40 -490 {lab=top}
N -100 0 -60 -0 {lab=NSUP}
N 170 -300 170 -280 {lab=#net1}
N 0 -290 170 -290 {lab=#net1}
N 170 -400 170 -380 {lab=#net2}
N 40 -490 200 -490 {lab=top}
N 170 -490 170 -480 {lab=top}
N 0 -390 170 -390 {lab=#net2}
N 0 -190 170 -190 {lab=center}
N 170 -200 170 -190 {lab=center}
N -0 -210 -0 -180 {lab=center}
N 0 -100 -0 -80 {lab=#net3}
C {iopin.sym} 200 -490 0 0 {name=p1 lab=top}
C {iopin.sym} -40 -190 0 1 {name=p2 lab=center}
C {iopin.sym} 40 0 2 1 {name=p3 lab=bottom}
C {symbols/ppolyf_u_3k.sym} 0 -440 0 0 {name=R1
W=1e-6
L=1e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 0 -340 0 0 {name=R2
W=1e-6
L=1e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 0 -240 0 0 {name=R3
W=1e-6
L=1e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 0 -50 0 0 {name=R4
W=1e-6
L=1e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {ipin.sym} 390 -520 0 1 {name=p4 lab=MSBIN}
C {ipin.sym} 390 -480 0 1 {name=p5 lab=LSBIN}
C {ipin.sym} -100 0 0 0 {name=p6 lab=NSUP}
C {lab_wire.sym} -80 0 0 1 {name=p7 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -20 -50 0 0 {name=p8 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -20 -240 0 0 {name=p9 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -20 -340 0 0 {name=p10 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -20 -440 0 0 {name=p11 sig_type=std_logic lab=NSUP}
C {blocks/transmission_gate/transmission_gate.sym} 170 -440 1 0 {name=x1}
C {blocks/transmission_gate/transmission_gate.sym} 170 -340 1 0 {name=x2}
C {blocks/transmission_gate/transmission_gate.sym} 170 -240 1 0 {name=x3}
C {blocks/transmission_gate/transmission_gate.sym} 0 -140 1 0 {name=x4}
