v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {1Meg} 450 -260 0 0 0.4 0.4 {}
T {900k} 460 -150 0 0 0.4 0.4 {}
T {90k} 460 -40 0 0 0.4 0.4 {}
T {9k} 460 60 0 0 0.4 0.4 {}
T {1.8k} 460 160 0 0 0.4 0.4 {}
T {9k} 460 250 0 0 0.4 0.4 {}
T {90k} 460 360 0 0 0.4 0.4 {}
T {900k} 460 460 0 0 0.4 0.4 {}
T {1Meg} 450 560 0 0 0.4 0.4 {}
N 810 120 840 120 {lab=OUT+}
N 320 -270 320 -260 {lab=IN+}
N 320 -280 320 -270 {lab=IN+}
N 320 -280 350 -280 {lab=IN+}
N 810 230 840 230 {lab=OUT-}
N 320 500 320 540 {lab=#net1}
N 320 100 320 140 {lab=#net2}
N 320 0 320 40 {lab=#net3}
N 320 -100 320 -60 {lab=#net4}
N 320 600 320 630 {lab=IN-}
N 320 630 350 630 {lab=IN-}
N -470 -120 -420 -120 {lab=C3}
N -470 -40 -420 -40 {lab=nC2}
N -470 40 -425 40 {lab=nC1}
N -425 40 -420 40 {lab=nC1}
N 320 -200 320 -160 {lab=#net5}
N 320 400 320 440 {lab=#net6}
N 320 300 320 340 {lab=#net7}
N 320 200 320 240 {lab=#net8}
N -470 120 -425 120 {lab=nC0}
N -425 120 -420 120 {lab=nC0}
C {iopin.sym} 350 -280 0 0 {name=p1 lab=IN+}
C {iopin.sym} 350 630 0 0 {name=p2 lab=IN-}
C {iopin.sym} 840 230 0 0 {name=p3 lab=OUT-}
C {iopin.sym} 840 120 0 0 {name=p4 lab=OUT+}
C {ipin.sym} -1000 -50 0 0 {name=p6 lab=PSUP_LV}
C {ipin.sym} -1000 -30 0 0 {name=p7 lab=NSUP}
C {ipin.sym} -1000 50 0 0 {name=p8 lab=CONF0}
C {ipin.sym} -1000 30 0 0 {name=p9 lab=CONF1}
C {lab_wire.sym} -1000 -30 0 1 {name=p11 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -1000 50 0 1 {name=p15 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -1000 30 0 1 {name=p16 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} -1000 -50 0 1 {name=p5 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -320 40 0 1 {name=p22 sig_type=std_logic lab=C1}
C {lab_wire.sym} -320 -40 0 1 {name=p26 sig_type=std_logic lab=C2}
C {symbols/ppolyf_u_3k.sym} 320 170 0 0 {name=R6
W=1e-6
L=0.6e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_wire.sym} -580 -100 0 0 {name=p43 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -580 -140 0 0 {name=p44 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} -720 -40 0 1 {name=p46 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -580 -60 0 0 {name=p54 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} -580 -20 0 0 {name=p55 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -580 20 0 0 {name=p57 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -580 60 0 0 {name=p58 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -520 -160 0 1 {name=p60 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -540 -160 0 0 {name=p61 sig_type=std_logic lab=NSUP}
C {noconn.sym} -540 160 3 0 {name=l1}
C {noconn.sym} -520 160 3 0 {name=l2}
C {lab_wire.sym} 300 -230 0 0 {name=p12 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 -130 0 0 {name=p13 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 -30 0 0 {name=p14 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 70 0 0 {name=p30 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 170 0 0 {name=p31 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 570 0 0 {name=p32 sig_type=std_logic lab=PSUP_LV}
C {blocks/not/not.sym} -770 -40 0 0 {name=x3}
C {lab_wire.sym} -820 -40 0 0 {name=p62 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -720 40 0 1 {name=p45 sig_type=std_logic lab=nCONF1}
C {blocks/not/not.sym} -770 40 0 0 {name=x4}
C {lab_wire.sym} -820 40 0 0 {name=p47 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -760 -80 0 1 {name=p48 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -780 -80 0 0 {name=p50 sig_type=std_logic lab=NSUP}
C {blocks/nand_2/nand_2.sym} -530 -120 0 0 {name=x5}
C {blocks/nand_2/nand_2.sym} -530 -40 0 0 {name=x6}
C {blocks/nand_2/nand_2.sym} -530 40 0 0 {name=x8}
C {lab_wire.sym} -470 40 0 1 {name=p52 sig_type=std_logic lab=nC1}
C {lab_wire.sym} -470 -40 0 1 {name=p49 sig_type=std_logic lab=nC2}
C {noconn.sym} -780 80 3 0 {name=l3}
C {noconn.sym} -760 80 3 0 {name=l4}
C {blocks/not/not.sym} -370 -120 0 0 {name=x9}
C {blocks/not/not.sym} -370 -40 0 0 {name=x10}
C {lab_wire.sym} -360 -160 0 1 {name=p64 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -380 -160 0 0 {name=p65 sig_type=std_logic lab=NSUP}
C {blocks/not/not.sym} -370 40 0 0 {name=x11}
C {noconn.sym} -380 160 3 0 {name=l7}
C {noconn.sym} -360 160 3 0 {name=l8}
C {lab_wire.sym} 300 270 0 0 {name=p19 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 370 0 0 {name=p20 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 470 0 0 {name=p21 sig_type=std_logic lab=PSUP_LV}
C {symbols/ppolyf_u_1k.sym} 320 570 0 0 {name=R10
W=1e-6
L=1e-3
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 320 470 0 0 {name=R3
W=1e-6
L=900e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 320 370 0 0 {name=R8
W=1e-6
L=90e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 320 270 0 0 {name=R7
W=1e-6
L=9e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 320 70 0 0 {name=R2
W=1e-6
L=9e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 320 -30 0 0 {name=R4
W=1e-6
L=90e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 320 -130 0 0 {name=R5
W=1e-6
L=900e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 320 -230 0 0 {name=R1
W=1e-6
L=1e-3
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {blocks/transmission_gate/transmission_gate.sym} 660 120 0 0 {name=x1}
C {blocks/transmission_gate/transmission_gate.sym} 660 20 0 0 {name=x2}
C {blocks/transmission_gate/transmission_gate.sym} 660 -80 0 0 {name=x7}
C {blocks/transmission_gate/transmission_gate.sym} 660 -180 0 0 {name=x12}
C {lab_wire.sym} -320 120 0 1 {name=p10 sig_type=std_logic lab=C0}
C {lab_wire.sym} -580 100 0 0 {name=p17 sig_type=std_logic lab=nCONF1}
C {blocks/nand_2/nand_2.sym} -530 120 0 0 {name=x13}
C {lab_wire.sym} -470 120 0 1 {name=p24 sig_type=std_logic lab=nC0}
C {blocks/not/not.sym} -370 120 0 0 {name=x14}
C {lab_wire.sym} -580 140 0 0 {name=p23 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -320 -120 0 1 {name=p18 sig_type=std_logic lab=C3}
C {lab_wire.sym} -470 -120 0 1 {name=p25 sig_type=std_logic lab=nC3}
