v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {125pF} 600 -360 0 0 0.4 0.4 {}
T {200pF} 1090 60 0 0 0.4 0.4 {}
T {70} 640 -65 1 0 0.4 0.4 {}
T {630} 530 -60 1 0 0.4 0.4 {}
T {6300} 430 -65 1 0 0.4 0.4 {}
T {125pF} 600 360 2 1 0.4 0.4 {}
N 670 -400 690 -400 {lab=FB+}
N 670 -400 670 -380 {lab=FB+}
N 950 -160 970 -160 {lab=OUT+}
N 850 -160 890 -160 {lab=#net1}
N 750 -160 790 -160 {lab=#net2}
N 650 -160 690 -160 {lab=#net3}
N 550 -160 590 -160 {lab=#net4}
N 450 -160 490 -160 {lab=#net5}
N 970 -160 970 -100 {lab=OUT+}
N 970 -160 990 -160 {lab=OUT+}
N 370 -160 390 -160 {lab=IN+}
N 350 -160 370 -160 {lab=IN+}
N 370 -430 370 -160 {lab=IN+}
N 370 -300 380 -300 {lab=IN+}
N 370 -560 370 -430 {lab=IN+}
N 970 -560 970 -160 {lab=OUT+}
N 370 -560 630 -560 {lab=IN+}
N 710 -560 970 -560 {lab=OUT+}
N 370 -450 380 -450 {lab=IN+}
N 870 -300 880 -300 {lab=#net1}
N 870 -300 870 -160 {lab=#net1}
N 960 -300 970 -300 {lab=OUT+}
N 770 -430 770 -160 {lab=#net2}
N 960 -450 970 -450 {lab=OUT+}
N 770 -450 880 -450 {lab=#net2}
N 770 -450 770 -430 {lab=#net2}
N 370 -300 380 -300 {lab=IN+}
N 370 -450 380 -450 {lab=IN+}
N 670 -320 670 -300 {lab=#net6}
N 670 -300 670 -280 {lab=#net6}
N 670 -200 670 -160 {lab=#net3}
N 460 -300 470 -300 {lab=#net5}
N 470 -300 470 -160 {lab=#net5}
N 570 -450 570 -160 {lab=#net4}
N 550 -450 570 -450 {lab=#net4}
N 460 -450 550 -450 {lab=#net4}
N 970 -100 970 -60 {lab=OUT+}
N 970 20 970 40 {lab=#net7}
N 60 0 110 0 {lab=nC1}
N 60 80 105 80 {lab=nC2}
N 105 80 110 80 {lab=nC2}
N -360 -40 -310 -40 {lab=CONF0}
N -360 40 -310 40 {lab=CONF1}
N 60 -80 110 -80 {lab=nC0}
N 670 400 690 400 {lab=FB-}
N 670 380 670 400 {lab=FB-}
N 950 160 970 160 {lab=OUT-}
N 850 160 890 160 {lab=#net8}
N 750 160 790 160 {lab=#net9}
N 650 160 690 160 {lab=#net10}
N 550 160 590 160 {lab=#net11}
N 450 160 490 160 {lab=#net12}
N 970 100 970 160 {lab=OUT-}
N 970 160 990 160 {lab=OUT-}
N 370 160 390 160 {lab=IN-}
N 350 160 370 160 {lab=IN-}
N 370 160 370 430 {lab=IN-}
N 370 300 380 300 {lab=IN-}
N 370 430 370 560 {lab=IN-}
N 970 160 970 560 {lab=OUT-}
N 370 560 630 560 {lab=IN-}
N 710 560 970 560 {lab=OUT-}
N 370 450 380 450 {lab=IN-}
N 870 300 880 300 {lab=#net8}
N 870 160 870 300 {lab=#net8}
N 960 300 970 300 {lab=OUT-}
N 770 160 770 430 {lab=#net9}
N 960 450 970 450 {lab=OUT-}
N 770 450 880 450 {lab=#net9}
N 770 430 770 450 {lab=#net9}
N 370 300 380 300 {lab=IN-}
N 370 450 380 450 {lab=IN-}
N 670 300 670 320 {lab=#net13}
N 670 280 670 300 {lab=#net13}
N 670 160 670 200 {lab=#net10}
N 460 300 470 300 {lab=#net12}
N 470 160 470 300 {lab=#net12}
N 570 160 570 450 {lab=#net11}
N 550 450 570 450 {lab=#net11}
N 460 450 550 450 {lab=#net11}
C {ipin.sym} -480 -60 0 0 {name=p6 lab=PSUP_LV}
C {ipin.sym} -480 -40 0 0 {name=p7 lab=NSUP}
C {ipin.sym} -480 40 0 0 {name=p4 lab=CONF1}
C {lab_wire.sym} -480 -40 0 1 {name=p12 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -480 40 0 1 {name=p15 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -480 -60 0 1 {name=p13 sig_type=std_logic lab=PSUP_LV}
C {ipin.sym} -480 60 0 0 {name=p14 lab=CONF0}
C {lab_wire.sym} -480 60 0 1 {name=p17 sig_type=std_logic lab=CONF0}
C {iopin.sym} 350 -160 0 1 {name=p1 lab=IN+}
C {iopin.sym} 990 -160 0 0 {name=p2 lab=OUT+}
C {iopin.sym} 690 -400 0 0 {name=p3 lab=FB+}
C {symbols/cap_mim_2f0fF.sym} 670 -350 0 0 {name=C1
W=250e-6
L=250e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 970 70 0 0 {name=C2
W=316e-6
L=316e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {blocks/transmission_gate/transmission_gate.sym} 670 -560 0 0 {name=x3}
C {blocks/transmission_gate/transmission_gate.sym} 920 -300 0 1 {name=x4}
C {blocks/transmission_gate/transmission_gate.sym} 920 -450 0 1 {name=x5}
C {lab_wire.sym} 940 -280 1 1 {name=p11 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 940 -320 1 0 {name=p16 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 940 -430 1 1 {name=p38 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 940 -470 1 0 {name=p39 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 650 -540 3 0 {name=p44 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 650 -580 3 1 {name=p46 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 650 -260 0 0 {name=p47 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 690 -260 0 1 {name=p48 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 420 -300 0 0 {name=x1}
C {blocks/transmission_gate/transmission_gate.sym} 420 -450 0 0 {name=x2}
C {lab_wire.sym} 400 -280 3 0 {name=p9 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 400 -320 3 1 {name=p10 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 400 -430 3 0 {name=p40 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 950 -40 0 0 {name=p41 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 990 -40 0 1 {name=p42 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 420 -280 3 0 {name=p26 sig_type=std_logic lab=C2}
C {lab_wire.sym} 420 -320 3 1 {name=p43 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 690 -240 0 1 {name=p35 sig_type=std_logic lab=C0}
C {lab_wire.sym} 650 -240 0 0 {name=p37 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 420 -430 1 1 {name=p67 sig_type=std_logic lab=C1}
C {lab_wire.sym} 920 -430 3 0 {name=p68 sig_type=std_logic lab=C1}
C {lab_wire.sym} 420 -470 1 0 {name=p69 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 920 -470 3 1 {name=p70 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 520 -180 3 1 {name=p72 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 620 -180 3 1 {name=p73 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 720 -180 1 0 {name=p74 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 420 -180 3 1 {name=p75 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 820 -180 1 0 {name=p76 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 920 -180 1 0 {name=p77 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 400 -470 3 1 {name=p71 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 670 -240 1 0 {name=x6}
C {blocks/transmission_gate/transmission_gate.sym} 970 -20 1 0 {name=x8}
C {lab_wire.sym} 210 -80 0 1 {name=p78 sig_type=std_logic lab=C0}
C {lab_wire.sym} 75 80 0 1 {name=p80 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 75 0 0 1 {name=p81 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 10 -120 0 1 {name=p82 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -10 -120 0 0 {name=p83 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 70 -80 0 1 {name=p85 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 210 80 0 1 {name=p141 sig_type=std_logic lab=C2}
C {lab_wire.sym} 210 0 0 1 {name=p142 sig_type=std_logic lab=C1}
C {lab_wire.sym} -210 -40 0 1 {name=p86 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -310 -40 0 0 {name=p129 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -210 40 0 1 {name=p130 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -310 40 0 0 {name=p131 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -250 -80 0 1 {name=p132 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -270 -80 0 0 {name=p133 sig_type=std_logic lab=NSUP}
C {blocks/not/not.sym} 160 0 0 0 {name=x11}
C {blocks/not/not.sym} 160 80 0 0 {name=x12}
C {lab_wire.sym} 170 -120 0 1 {name=p140 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 150 -120 0 0 {name=p143 sig_type=std_logic lab=NSUP}
C {blocks/not/not.sym} -260 -40 0 0 {name=x31}
C {blocks/not/not.sym} -260 40 0 0 {name=x32}
C {blocks/not/not.sym} 160 -80 0 0 {name=x35}
C {blocks/nand_2/nand_2.sym} 0 -80 0 0 {name=x14}
C {blocks/nand_2/nand_2.sym} 0 0 0 0 {name=x15}
C {blocks/nand_2/nand_2.sym} 0 80 0 0 {name=x16}
C {lab_wire.sym} -50 60 0 0 {name=p89 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -50 100 0 0 {name=p90 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -50 -20 0 0 {name=p91 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -50 20 0 0 {name=p92 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -50 -60 0 0 {name=p93 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -50 -100 0 0 {name=p94 sig_type=std_logic lab=CONF0}
C {symbols/ppolyf_u_1k.sym} 420 -160 1 0 {name=R1
W=1e-6
L=2387e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 520 -160 1 0 {name=R2
W=1e-6
L=238.7e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 620 -160 1 0 {name=R3
W=1e-6
L=26.53e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 720 -160 1 0 {name=R4
W=1e-6
L=85.26e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 820 -160 1 0 {name=R5
W=1e-6
L=767.3e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 920 -160 1 0 {name=R6
W=1e-6
L=7673e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 920 -280 1 1 {name=p5 sig_type=std_logic lab=C2}
C {lab_wire.sym} 920 -320 1 0 {name=p8 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 670 -580 3 1 {name=p18 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 670 -540 3 0 {name=p19 sig_type=std_logic lab=C0}
C {lab_wire.sym} 990 -20 0 1 {name=p20 sig_type=std_logic lab=C0}
C {lab_wire.sym} 950 -20 0 0 {name=p21 sig_type=std_logic lab=nC0}
C {iopin.sym} 350 160 2 0 {name=p22 lab=IN-}
C {iopin.sym} 990 160 2 1 {name=p23 lab=OUT-}
C {iopin.sym} 690 400 2 1 {name=p24 lab=FB-}
C {symbols/cap_mim_2f0fF.sym} 670 350 2 1 {name=C3
W=250e-6
L=250e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {blocks/transmission_gate/transmission_gate.sym} 670 560 2 1 {name=x7}
C {blocks/transmission_gate/transmission_gate.sym} 920 300 2 0 {name=x9}
C {blocks/transmission_gate/transmission_gate.sym} 920 450 2 0 {name=x10}
C {lab_wire.sym} 940 280 1 0 {name=p25 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 940 320 1 1 {name=p27 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 940 430 1 0 {name=p28 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 940 470 1 1 {name=p29 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 650 540 3 1 {name=p30 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 650 580 3 0 {name=p31 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 650 260 2 1 {name=p32 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 690 260 2 0 {name=p33 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 420 300 2 1 {name=x13}
C {blocks/transmission_gate/transmission_gate.sym} 420 450 2 1 {name=x17}
C {lab_wire.sym} 400 280 3 1 {name=p34 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 400 320 3 0 {name=p36 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 400 430 3 1 {name=p45 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 420 280 3 1 {name=p49 sig_type=std_logic lab=C2}
C {lab_wire.sym} 420 320 3 0 {name=p50 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 690 240 2 0 {name=p51 sig_type=std_logic lab=C0}
C {lab_wire.sym} 650 240 2 1 {name=p52 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 420 430 1 0 {name=p53 sig_type=std_logic lab=C1}
C {lab_wire.sym} 920 430 3 1 {name=p54 sig_type=std_logic lab=C1}
C {lab_wire.sym} 420 470 1 1 {name=p55 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 920 470 3 0 {name=p56 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 520 180 3 0 {name=p57 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 620 180 3 0 {name=p58 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 720 180 1 1 {name=p59 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 420 180 3 0 {name=p60 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 820 180 1 1 {name=p61 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 920 180 1 1 {name=p62 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 400 470 3 0 {name=p63 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 670 240 1 1 {name=x18}
C {lab_wire.sym} 920 280 1 0 {name=p64 sig_type=std_logic lab=C2}
C {lab_wire.sym} 920 320 1 1 {name=p65 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 670 580 3 0 {name=p66 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 670 540 3 1 {name=p79 sig_type=std_logic lab=C0}
C {symbols/ppolyf_u_1k.sym} 420 160 1 1 {name=R7
W=1e-6
L=2387e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 520 160 1 1 {name=R8
W=1e-6
L=238.7e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 620 160 1 1 {name=R9
W=1e-6
L=23.87e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 720 160 1 1 {name=R10
W=1e-6
L=85.26e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 820 160 1 1 {name=R11
W=1e-6
L=767.3e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 920 160 1 1 {name=R12
W=1e-6
L=7673e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
