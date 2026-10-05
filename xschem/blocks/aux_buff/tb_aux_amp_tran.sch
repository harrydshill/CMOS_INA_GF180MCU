v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 10 -0 {}
N -160 -20 -70 -20 {lab=INP}
N 0 -90 0 -50 {lab=PSUP}
N -0 50 0 90 {lab=0}
N -410 -50 -390 -50 {lab=PSUP}
N -390 -50 -390 -30 {lab=PSUP}
N -410 50 -390 50 {lab=0}
N -390 30 -390 50 {lab=0}
N -220 140 -220 180 {lab=0}
N -190 -20 -160 -20 {lab=INP}
N -220 70 -220 90 {lab=INP}
N -100 20 -70 20 {lab=OUT}
N -220 -20 -220 70 {lab=INP}
N -220 -20 -190 -20 {lab=INP}
N -140 20 -100 20 {lab=OUT}
N -140 20 -140 140 {lab=OUT}
N -140 140 120 140 {lab=OUT}
N 120 0 120 140 {lab=OUT}
N 70 0 120 0 {lab=OUT}
C {lab_wire.sym} 0 -90 0 0 {name=p1 sig_type=std_logic lab=PSUP
}
C {lab_wire.sym} -410 -50 0 0 {name=p2 sig_type=std_logic lab=PSUP


}
C {lab_wire.sym} -410 50 0 0 {name=p3 sig_type=std_logic lab=0
}
C {lab_wire.sym} 0 90 0 0 {name=p4 sig_type=std_logic lab=0
}
C {lab_wire.sym} -220 180 0 0 {name=p5 sig_type=std_logic lab=0
}
C {vsource.sym} -390 0 0 0 {name=VDD value="PWL(0 0 1u 0 11u \{vdd\})" savecurrent=false}
C {vsource.sym} -220 120 0 0 {name=VCM value="PWL(0 0 20u 0 150u \{vdd\})" savecurrent=false}
C {code_shown.sym} 230 200 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 10n 200u
write tb_aux_amp_tran.raw
.endc
"}
C {noconn.sym} -70 50 0 0 {name=l1}
C {noconn.sym} -70 40 0 0 {name=l2}
C {blocks/aux_amp/aux_amp.sym} 10 -10 0 0 {name=x1}
C {code_shown.sym} 220 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice

.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical

* .temp @TEMP@

.param vcm=2.5
.param vdd=5

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0

"}
C {lab_wire.sym} -90 -20 0 0 {name=p7 sig_type=std_logic lab=INP
}
C {lab_wire.sym} 100 0 0 1 {name=p8 sig_type=std_logic lab=OUT
}
