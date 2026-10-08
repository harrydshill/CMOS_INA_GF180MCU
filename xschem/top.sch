v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -150 40 -150 {lab=PSUP_LV}
N 20 -150 20 -130 {lab=PSUP_LV}
N 160 -30 360 -30 {lab=#net1}
N 160 30 360 30 {lab=#net2}
N -40 150 -20 150 {lab=EN}
N -20 130 -20 150 {lab=EN}
N -40 170 0 170 {lab=N_EN}
N 0 130 0 170 {lab=N_EN}
N 440 150 460 150 {lab=EN}
N 460 130 460 150 {lab=EN}
N 440 170 480 170 {lab=N_EN}
N 480 130 480 170 {lab=N_EN}
N 500 -150 520 -150 {lab=PSUP_LV}
N 500 -150 500 -130 {lab=PSUP_LV}
N 500 150 520 150 {lab=NSUP}
N 500 130 500 150 {lab=NSUP}
N 20 150 40 150 {lab=NSUP}
N 20 130 20 150 {lab=NSUP}
N -40 -150 -20 -150 {lab=IBIAS}
N -20 -150 -20 -130 {lab=IBIAS}
N 440 -150 460 -150 {lab=IBIAS}
N 460 -150 460 -130 {lab=IBIAS}
C {blocks/in_amp/in_amp.sym} -100 0 0 0 {name=x1}
C {ipin.sym} -120 -30 0 0 {name=p1 lab=IN+}
C {ipin.sym} -120 30 0 0 {name=p2 lab=IN+}
C {lab_wire.sym} 40 -150 0 1 {name=p8 sig_type=std_logic lab=PSUP_LV
}
C {blocks/LPF/LPF.sym} 380 0 0 0 {name=x2}
C {ipin.sym} -130 -440 2 1 {name=p11 lab=EN}
C {ipin.sym} -130 -420 2 1 {name=p13 lab=N_EN}
C {lab_wire.sym} -130 -440 0 1 {name=p12 sig_type=std_logic lab=EN}
C {lab_wire.sym} -130 -420 0 1 {name=p14 sig_type=std_logic lab=N_EN}
C {lab_wire.sym} -40 150 0 0 {name=p16 sig_type=std_logic lab=EN}
C {lab_wire.sym} -40 170 0 0 {name=p17 sig_type=std_logic lab=N_EN}
C {lab_wire.sym} 440 150 0 0 {name=p7 sig_type=std_logic lab=EN}
C {lab_wire.sym} 440 170 0 0 {name=p9 sig_type=std_logic lab=N_EN}
C {ipin.sym} -130 -460 2 1 {name=p3 lab=NSUP}
C {ipin.sym} -130 -480 2 1 {name=p21 lab=PSUP_LV}
C {lab_wire.sym} -130 -460 0 1 {name=p10 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -130 -480 0 1 {name=p22 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 520 -150 0 1 {name=p4 sig_type=std_logic lab=PSUP_LV
}
C {lab_wire.sym} 40 150 0 1 {name=p5 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 520 150 0 1 {name=p6 sig_type=std_logic lab=NSUP}
C {ipin.sym} -130 -400 2 1 {name=p15 lab=IBIAS}
C {lab_wire.sym} -130 -400 0 1 {name=p18 sig_type=std_logic lab=IBIAS}
C {lab_wire.sym} -40 -150 0 0 {name=p19 sig_type=std_logic lab=IBIAS}
C {lab_wire.sym} 440 -150 0 0 {name=p20 sig_type=std_logic lab=IBIAS}
C {ipin.sym} -130 -360 0 0 {name=p38 lab=VOCM
}
C {lab_wire.sym} -130 -360 0 1 {name=p23 sig_type=std_logic lab=VOCM}
C {lab_wire.sym} 160 0 0 1 {name=p24 sig_type=std_logic lab=VOCM}
C {lab_wire.sym} 640 0 0 1 {name=p25 sig_type=std_logic lab=VOCM}
C {opin.sym} 640 -30 0 0 {name=p36 lab=VO+
}
C {opin.sym} 640 30 0 0 {name=p37 lab=VO-}
C {ipin.sym} 360 -100 0 0 {name=p26 lab=LPF_GAIN2}
C {ipin.sym} 360 -80 0 0 {name=p27 lab=LPF_GAIN1}
C {ipin.sym} 360 -60 0 0 {name=p28 lab=LPF_GAIN0}
C {ipin.sym} 360 60 0 0 {name=p29 lab=LPF_FREQ1}
C {ipin.sym} 360 80 0 0 {name=p30 lab=LPF_FRQE0}
C {ipin.sym} -120 70 0 0 {name=p31 lab=INA_GAIN1}
C {ipin.sym} -120 90 0 0 {name=p32 lab=INA_GAIN0}
