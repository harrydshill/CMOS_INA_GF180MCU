v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -20 270 -20 {lab=VO+}
N 80 20 270 20 {lab=VO-}
N 20 100 20 120 {lab=NSUP}
N 20 120 60 120 {lab=NSUP}
N 10 -120 10 -100 {lab=PSUP_LV}
N 10 -120 50 -120 {lab=PSUP_LV}
N -40 120 -20 120 {lab=EN}
N -20 100 -20 120 {lab=EN}
N 0 100 0 140 {lab=N_EN}
N -40 140 0 140 {lab=N_EN}
N -10 -120 -10 -100 {lab=IBIAS}
N -50 -120 -10 -120 {lab=IBIAS}
N -60 120 -40 120 {lab=EN}
N -60 140 -40 140 {lab=N_EN}
N 220 -320 220 -20 {lab=VO+}
N 0 -200 -0 -180 {lab=NSUP}
N -20 -180 -0 -180 {lab=NSUP}
N 0 -200 -0 -180 {lab=NSUP}
N -20 -180 -0 -180 {lab=NSUP}
N 120 -320 220 -320 {lab=VO+}
N -180 -320 -100 -320 {lab=#net1}
N -200 -320 -200 -40 {lab=#net1}
N -180 -40 -70 -40 {lab=#net1}
N -200 -320 -180 -320 {lab=#net1}
N -200 -40 -180 -40 {lab=#net1}
N 120 -320 220 -320 {lab=VO+}
N 220 20 220 320 {lab=VO-}
N 0 180 0 200 {lab=NSUP}
N -20 180 0 180 {lab=NSUP}
N 0 180 0 200 {lab=NSUP}
N -20 180 0 180 {lab=NSUP}
N 120 320 220 320 {lab=VO-}
N -180 320 -100 320 {lab=#net2}
N -200 40 -200 320 {lab=#net2}
N -180 40 -70 40 {lab=#net2}
N -200 320 -180 320 {lab=#net2}
N -200 40 -180 40 {lab=#net2}
N 120 320 220 320 {lab=VO-}
N -240 -20 -70 -20 {lab=#net3}
N -240 20 -70 20 {lab=#net4}
N -420 -480 -420 -150 {lab=VO+}
N -420 -480 220 -480 {lab=VO+}
N 220 -480 220 -320 {lab=VO+}
N -420 150 -420 480 {lab=VO-}
N -420 480 220 480 {lab=VO-}
N 220 320 220 480 {lab=VO-}
N -580 90 -580 90 {lab=NSUP}
N -580 -280 -580 -280 {lab=FREQ0}
N -580 70 -580 70 {lab=FREQ1}
N -580 -50 -580 -50 {lab=FREQ0}
N -580 -320 -580 -320 {lab=GAIN0}
N -580 -300 -580 -300 {lab=FREQ1}
N -580 70 -580 70 {lab=FREQ1}
N -580 -70 -580 -70 {lab=FREQ1}
C {lab_wire.sym} 40 120 0 1 {name=p5 sig_type=std_logic lab=NSUP}
C {ipin.sym} -580 -440 2 1 {name=p9 lab=NSUP}
C {ipin.sym} -580 -420 2 1 {name=p11 lab=EN}
C {ipin.sym} -580 -400 2 1 {name=p13 lab=N_EN}
C {lab_wire.sym} -40 120 0 0 {name=p15 sig_type=std_logic lab=EN}
C {lab_wire.sym} -40 140 0 0 {name=p16 sig_type=std_logic lab=N_EN}
C {ipin.sym} -580 -380 2 1 {name=p17 lab=IBIAS}
C {lab_wire.sym} -30 -120 0 0 {name=p19 sig_type=std_logic lab=IBIAS}
C {ipin.sym} -580 -460 2 1 {name=p21 lab=PSUP_LV}
C {ipin.sym} -580 -360 2 1 {name=p25 lab=GAIN2
}
C {lab_wire.sym} 30 -120 0 1 {name=p7 sig_type=std_logic lab=PSUP_LV}
C {noconn.sym} -30 -100 0 0 {name=l2}
C {blocks/fdda_lv/fdda_lv.sym} -140 -50 0 0 {name=x1}
C {lab_wire.sym} -580 -440 0 1 {name=p10 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -580 -420 0 1 {name=p12 sig_type=std_logic lab=EN}
C {lab_wire.sym} -580 -400 0 1 {name=p14 sig_type=std_logic lab=N_EN}
C {lab_wire.sym} -580 -380 0 1 {name=p18 sig_type=std_logic lab=IBIAS}
C {lab_wire.sym} -580 -460 0 1 {name=p22 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 -180 0 0 {name=p3 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -100 -360 0 0 {name=p6 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -100 -380 0 0 {name=p8 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 180 2 1 {name=p30 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -100 360 2 1 {name=p31 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -100 380 2 1 {name=p32 sig_type=std_logic lab=PSUP_LV}
C {opin.sym} 270 -20 0 0 {name=p36 lab=VO+
}
C {opin.sym} 270 20 0 0 {name=p37 lab=VO-}
C {ipin.sym} 220 0 0 1 {name=p38 lab=VOCM
}
C {noconn.sym} 220 0 0 0 {name=l1}
C {ipin.sym} -580 -20 2 1 {name=p39 lab=IN+}
C {ipin.sym} -580 20 2 1 {name=p40 lab=IN-}
C {ipin.sym} -580 -340 2 1 {name=p41 lab=GAIN1}
C {ipin.sym} -580 -320 2 1 {name=p42 lab=GAIN0}
C {ipin.sym} -580 -300 2 1 {name=p48 lab=FREQ1}
C {ipin.sym} -580 -280 2 1 {name=p49 lab=FREQ0}
C {lab_wire.sym} -580 -90 0 0 {name=p54 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -580 90 2 1 {name=p55 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -580 -110 0 0 {name=p56 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -580 110 2 1 {name=p57 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -580 -360 0 1 {name=p4 sig_type=std_logic lab=GAIN2}
C {lab_wire.sym} -580 -340 0 1 {name=p24 sig_type=std_logic lab=GAIN1}
C {lab_wire.sym} -580 -320 0 1 {name=p20 sig_type=std_logic lab=GAIN0}
C {lab_wire.sym} -580 -300 0 1 {name=p1 sig_type=std_logic lab=FREQ1}
C {lab_wire.sym} -580 -280 0 1 {name=p44 sig_type=std_logic lab=FREQ0}
C {lab_wire.sym} -100 -280 0 0 {name=p2 sig_type=std_logic lab=GAIN2}
C {lab_wire.sym} -100 -260 0 0 {name=p28 sig_type=std_logic lab=GAIN1}
C {lab_wire.sym} -100 -240 0 0 {name=p29 sig_type=std_logic lab=GAIN0}
C {lab_wire.sym} -100 280 2 1 {name=p33 sig_type=std_logic lab=GAIN2}
C {lab_wire.sym} -100 260 2 1 {name=p34 sig_type=std_logic lab=GAIN1}
C {lab_wire.sym} -100 240 2 1 {name=p35 sig_type=std_logic lab=GAIN0}
C {lab_wire.sym} -580 70 2 1 {name=p46 sig_type=std_logic lab=FREQ1}
C {lab_wire.sym} -580 50 2 1 {name=p47 sig_type=std_logic lab=FREQ0}
C {lab_wire.sym} -580 -70 0 0 {name=p50 sig_type=std_logic lab=FREQ1}
C {lab_wire.sym} -580 -50 0 0 {name=p51 sig_type=std_logic lab=FREQ0}
C {blocks/LPF_freq_fb/LPF_freq_fb.sym} -420 0 0 0 {name=x2}
C {blocks/LPF_freq_fb/LPF_freq_fb.sym} -420 0 2 1 {name=x3}
C {blocks/LPF_gain_fb/LPF_gain_fb.sym} 0 -320 0 0 {name=x4}
C {blocks/LPF_gain_fb/LPF_gain_fb.sym} 0 320 2 1 {name=x5}
