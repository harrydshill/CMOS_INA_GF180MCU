v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {68k} 140 -210 0 0 0.4 0.4 {}
T {22k} 140 -110 0 0 0.4 0.4 {}
T {6.8k} 140 -10 0 0 0.4 0.4 {}
T {220k} 140 -310 0 0 0.4 0.4 {}
T {68k} 140 210 2 1 0.4 0.4 {}
T {22k} 140 110 2 1 0.4 0.4 {}
T {220k} 140 310 2 1 0.4 0.4 {}
N 430 -50 460 -50 {lab=OUT+}
N 0 -70 0 -30 {lab=#net1}
N 0 -170 0 -130 {lab=#net2}
N 0 -270 0 -230 {lab=#net3}
N 0 30 0 70 {lab=#net4}
N 0 130 0 170 {lab=#net5}
N 0 230 0 270 {lab=#net6}
N 0 -350 260 -350 {lab=IN+}
N 0 -250 260 -250 {lab=#net3}
N 0 -150 260 -150 {lab=#net2}
N 0 -50 260 -50 {lab=#net1}
N 340 -350 400 -350 {lab=OUT+}
N 400 -350 400 -250 {lab=OUT+}
N 340 -250 400 -250 {lab=OUT+}
N 400 -250 400 -150 {lab=OUT+}
N 340 -150 400 -150 {lab=OUT+}
N 400 -150 400 -50 {lab=OUT+}
N 340 -50 400 -50 {lab=OUT+}
N 400 -50 430 -50 {lab=OUT+}
N 0 350 260 350 {lab=IN-}
N 0 250 260 250 {lab=#net6}
N 0 150 260 150 {lab=#net5}
N 0 50 260 50 {lab=#net4}
N 340 350 400 350 {lab=OUT-}
N 400 250 400 350 {lab=OUT-}
N 340 250 400 250 {lab=OUT-}
N 400 150 400 250 {lab=OUT-}
N 340 150 400 150 {lab=OUT-}
N 400 50 400 150 {lab=OUT-}
N 340 50 400 50 {lab=OUT-}
N 400 50 430 50 {lab=OUT-}
N 430 50 460 50 {lab=OUT-}
N -490 -40 -440 -40 {lab=nC1}
N -490 40 -445 40 {lab=nC2}
N -445 40 -440 40 {lab=nC2}
N -910 -40 -860 -40 {lab=CONF0}
N -910 40 -860 40 {lab=CONF1}
N -490 120 -445 120 {lab=nC3}
N -445 120 -440 120 {lab=nC3}
N -490 -120 -440 -120 {lab=nC0}
N -20 -350 -0 -350 {lab=IN+}
N -0 -350 -0 -330 {lab=IN+}
N 0 330 -0 350 {lab=IN-}
N -20 350 0 350 {lab=IN-}
C {iopin.sym} -20 -350 0 1 {name=p1 lab=IN+}
C {iopin.sym} -20 350 0 1 {name=p2 lab=IN-}
C {iopin.sym} 460 50 0 0 {name=p3 lab=OUT-}
C {iopin.sym} 460 -50 0 0 {name=p4 lab=OUT+}
C {ipin.sym} -1000 -50 0 0 {name=p6 lab=PSUP_LV}
C {ipin.sym} -1000 -30 0 0 {name=p7 lab=NSUP}
C {lab_wire.sym} -1000 -30 0 1 {name=p11 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -1000 -50 0 1 {name=p5 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 -200 0 0 {name=p14 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 -100 0 0 {name=p30 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 0 0 0 {name=p31 sig_type=std_logic lab=PSUP_LV}
C {symbols/ppolyf_u_1k.sym} 0 -100 0 0 {name=R2
W=1e-6
L=22e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 0 -200 0 0 {name=R4
W=1e-6
L=220e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {blocks/transmission_gate/transmission_gate.sym} 300 -50 0 0 {name=x1}
C {blocks/transmission_gate/transmission_gate.sym} 300 -150 0 0 {name=x2}
C {blocks/transmission_gate/transmission_gate.sym} 300 -250 0 0 {name=x7}
C {blocks/transmission_gate/transmission_gate.sym} 300 -350 0 0 {name=x12}
C {lab_wire.sym} -20 -300 0 0 {name=p27 sig_type=std_logic lab=PSUP_LV}
C {symbols/ppolyf_u_1k.sym} 0 -300 0 0 {name=R9
W=1e-6
L=2200e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 0 0 0 0 {name=R3
W=1e-6
L=4.4e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {lab_wire.sym} -20 200 2 1 {name=p21 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 100 2 1 {name=p32 sig_type=std_logic lab=PSUP_LV}
C {symbols/ppolyf_u_1k.sym} 0 100 2 1 {name=R6
W=1e-6
L=22e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 0 200 2 1 {name=R7
W=1e-6
L=220e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {lab_wire.sym} -20 300 2 1 {name=p34 sig_type=std_logic lab=PSUP_LV}
C {symbols/ppolyf_u_1k.sym} 0 300 2 1 {name=R14
W=1e-6
L=2200e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {lab_wire.sym} 300 -30 2 0 {name=p40 sig_type=std_logic lab=C0}
C {lab_wire.sym} 300 -70 0 1 {name=p41 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 280 -30 2 1 {name=p42 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 280 -70 0 0 {name=p51 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 280 -130 2 1 {name=p53 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 280 -170 0 0 {name=p56 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 280 -230 2 1 {name=p59 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 280 -270 0 0 {name=p63 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 280 -330 2 1 {name=p66 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 280 -370 0 0 {name=p67 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 -130 2 0 {name=p76 sig_type=std_logic lab=C1}
C {lab_wire.sym} 300 -170 0 1 {name=p77 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 300 -230 2 0 {name=p78 sig_type=std_logic lab=C2}
C {lab_wire.sym} 300 -270 0 1 {name=p79 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 300 -330 2 0 {name=p80 sig_type=std_logic lab=C3}
C {lab_wire.sym} 300 -370 0 1 {name=p81 sig_type=std_logic lab=nC3}
C {blocks/transmission_gate/transmission_gate.sym} 300 50 2 1 {name=x19}
C {blocks/transmission_gate/transmission_gate.sym} 300 150 2 1 {name=x20}
C {blocks/transmission_gate/transmission_gate.sym} 300 250 2 1 {name=x21}
C {blocks/transmission_gate/transmission_gate.sym} 300 350 2 1 {name=x22}
C {lab_wire.sym} 300 30 0 1 {name=p90 sig_type=std_logic lab=C0}
C {lab_wire.sym} 300 70 2 0 {name=p91 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 280 30 0 0 {name=p92 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 280 70 2 1 {name=p93 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 280 130 0 0 {name=p94 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 280 170 2 1 {name=p95 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 280 230 0 0 {name=p96 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 280 270 2 1 {name=p97 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 280 330 0 0 {name=p98 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 280 370 2 1 {name=p99 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 130 0 1 {name=p108 sig_type=std_logic lab=C1}
C {lab_wire.sym} 300 170 2 0 {name=p109 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 300 230 0 1 {name=p110 sig_type=std_logic lab=C2}
C {lab_wire.sym} 300 270 2 0 {name=p111 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 300 330 0 1 {name=p112 sig_type=std_logic lab=C3}
C {lab_wire.sym} 300 370 2 0 {name=p113 sig_type=std_logic lab=nC3}
C {ipin.sym} -1000 60 0 0 {name=p8 lab=CONF1}
C {lab_wire.sym} -1000 60 0 1 {name=p15 sig_type=std_logic lab=CONF1}
C {ipin.sym} -1000 40 0 0 {name=p10 lab=CONF0}
C {lab_wire.sym} -1000 40 0 1 {name=p17 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -340 -120 0 1 {name=p23 sig_type=std_logic lab=C0}
C {lab_wire.sym} -480 120 0 1 {name=p22 sig_type=std_logic lab=nC3}
C {lab_wire.sym} -475 40 0 1 {name=p24 sig_type=std_logic lab=nC2}
C {lab_wire.sym} -475 -40 0 1 {name=p25 sig_type=std_logic lab=nC1}
C {lab_wire.sym} -540 -160 0 1 {name=p45 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -560 -160 0 0 {name=p46 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -340 120 0 1 {name=p57 sig_type=std_logic lab=C3}
C {lab_wire.sym} -480 -120 0 1 {name=p62 sig_type=std_logic lab=nC0}
C {lab_wire.sym} -340 40 0 1 {name=p141 sig_type=std_logic lab=C2}
C {lab_wire.sym} -340 -40 0 1 {name=p142 sig_type=std_logic lab=C1}
C {lab_wire.sym} -760 -40 0 1 {name=p65 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -860 -40 0 0 {name=p129 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -760 40 0 1 {name=p130 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -860 40 0 0 {name=p131 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -800 -80 0 1 {name=p132 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -820 -80 0 0 {name=p133 sig_type=std_logic lab=NSUP}
C {blocks/not/not.sym} -390 -40 0 0 {name=x9}
C {blocks/not/not.sym} -390 40 0 0 {name=x10}
C {blocks/not/not.sym} -390 120 0 0 {name=x11}
C {lab_wire.sym} -380 -160 0 1 {name=p140 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -400 -160 0 0 {name=p143 sig_type=std_logic lab=NSUP}
C {blocks/not/not.sym} -810 -40 0 0 {name=x31}
C {blocks/not/not.sym} -810 40 0 0 {name=x32}
C {blocks/not/not.sym} -390 -120 0 0 {name=x35}
C {blocks/nand_2/nand_2.sym} -550 -120 0 0 {name=x3}
C {blocks/nand_2/nand_2.sym} -550 -40 0 0 {name=x4}
C {blocks/nand_2/nand_2.sym} -550 40 0 0 {name=x5}
C {blocks/nand_2/nand_2.sym} -550 120 0 0 {name=x6}
C {lab_wire.sym} -600 100 0 0 {name=p12 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -600 140 0 0 {name=p13 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -600 20 0 0 {name=p16 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -600 60 0 0 {name=p18 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -600 -60 0 0 {name=p19 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -600 -20 0 0 {name=p20 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -600 -100 0 0 {name=p26 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -600 -140 0 0 {name=p28 sig_type=std_logic lab=CONF0}
