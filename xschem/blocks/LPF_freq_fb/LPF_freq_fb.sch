v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {20pF} 670 -200 0 0 0.4 0.4 {}
T {20pF} 1150 80 0 0 0.4 0.4 {}
T {70} 710 95 1 0 0.4 0.4 {}
T {630} 600 100 1 0 0.4 0.4 {}
T {6300} 500 95 1 0 0.4 0.4 {}
T {20pF} 670 520 2 1 0.4 0.4 {}
N 740 -240 760 -240 {lab=FB+}
N 740 -240 740 -220 {lab=FB+}
N 1020 0 1040 0 {lab=OUT+}
N 920 0 960 0 {lab=#net1}
N 820 0 860 0 {lab=#net2}
N 720 0 760 0 {lab=#net3}
N 620 0 660 0 {lab=#net4}
N 520 0 560 0 {lab=#net5}
N 1040 0 1040 60 {lab=OUT+}
N 1040 0 1060 0 {lab=OUT+}
N 440 0 460 0 {lab=IN+}
N 420 0 440 0 {lab=IN+}
N 440 -270 440 0 {lab=IN+}
N 440 -140 450 -140 {lab=IN+}
N 440 -400 440 -270 {lab=IN+}
N 1040 -400 1040 0 {lab=OUT+}
N 440 -400 700 -400 {lab=IN+}
N 780 -400 1040 -400 {lab=OUT+}
N 440 -290 450 -290 {lab=IN+}
N 940 -140 950 -140 {lab=#net1}
N 940 -140 940 0 {lab=#net1}
N 1030 -140 1040 -140 {lab=OUT+}
N 840 -270 840 0 {lab=#net2}
N 1030 -290 1040 -290 {lab=OUT+}
N 840 -290 950 -290 {lab=#net2}
N 840 -290 840 -270 {lab=#net2}
N 440 -140 450 -140 {lab=IN+}
N 440 -290 450 -290 {lab=IN+}
N 740 -160 740 -140 {lab=#net6}
N 740 -140 740 -120 {lab=#net6}
N 740 -40 740 0 {lab=#net3}
N 530 -140 540 -140 {lab=#net5}
N 540 -140 540 0 {lab=#net5}
N 640 -290 640 0 {lab=#net4}
N 620 -290 640 -290 {lab=#net4}
N 530 -290 620 -290 {lab=#net4}
N 1040 60 1040 100 {lab=OUT+}
N 1040 180 1040 200 {lab=#net7}
N 60 0 110 0 {lab=nC1}
N 60 80 105 80 {lab=nC2}
N 105 80 110 80 {lab=nC2}
N -360 -40 -310 -40 {lab=CONF0}
N -360 40 -310 40 {lab=CONF1}
N 60 -80 110 -80 {lab=nC0}
N 740 560 760 560 {lab=FB}
N 740 540 740 560 {lab=FB}
N 1020 320 1040 320 {lab=OUT-}
N 920 320 960 320 {lab=#net8}
N 820 320 860 320 {lab=#net9}
N 720 320 760 320 {lab=#net10}
N 620 320 660 320 {lab=#net11}
N 520 320 560 320 {lab=#net12}
N 1040 260 1040 320 {lab=OUT-}
N 1040 320 1060 320 {lab=OUT-}
N 440 320 460 320 {lab=IN-}
N 420 320 440 320 {lab=IN-}
N 440 320 440 590 {lab=IN-}
N 440 460 450 460 {lab=IN-}
N 440 590 440 720 {lab=IN-}
N 1040 320 1040 720 {lab=OUT-}
N 440 720 700 720 {lab=IN-}
N 780 720 1040 720 {lab=OUT-}
N 440 610 450 610 {lab=IN-}
N 940 460 950 460 {lab=#net8}
N 940 320 940 460 {lab=#net8}
N 1030 460 1040 460 {lab=OUT-}
N 840 320 840 590 {lab=#net9}
N 1030 610 1040 610 {lab=OUT-}
N 840 610 950 610 {lab=#net9}
N 840 590 840 610 {lab=#net9}
N 440 460 450 460 {lab=IN-}
N 440 610 450 610 {lab=IN-}
N 740 460 740 480 {lab=#net13}
N 740 440 740 460 {lab=#net13}
N 740 320 740 360 {lab=#net10}
N 530 460 540 460 {lab=#net12}
N 540 320 540 460 {lab=#net12}
N 640 320 640 610 {lab=#net11}
N 620 610 640 610 {lab=#net11}
N 530 610 620 610 {lab=#net11}
C {ipin.sym} -480 -60 0 0 {name=p6 lab=PSUP_LV}
C {ipin.sym} -480 -40 0 0 {name=p7 lab=NSUP}
C {ipin.sym} -480 40 0 0 {name=p4 lab=CONF1}
C {lab_wire.sym} -480 -40 0 1 {name=p12 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -480 40 0 1 {name=p15 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -480 -60 0 1 {name=p13 sig_type=std_logic lab=PSUP_LV}
C {ipin.sym} -480 60 0 0 {name=p14 lab=CONF0}
C {lab_wire.sym} -480 60 0 1 {name=p17 sig_type=std_logic lab=CONF0}
C {iopin.sym} 420 0 0 1 {name=p1 lab=IN+}
C {iopin.sym} 1060 0 0 0 {name=p2 lab=OUT+}
C {iopin.sym} 760 -240 0 0 {name=p3 lab=FB+}
C {symbols/cap_mim_2f0fF.sym} 740 -190 0 0 {name=C1
W=274e-6
L=274e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 1040 230 0 0 {name=C2
W=194e-6
L=194e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {blocks/transmission_gate/transmission_gate.sym} 740 -400 0 0 {name=x3}
C {blocks/transmission_gate/transmission_gate.sym} 990 -140 0 1 {name=x4}
C {blocks/transmission_gate/transmission_gate.sym} 990 -290 0 1 {name=x5}
C {lab_wire.sym} 1010 -120 1 1 {name=p11 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 1010 -160 1 0 {name=p16 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 1010 -270 1 1 {name=p38 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 1010 -310 1 0 {name=p39 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 720 -380 3 0 {name=p44 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 720 -420 3 1 {name=p46 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 720 -100 0 0 {name=p47 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 760 -100 0 1 {name=p48 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 490 -140 0 0 {name=x1}
C {blocks/transmission_gate/transmission_gate.sym} 490 -290 0 0 {name=x2}
C {lab_wire.sym} 470 -120 3 0 {name=p9 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 470 -160 3 1 {name=p10 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 470 -270 3 0 {name=p40 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 1020 120 0 0 {name=p41 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 1060 120 0 1 {name=p42 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 490 -120 3 0 {name=p26 sig_type=std_logic lab=C2}
C {lab_wire.sym} 490 -160 3 1 {name=p43 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 760 -80 0 1 {name=p35 sig_type=std_logic lab=C0}
C {lab_wire.sym} 720 -80 0 0 {name=p37 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 490 -270 1 1 {name=p67 sig_type=std_logic lab=C1}
C {lab_wire.sym} 990 -270 3 0 {name=p68 sig_type=std_logic lab=C1}
C {lab_wire.sym} 490 -310 1 0 {name=p69 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 990 -310 3 1 {name=p70 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 590 -20 3 1 {name=p72 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 690 -20 3 1 {name=p73 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 790 -20 1 0 {name=p74 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 490 -20 3 1 {name=p75 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 890 -20 1 0 {name=p76 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 990 -20 1 0 {name=p77 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 470 -310 3 1 {name=p71 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 740 -80 1 0 {name=x6}
C {blocks/transmission_gate/transmission_gate.sym} 1040 140 1 0 {name=x8}
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
C {symbols/ppolyf_u_1k.sym} 490 0 1 0 {name=R1
W=1e-6
L=6300e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 590 0 1 0 {name=R2
W=1e-6
L=630e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 690 0 1 0 {name=R3
W=1e-6
L=70e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 790 0 1 0 {name=R4
W=1e-6
L=70e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 890 0 1 0 {name=R5
W=1e-6
L=630e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 990 0 1 0 {name=R6
W=1e-6
L=6300e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 990 -120 1 1 {name=p5 sig_type=std_logic lab=C2}
C {lab_wire.sym} 990 -160 1 0 {name=p8 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 740 -420 3 1 {name=p18 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 740 -380 3 0 {name=p19 sig_type=std_logic lab=C0}
C {lab_wire.sym} 1060 140 0 1 {name=p20 sig_type=std_logic lab=C0}
C {lab_wire.sym} 1020 140 0 0 {name=p21 sig_type=std_logic lab=nC0}
C {iopin.sym} 420 320 2 0 {name=p22 lab=IN-}
C {iopin.sym} 1060 320 2 1 {name=p23 lab=OUT-}
C {iopin.sym} 760 560 2 1 {name=p24 lab=FB-}
C {symbols/cap_mim_2f0fF.sym} 740 510 2 1 {name=C3
W=274e-6
L=274e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {blocks/transmission_gate/transmission_gate.sym} 740 720 2 1 {name=x7}
C {blocks/transmission_gate/transmission_gate.sym} 990 460 2 0 {name=x9}
C {blocks/transmission_gate/transmission_gate.sym} 990 610 2 0 {name=x10}
C {lab_wire.sym} 1010 440 1 0 {name=p25 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 1010 480 1 1 {name=p27 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 1010 590 1 0 {name=p28 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 1010 630 1 1 {name=p29 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 720 700 3 1 {name=p30 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 720 740 3 0 {name=p31 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 720 420 2 1 {name=p32 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 760 420 2 0 {name=p33 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 490 460 2 1 {name=x13}
C {blocks/transmission_gate/transmission_gate.sym} 490 610 2 1 {name=x17}
C {lab_wire.sym} 470 440 3 1 {name=p34 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 470 480 3 0 {name=p36 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 470 590 3 1 {name=p45 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 490 440 3 1 {name=p49 sig_type=std_logic lab=C2}
C {lab_wire.sym} 490 480 3 0 {name=p50 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 760 400 2 0 {name=p51 sig_type=std_logic lab=C0}
C {lab_wire.sym} 720 400 2 1 {name=p52 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 490 590 1 0 {name=p53 sig_type=std_logic lab=C1}
C {lab_wire.sym} 990 590 3 1 {name=p54 sig_type=std_logic lab=C1}
C {lab_wire.sym} 490 630 1 1 {name=p55 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 990 630 3 0 {name=p56 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 590 340 3 0 {name=p57 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 690 340 3 0 {name=p58 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 790 340 1 1 {name=p59 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 490 340 3 0 {name=p60 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 890 340 1 1 {name=p61 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 990 340 1 1 {name=p62 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 470 630 3 0 {name=p63 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate.sym} 740 400 1 1 {name=x18}
C {symbols/ppolyf_u_1k.sym} 490 320 1 1 {name=R7
W=1e-6
L=6300e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 590 320 1 1 {name=R8
W=1e-6
L=630e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 690 320 1 1 {name=R9
W=1e-6
L=70e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 790 320 1 1 {name=R10
W=1e-6
L=70e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 890 320 1 1 {name=R11
W=1e-6
L=630e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 990 320 1 1 {name=R12
W=1e-6
L=6300e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 990 440 1 0 {name=p64 sig_type=std_logic lab=C2}
C {lab_wire.sym} 990 480 1 1 {name=p65 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 740 740 3 0 {name=p66 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 740 700 3 1 {name=p79 sig_type=std_logic lab=C0}
