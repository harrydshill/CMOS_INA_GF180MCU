v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -20 270 -20 {lab=VO+}
N 80 20 270 20 {lab=VO-}
N -200 -180 120 -180 {lab=VO+}
N 120 -180 120 -20 {lab=VO+}
N 120 20 120 180 {lab=VO-}
N -200 180 120 180 {lab=VO-}
N 20 100 20 120 {lab=NSUP}
N 20 120 60 120 {lab=NSUP}
N 10 -120 10 -100 {lab=PSUP_LV}
N 10 -120 50 -120 {lab=PSUP_LV}
N 210 -200 250 -200 {lab=NSUP}
N 210 -180 250 -180 {lab=EN}
N 210 -160 250 -160 {lab=N_EN}
N -40 120 -20 120 {lab=EN}
N -20 100 -20 120 {lab=EN}
N -0 100 -0 140 {lab=N_EN}
N -40 140 -0 140 {lab=N_EN}
N -10 -120 -10 -100 {lab=IBIAS}
N 210 -140 250 -140 {lab=IBIAS}
N -50 -120 -10 -120 {lab=IBIAS}
N 210 -220 250 -220 {lab=PSUP_LV}
N -60 120 -40 120 {lab=EN}
N -60 140 -40 140 {lab=N_EN}
N -200 -170 -200 -140 {lab=VO+}
N -200 -180 -200 -170 {lab=VO+}
N -200 140 -200 180 {lab=VO-}
C {opin.sym} 270 -20 0 0 {name=p1 lab=VO+
}
C {opin.sym} 270 20 0 0 {name=p2 lab=VO-}
C {ipin.sym} -70 -20 0 0 {name=p3 lab=IN+}
C {ipin.sym} -70 -40 0 0 {name=p4 lab=IN-}
C {lab_wire.sym} 40 120 0 1 {name=p5 sig_type=std_logic lab=NSUP}
C {ipin.sym} 250 -200 2 0 {name=p9 lab=NSUP}
C {lab_wire.sym} 230 -200 0 0 {name=p10 sig_type=std_logic lab=NSUP}
C {ipin.sym} 250 -180 2 0 {name=p11 lab=EN}
C {lab_wire.sym} 230 -180 0 0 {name=p12 sig_type=std_logic lab=EN}
C {ipin.sym} 250 -160 2 0 {name=p13 lab=N_EN}
C {lab_wire.sym} 230 -160 0 0 {name=p14 sig_type=std_logic lab=N_EN}
C {lab_wire.sym} -40 120 0 0 {name=p15 sig_type=std_logic lab=EN}
C {lab_wire.sym} -40 140 0 0 {name=p16 sig_type=std_logic lab=N_EN}
C {ipin.sym} 250 -140 2 0 {name=p17 lab=IBIAS}
C {lab_wire.sym} 230 -140 0 0 {name=p18 sig_type=std_logic lab=IBIAS}
C {lab_wire.sym} -30 -120 0 0 {name=p19 sig_type=std_logic lab=IBIAS}
C {ipin.sym} 250 -220 2 0 {name=p21 lab=PSUP_LV}
C {lab_wire.sym} 230 -220 0 0 {name=p22 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -300 -80 0 0 {name=p23 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -300 -60 0 0 {name=p24 sig_type=std_logic lab=NSUP}
C {ipin.sym} -300 80 0 0 {name=p25 lab=GAIN0}
C {ipin.sym} -300 60 0 0 {name=p27 lab=GAIN1}
C {opin.sym} 120 0 0 0 {name=p34 lab=VOCM
}
C {lab_wire.sym} 30 -120 0 1 {name=p7 sig_type=std_logic lab=PSUP_LV}
C {noconn.sym} 120 0 0 0 {name=l1}
C {noconn.sym} -30 -100 0 0 {name=l2}
C {blocks/fdda_lv/fdda_lv.sym} -140 -50 0 0 {name=x1}
C {lab_wire.sym} -140 -40 0 0 {name=p6 sig_type=std_logic lab=R+}
C {lab_wire.sym} -140 40 0 0 {name=p8 sig_type=std_logic lab=R-}
C {lab_wire.sym} -70 20 0 1 {name=p20 sig_type=std_logic lab=R-}
C {lab_wire.sym} -70 40 0 1 {name=p29 sig_type=std_logic lab=R+}
C {blocks/INA_gain_fb/INA_gain_fb.sym} -200 0 0 0 {name=x2}
