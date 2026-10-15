v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {1406k} 670 -330 0 0 0.2 0.2 {}
T {1055k} 670 -230 0 0 0.2 0.2 {}
T {333k} 670 180 0 0 0.2 0.2 {}
T {1Meg} 670 360 0 0 0.2 0.2 {}
T {333k} 670 70 0 0 0.2 0.2 {}
T {593k} 670 -30 0 0 0.2 0.2 {}
T {792k} 670 -130 0 0 0.2 0.2 {}
T {1876k} 670 -430 0 0 0.2 0.2 {}
N 800 410 800 430 {lab=bottom}
N 760 240 800 240 {lab=center}
N 800 -280 800 -240 {lab=#net1}
N 800 -380 800 -340 {lab=#net2}
N 800 -460 800 -440 {lab=top}
N 800 220 800 250 {lab=center}
N 760 430 800 430 {lab=bottom}
N 800 330 800 350 {lab=#net3}
N 760 -460 800 -460 {lab=top}
N 800 -260 970 -260 {lab=#net1}
N 970 -260 1120 -260 {lab=#net1}
N 970 -460 970 -450 {lab=top}
N 970 -370 970 -360 {lab=#net2}
N 800 -360 970 -360 {lab=#net2}
N 1120 -370 1120 -260 {lab=#net1}
N 800 120 800 160 {lab=#net4}
N 800 20 800 60 {lab=#net5}
N 800 -80 800 -40 {lab=#net6}
N 800 -180 800 -140 {lab=#net7}
N 800 -460 1120 -460 {lab=top}
N 1120 -460 1120 -450 {lab=top}
N 1270 -460 1270 -450 {lab=top}
N 1420 -370 1420 -260 {lab=#net6}
N 1420 -460 1420 -450 {lab=top}
N 1270 -370 1270 -160 {lab=#net7}
N 800 -160 1270 -160 {lab=#net7}
N 1420 -260 1420 -60 {lab=#net6}
N 800 -60 1420 -60 {lab=#net6}
N 1570 -460 1570 -450 {lab=top}
N 1720 -370 1720 -260 {lab=#net4}
N 1720 -460 1720 -450 {lab=top}
N 1570 -370 1570 -160 {lab=#net5}
N 1120 -460 1720 -460 {lab=top}
N 1570 -160 1570 40 {lab=#net5}
N 800 40 1570 40 {lab=#net5}
N 1720 -260 1720 140 {lab=#net4}
N 800 140 1720 140 {lab=#net4}
N 1870 -370 1870 -260 {lab=center}
N 1870 -460 1870 -450 {lab=top}
N 1720 -460 1870 -460 {lab=top}
N 1870 -260 1870 240 {lab=center}
N 810 240 1870 240 {lab=center}
N 800 240 810 240 {lab=center}
N -50 -240 0 -240 {lab=nC6}
N -50 -160 -5 -160 {lab=nC5}
N -5 -160 0 -160 {lab=nC5}
N -470 -80 -420 -80 {lab=CONF0}
N -470 0 -420 0 {lab=CONF1}
N -470 80 -425 80 {lab=CONF2}
N -425 80 -420 80 {lab=CONF2}
N -50 -80 -5 -80 {lab=nC4}
N -5 -80 0 -80 {lab=nC4}
N -50 0 0 0 {lab=nC3}
N -50 80 0 80 {lab=nC2}
N -50 160 -5 160 {lab=nC1}
N -5 160 0 160 {lab=nC1}
N -50 240 -5 240 {lab=C0}
N -5 240 0 240 {lab=C0}
C {iopin.sym} 760 -460 0 1 {name=p1 lab=top}
C {iopin.sym} 760 240 0 1 {name=p2 lab=center}
C {iopin.sym} 760 430 0 1 {name=p3 lab=bottom}
C {symbols/ppolyf_u_3k.sym} 800 -410 0 0 {name=R1
W=1e-6
L=625e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 800 -310 0 0 {name=R2
W=1e-6
L=395e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 800 190 0 0 {name=R3
W=1e-6
L=111e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 800 380 0 0 {name=R4
W=1e-6
L=333e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_wire.sym} 780 380 0 0 {name=p8 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 780 190 0 0 {name=p9 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 780 -310 0 0 {name=p10 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 780 -410 0 0 {name=p11 sig_type=std_logic lab=PSUP_LV}
C {ipin.sym} -560 -50 0 0 {name=p6 lab=PSUP_LV}
C {ipin.sym} -560 -30 0 0 {name=p7 lab=NSUP}
C {ipin.sym} -560 60 0 0 {name=p4 lab=CONF1}
C {ipin.sym} -560 40 0 0 {name=p5 lab=CONF2}
C {lab_wire.sym} -560 -30 0 1 {name=p12 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -560 60 0 1 {name=p15 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -560 -50 0 1 {name=p13 sig_type=std_logic lab=PSUP_LV}
C {ipin.sym} -560 80 0 0 {name=p14 lab=CONF0}
C {lab_wire.sym} -560 80 0 1 {name=p17 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -40 240 0 1 {name=p23 sig_type=std_logic lab=C0}
C {lab_wire.sym} -35 160 0 1 {name=p26 sig_type=std_logic lab=nC1}
C {lab_wire.sym} -35 80 0 1 {name=p31 sig_type=std_logic lab=nC2}
C {lab_wire.sym} -35 0 0 1 {name=p35 sig_type=std_logic lab=nC3}
C {blocks/transmission_gate/transmission_gate.sym} 800 290 1 0 {name=x4}
C {lab_wire.sym} 780 290 0 0 {name=p42 sig_type=std_logic lab=C0}
C {lab_wire.sym} 820 290 0 1 {name=p43 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 780 270 0 0 {name=p60 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 820 270 0 1 {name=p61 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 970 -410 1 0 {name=x1}
C {lab_wire.sym} 950 -410 0 0 {name=p65 sig_type=std_logic lab=C6}
C {lab_wire.sym} 990 -410 0 1 {name=p66 sig_type=std_logic lab=nC6}
C {lab_wire.sym} 950 -430 0 0 {name=p67 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 990 -430 0 1 {name=p68 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 1120 -410 1 0 {name=x2}
C {lab_wire.sym} 1100 -410 0 0 {name=p69 sig_type=std_logic lab=C5}
C {lab_wire.sym} 1140 -410 0 1 {name=p70 sig_type=std_logic lab=nC5}
C {lab_wire.sym} 1100 -430 0 0 {name=p71 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 1140 -430 0 1 {name=p72 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -560 40 0 1 {name=p58 sig_type=std_logic lab=CONF2}
C {symbols/ppolyf_u_3k.sym} 800 90 0 0 {name=R5
W=1e-6
L=148e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_wire.sym} 780 90 0 0 {name=p38 sig_type=std_logic lab=PSUP_LV}
C {symbols/ppolyf_u_3k.sym} 800 -10 0 0 {name=R6
W=1e-6
L=198e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_wire.sym} 780 -10 0 0 {name=p53 sig_type=std_logic lab=PSUP_LV}
C {symbols/ppolyf_u_3k.sym} 800 -110 0 0 {name=R7
W=1e-6
L=248e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_wire.sym} 780 -110 0 0 {name=p57 sig_type=std_logic lab=PSUP_LV}
C {symbols/ppolyf_u_3k.sym} 800 -210 0 0 {name=R8
W=1e-6
L=352e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_wire.sym} 780 -210 0 0 {name=p59 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 1270 -410 1 0 {name=x5}
C {lab_wire.sym} 1250 -410 0 0 {name=p62 sig_type=std_logic lab=C4}
C {lab_wire.sym} 1290 -410 0 1 {name=p63 sig_type=std_logic lab=nC4}
C {lab_wire.sym} 1250 -430 0 0 {name=p64 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 1290 -430 0 1 {name=p81 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 1420 -410 1 0 {name=x9}
C {lab_wire.sym} 1400 -410 0 0 {name=p82 sig_type=std_logic lab=C3}
C {lab_wire.sym} 1440 -410 0 1 {name=p83 sig_type=std_logic lab=nC3}
C {lab_wire.sym} 1400 -430 0 0 {name=p84 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 1440 -430 0 1 {name=p85 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 1570 -410 1 0 {name=x10}
C {lab_wire.sym} 1550 -410 0 0 {name=p86 sig_type=std_logic lab=C2}
C {lab_wire.sym} 1590 -410 0 1 {name=p87 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 1550 -430 0 0 {name=p88 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 1590 -430 0 1 {name=p89 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 1720 -410 1 0 {name=x11}
C {lab_wire.sym} 1700 -410 0 0 {name=p90 sig_type=std_logic lab=C1}
C {lab_wire.sym} 1740 -410 0 1 {name=p91 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 1700 -430 0 0 {name=p92 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 1740 -430 0 1 {name=p93 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -40 -80 0 1 {name=p94 sig_type=std_logic lab=nC4}
C {lab_wire.sym} -35 -160 0 1 {name=p98 sig_type=std_logic lab=nC5}
C {lab_wire.sym} -35 -240 0 1 {name=p102 sig_type=std_logic lab=nC6}
C {blocks/transmission_gate/transmission_gate.sym} 1870 -410 1 0 {name=x12}
C {lab_wire.sym} 1850 -410 0 0 {name=p110 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 1890 -410 0 1 {name=p111 sig_type=std_logic lab=C0}
C {lab_wire.sym} 1850 -430 0 0 {name=p112 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 1890 -430 0 1 {name=p113 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -160 220 0 0 {name=p39 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -160 240 0 0 {name=p40 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -160 260 0 0 {name=p41 sig_type=std_logic lab=nCONF2}
C {lab_wire.sym} -100 -280 0 1 {name=p73 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -120 -280 0 0 {name=p75 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -160 180 0 0 {name=p79 sig_type=std_logic lab=nCONF2}
C {lab_wire.sym} 100 160 0 1 {name=p80 sig_type=std_logic lab=C1}
C {lab_wire.sym} -160 100 0 0 {name=p107 sig_type=std_logic lab=nCONF2}
C {lab_wire.sym} 100 80 0 1 {name=p108 sig_type=std_logic lab=C2}
C {lab_wire.sym} -160 20 0 0 {name=p115 sig_type=std_logic lab=nCONF2}
C {lab_wire.sym} 100 0 0 1 {name=p116 sig_type=std_logic lab=C3}
C {lab_wire.sym} -160 -60 0 0 {name=p55 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} 100 -80 0 1 {name=p117 sig_type=std_logic lab=C4}
C {lab_wire.sym} -160 -140 0 0 {name=p118 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -160 -220 0 0 {name=p119 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} 100 240 0 1 {name=p44 sig_type=std_logic lab=nC0}
C {lab_wire.sym} -160 -100 0 0 {name=p121 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -160 -80 0 0 {name=p122 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -160 140 0 0 {name=p123 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -160 160 0 0 {name=p124 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -160 80 0 0 {name=p125 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} -160 60 0 0 {name=p126 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -160 -20 0 0 {name=p127 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -160 0 0 0 {name=p128 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} -160 -180 0 0 {name=p135 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -160 -160 0 0 {name=p136 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -160 -240 0 0 {name=p137 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} -160 -260 0 0 {name=p138 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} 100 -160 0 1 {name=p141 sig_type=std_logic lab=C5}
C {lab_wire.sym} 100 -240 0 1 {name=p142 sig_type=std_logic lab=C6}
C {lab_wire.sym} -320 -80 0 1 {name=p46 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -420 -80 0 0 {name=p16 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -320 0 0 1 {name=p45 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -420 0 0 0 {name=p47 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -360 -120 0 1 {name=p48 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -380 -120 0 0 {name=p50 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -320 80 0 1 {name=p18 sig_type=std_logic lab=nCONF2}
C {lab_wire.sym} -420 80 0 0 {name=p19 sig_type=std_logic lab=CONF2}
C {blocks/nand_3/nand_3.sym} -110 -240 0 0 {name=x13}
C {blocks/nand_3/nand_3.sym} -110 -160 0 0 {name=x14}
C {blocks/nand_3/nand_3.sym} -110 -80 0 0 {name=x15}
C {blocks/nand_3/nand_3.sym} -110 0 0 0 {name=x16}
C {blocks/nand_3/nand_3.sym} -110 80 0 0 {name=x17}
C {blocks/nand_3/nand_3.sym} -110 160 0 0 {name=x18}
C {blocks/nand_3/nand_3.sym} -110 240 0 0 {name=x19}
C {noconn.sym} -120 280 1 1 {name=l1}
C {noconn.sym} -100 280 1 1 {name=l2}
C {blocks/not/not.sym} 50 -240 0 0 {name=x21}
C {blocks/not/not.sym} 50 -160 0 0 {name=x22}
C {noconn.sym} -380 120 3 0 {name=l5}
C {noconn.sym} -360 120 3 0 {name=l6}
C {blocks/not/not.sym} 50 -80 0 0 {name=x26}
C {blocks/not/not.sym} 50 0 0 0 {name=x27}
C {blocks/not/not.sym} 50 80 0 0 {name=x28}
C {blocks/not/not.sym} 50 160 0 0 {name=x29}
C {blocks/not/not.sym} 50 240 0 0 {name=x30}
C {lab_wire.sym} 60 -280 0 1 {name=p20 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 40 -280 0 0 {name=p21 sig_type=std_logic lab=NSUP}
C {noconn.sym} 40 280 1 1 {name=l7}
C {noconn.sym} 60 280 1 1 {name=l8}
C {blocks/not/not.sym} -370 -80 0 0 {name=x3}
C {blocks/not/not.sym} -370 0 0 0 {name=x6}
C {blocks/not/not.sym} -370 80 0 0 {name=x7}
