v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 310 260 330 {lab=bottom}
N 240 -320 260 -320 {lab=top}
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
N -50 240 -5 240 {lab=nC0}
N -5 240 0 240 {lab=nC0}
N 260 -320 380 -320 {lab=top}
N 240 330 260 330 {lab=bottom}
N 260 -240 380 -240 {lab=TAP_1}
N -50 -320 0 -320 {lab=nC7}
N 260 -320 260 -310 {lab=top}
N 260 -250 260 -230 {lab=TAP_1}
N 260 -170 260 -150 {lab=TAP_2}
N 260 240 380 240 {lab=TAP_7}
N 260 230 260 250 {lab=TAP_7}
N 260 160 380 160 {lab=TAP_6}
N 260 150 260 170 {lab=TAP_6}
N 260 80 380 80 {lab=TAP_5}
N 260 70 260 90 {lab=TAP_5}
N 260 0 380 0 {lab=TAP_4}
N 260 -10 260 10 {lab=TAP_4}
N 260 -80 380 -80 {lab=TAP_3}
N 260 -90 260 -70 {lab=TAP_3}
N 260 -160 380 -160 {lab=TAP_2}
N 460 -320 520 -320 {lab=center}
N 520 -320 520 240 {lab=center}
N 460 240 520 240 {lab=center}
N 460 160 520 160 {lab=center}
N 460 80 520 80 {lab=center}
N 460 0 520 0 {lab=center}
N 460 -80 520 -80 {lab=center}
N 460 -160 520 -160 {lab=center}
N 460 -240 520 -240 {lab=center}
N 520 0 560 0 {lab=center}
C {iopin.sym} 240 -320 0 1 {name=p1 lab=top}
C {iopin.sym} 555 0 0 0 {name=p2 lab=center}
C {iopin.sym} 240 330 0 1 {name=p3 lab=bottom}
C {lab_wire.sym} 240 280 0 0 {name=p8 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 240 120 0 0 {name=p9 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 240 -280 0 0 {name=p10 sig_type=std_logic lab=PSUP_LV}
C {ipin.sym} -560 -50 0 0 {name=p6 lab=PSUP_LV}
C {ipin.sym} -560 -30 0 0 {name=p7 lab=NSUP}
C {ipin.sym} -560 60 0 0 {name=p4 lab=CONF1}
C {ipin.sym} -560 40 0 0 {name=p5 lab=CONF2}
C {lab_wire.sym} -560 -30 0 1 {name=p12 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -560 60 0 1 {name=p15 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -560 -50 0 1 {name=p13 sig_type=std_logic lab=PSUP_LV}
C {ipin.sym} -560 80 0 0 {name=p14 lab=CONF0}
C {lab_wire.sym} -560 80 0 1 {name=p17 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} 100 240 0 1 {name=p23 sig_type=std_logic lab=C0}
C {lab_wire.sym} -35 160 0 1 {name=p26 sig_type=std_logic lab=nC1}
C {lab_wire.sym} -35 80 0 1 {name=p31 sig_type=std_logic lab=nC2}
C {lab_wire.sym} -35 0 0 1 {name=p35 sig_type=std_logic lab=nC3}
C {lab_wire.sym} -560 40 0 1 {name=p58 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} 240 40 0 0 {name=p38 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 240 -40 0 0 {name=p53 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 240 -120 0 0 {name=p57 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 240 -200 0 0 {name=p59 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -30 -80 0 1 {name=p94 sig_type=std_logic lab=nC4}
C {lab_wire.sym} -35 -160 0 1 {name=p98 sig_type=std_logic lab=nC5}
C {lab_wire.sym} -35 -240 0 1 {name=p102 sig_type=std_logic lab=nC6}
C {lab_wire.sym} -160 220 0 0 {name=p39 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -160 240 0 0 {name=p40 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -160 260 0 0 {name=p41 sig_type=std_logic lab=nCONF2}
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
C {lab_wire.sym} -30 240 0 1 {name=p44 sig_type=std_logic lab=nC0}
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
C {noconn.sym} 40 280 1 1 {name=l7}
C {noconn.sym} 60 280 1 1 {name=l8}
C {blocks/not/not.sym} -370 -80 0 0 {name=x3}
C {blocks/not/not.sym} -370 0 0 0 {name=x6}
C {blocks/not/not.sym} -370 80 0 0 {name=x7}
C {lab_wire.sym} -35 -320 0 1 {name=p37 sig_type=std_logic lab=nC7}
C {lab_wire.sym} -100 -360 0 1 {name=p42 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -120 -360 0 0 {name=p43 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -160 -320 0 0 {name=p49 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} 100 -320 0 1 {name=p52 sig_type=std_logic lab=C7}
C {blocks/nand_3/nand_3.sym} -110 -320 0 0 {name=x4}
C {blocks/not/not.sym} 50 -320 0 0 {name=x8}
C {lab_wire.sym} 60 -360 0 1 {name=p54 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 40 -360 0 0 {name=p56 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -160 -340 0 0 {name=p20 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -160 -300 0 0 {name=p21 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} 240 200 0 0 {name=p71 sig_type=std_logic lab=PSUP_LV}
C {blocks/transmission_gate/transmission_gate_alt.sym} 420 -320 0 0 {name=x1}
C {blocks/transmission_gate/transmission_gate_alt.sym} 420 -240 0 0 {name=x2}
C {blocks/transmission_gate/transmission_gate_alt.sym} 420 -160 0 0 {name=x5}
C {blocks/transmission_gate/transmission_gate_alt.sym} 420 -80 0 0 {name=x9}
C {blocks/transmission_gate/transmission_gate_alt.sym} 420 0 0 0 {name=x10}
C {blocks/transmission_gate/transmission_gate_alt.sym} 420 80 0 0 {name=x11}
C {blocks/transmission_gate/transmission_gate_alt.sym} 420 160 0 0 {name=x12}
C {blocks/transmission_gate/transmission_gate_alt.sym} 420 240 0 0 {name=x20}
C {lab_wire.sym} 430 -360 0 1 {name=p11 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 410 -360 0 0 {name=p22 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 460 -340 0 1 {name=p24 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 460 -260 0 1 {name=p25 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 460 -180 0 1 {name=p27 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 460 -100 0 1 {name=p28 sig_type=std_logic lab=nC3}
C {lab_wire.sym} 460 -20 0 1 {name=p29 sig_type=std_logic lab=nC4}
C {lab_wire.sym} 460 60 0 1 {name=p30 sig_type=std_logic lab=nC5}
C {lab_wire.sym} 460 140 0 1 {name=p32 sig_type=std_logic lab=nC6}
C {lab_wire.sym} 460 220 0 1 {name=p33 sig_type=std_logic lab=nC7}
C {lab_wire.sym} 460 -300 0 1 {name=p34 sig_type=std_logic lab=C0}
C {lab_wire.sym} 460 -220 0 1 {name=p36 sig_type=std_logic lab=C1}
C {lab_wire.sym} 460 -140 0 1 {name=p51 sig_type=std_logic lab=C2}
C {lab_wire.sym} 460 -60 0 1 {name=p60 sig_type=std_logic lab=C3}
C {lab_wire.sym} 460 20 0 1 {name=p61 sig_type=std_logic lab=C4}
C {lab_wire.sym} 460 100 0 1 {name=p62 sig_type=std_logic lab=C5}
C {lab_wire.sym} 460 180 0 1 {name=p63 sig_type=std_logic lab=C6}
C {lab_wire.sym} 460 260 0 1 {name=p64 sig_type=std_logic lab=C7}
C {lab_wire.sym} 260 -240 0 0 {name=p65 sig_type=std_logic lab=TAP_1}
C {lab_wire.sym} 260 -160 0 0 {name=p66 sig_type=std_logic lab=TAP_2}
C {lab_wire.sym} 260 -80 0 0 {name=p67 sig_type=std_logic lab=TAP_3}
C {lab_wire.sym} 260 0 0 0 {name=p68 sig_type=std_logic lab=TAP_4}
C {lab_wire.sym} 260 80 0 0 {name=p69 sig_type=std_logic lab=TAP_5}
C {lab_wire.sym} 260 160 0 0 {name=p70 sig_type=std_logic lab=TAP_6}
C {lab_wire.sym} 260 240 0 0 {name=p72 sig_type=std_logic lab=TAP_7}
C {symbols/ppolyf_u_1k.sym} 260 120 0 0 {name=R9
W=1e-6
L=59e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 260 280 0 0 {name=R10
W=1e-6
L=133e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 260 40 0 0 {name=R11
W=1e-6
L=79e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 260 -40 0 0 {name=R12
W=1e-6
L=105e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 260 -120 0 0 {name=R13
W=1e-6
L=140e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 260 -200 0 0 {name=R14
W=1e-6
L=187e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 260 -280 0 0 {name=R15
W=1e-6
L=249e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 260 200 0 0 {name=R16
W=1e-6
L=44e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
