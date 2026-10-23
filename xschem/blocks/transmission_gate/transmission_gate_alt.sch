v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -40 -40 -20 -40 {lab=VPOS}
N -20 -40 -20 -20 {lab=VPOS}
N -40 40 -20 40 {lab=VNEG}
N -20 20 -20 40 {lab=VNEG}
C {iopin.sym} 40 0 0 0 {name=p1 lab=A}
C {iopin.sym} -40 0 2 0 {name=p2 lab=B
}
C {ipin.sym} 0 20 3 0 {name=p3 lab=C}
C {ipin.sym} 0 -20 1 0 {name=p4 lab=nC}
C {ipin.sym} -40 -40 2 1 {name=p5 lab=VPOS}
C {ipin.sym} -40 40 0 0 {name=p6 lab=VNEG}
C {blocks/transmission_gate/transmission_gate.sym} 0 0 0 0 {name=x1}
