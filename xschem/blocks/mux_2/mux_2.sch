v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -470 -40 -420 -40 {lab=CONF0}
N -470 40 -420 40 {lab=CONF1}
N -50 -120 0 -120 {lab=nC3}
N -50 -40 0 -40 {lab=nC2}
N -50 40 -5 40 {lab=nC1}
N -5 40 0 40 {lab=nC1}
N -50 120 -5 120 {lab=nC0}
N -5 120 0 120 {lab=nC0}
N 460 -120 520 -120 {lab=B}
N 460 120 520 120 {lab=B}
N 460 40 520 40 {lab=B}
N 460 -40 520 -40 {lab=B}
N 520 -0 540 0 {lab=B}
N 520 -120 520 120 {lab=B}
C {ipin.sym} -560 -50 0 0 {name=p6 lab=PSUP_LV}
C {ipin.sym} -560 -30 0 0 {name=p7 lab=NSUP}
C {ipin.sym} -560 30 0 0 {name=p4 lab=CONF1}
C {lab_wire.sym} -560 -30 0 1 {name=p12 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -560 30 0 1 {name=p15 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -560 -50 0 1 {name=p13 sig_type=std_logic lab=PSUP_LV}
C {ipin.sym} -560 50 0 0 {name=p14 lab=CONF0}
C {lab_wire.sym} -560 50 0 1 {name=p17 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} 100 120 0 1 {name=p23 sig_type=std_logic lab=C0}
C {lab_wire.sym} -35 40 0 1 {name=p26 sig_type=std_logic lab=nC1}
C {lab_wire.sym} -35 -40 0 1 {name=p31 sig_type=std_logic lab=nC2}
C {lab_wire.sym} -35 -120 0 1 {name=p35 sig_type=std_logic lab=nC3}
C {lab_wire.sym} -160 100 0 0 {name=p39 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -160 120 0 0 {name=p40 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -160 140 0 0 {name=p41 sig_type=std_logic lab=nCONF2}
C {lab_wire.sym} -160 60 0 0 {name=p79 sig_type=std_logic lab=nCONF2}
C {lab_wire.sym} 100 40 0 1 {name=p80 sig_type=std_logic lab=C1}
C {lab_wire.sym} -160 -20 0 0 {name=p107 sig_type=std_logic lab=nCONF2}
C {lab_wire.sym} 100 -40 0 1 {name=p108 sig_type=std_logic lab=C2}
C {lab_wire.sym} -160 -100 0 0 {name=p115 sig_type=std_logic lab=nCONF2}
C {lab_wire.sym} 100 -120 0 1 {name=p116 sig_type=std_logic lab=C3}
C {lab_wire.sym} -30 120 0 1 {name=p44 sig_type=std_logic lab=nC0}
C {lab_wire.sym} -160 20 0 0 {name=p123 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -160 40 0 0 {name=p124 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -160 -40 0 0 {name=p125 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} -160 -60 0 0 {name=p126 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -160 -140 0 0 {name=p127 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -160 -120 0 0 {name=p128 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} -320 -80 0 1 {name=p46 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -420 -40 0 0 {name=p16 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -320 0 0 1 {name=p45 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -420 40 0 0 {name=p47 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -360 -80 0 1 {name=p48 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -380 -80 0 0 {name=p50 sig_type=std_logic lab=NSUP}
C {blocks/nand_3/nand_3.sym} -110 -120 0 0 {name=x16}
C {blocks/nand_3/nand_3.sym} -110 -40 0 0 {name=x17}
C {blocks/nand_3/nand_3.sym} -110 40 0 0 {name=x18}
C {blocks/nand_3/nand_3.sym} -110 120 0 0 {name=x19}
C {noconn.sym} -120 160 1 1 {name=l1}
C {noconn.sym} -100 160 1 1 {name=l2}
C {noconn.sym} -380 80 3 0 {name=l5}
C {noconn.sym} -360 80 3 0 {name=l6}
C {blocks/not/not.sym} 50 -120 0 0 {name=x27}
C {blocks/not/not.sym} 50 -40 0 0 {name=x28}
C {blocks/not/not.sym} 50 40 0 0 {name=x29}
C {blocks/not/not.sym} 50 120 0 0 {name=x30}
C {noconn.sym} 40 160 1 1 {name=l7}
C {noconn.sym} 60 160 1 1 {name=l8}
C {blocks/not/not.sym} -370 -40 0 0 {name=x3}
C {blocks/not/not.sym} -370 40 0 0 {name=x6}
C {lab_wire.sym} -100 -160 0 1 {name=p42 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -120 -160 0 0 {name=p43 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 60 -160 0 1 {name=p54 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 40 -160 0 0 {name=p56 sig_type=std_logic lab=NSUP}
C {blocks/transmission_gate/transmission_gate_alt.sym} 420 -120 0 0 {name=x1}
C {blocks/transmission_gate/transmission_gate_alt.sym} 420 -40 0 0 {name=x2}
C {blocks/transmission_gate/transmission_gate_alt.sym} 420 40 0 0 {name=x5}
C {blocks/transmission_gate/transmission_gate_alt.sym} 420 120 0 0 {name=x9}
C {lab_wire.sym} 430 -160 0 1 {name=p11 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 410 -160 0 0 {name=p22 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 460 -140 0 1 {name=p24 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 460 -60 0 1 {name=p25 sig_type=std_logic lab=nC1}
C {lab_wire.sym} 460 20 0 1 {name=p27 sig_type=std_logic lab=nC2}
C {lab_wire.sym} 460 100 0 1 {name=p28 sig_type=std_logic lab=nC3}
C {lab_wire.sym} 460 -100 0 1 {name=p34 sig_type=std_logic lab=C0}
C {lab_wire.sym} 460 -20 0 1 {name=p36 sig_type=std_logic lab=C1}
C {lab_wire.sym} 460 60 0 1 {name=p51 sig_type=std_logic lab=C2}
C {lab_wire.sym} 460 140 0 1 {name=p60 sig_type=std_logic lab=C3}
C {iopin.sym} 380 -120 0 1 {name=p1 lab=A0}
C {iopin.sym} 380 -40 0 1 {name=p2 lab=A1}
C {iopin.sym} 380 40 0 1 {name=p3 lab=A2}
C {iopin.sym} 380 120 0 1 {name=p8 lab=A3}
C {iopin.sym} 540 0 0 0 {name=p57 lab=B}
C {noconn.sym} 410 160 1 1 {name=l3}
C {noconn.sym} 430 160 1 1 {name=l4}
