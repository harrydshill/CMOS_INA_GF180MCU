v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 10 -0 {}
N 0 -90 0 -50 {lab=PSUP}
N -450 -50 -430 -50 {lab=PSUP}
N -430 -50 -430 -30 {lab=PSUP}
N -450 50 -430 50 {lab=0}
N -430 30 -430 50 {lab=0}
N -430 50 -430 70 {lab=0}
N -240 50 -240 90 {lab=0}
N 70 -0 110 -0 {lab=VO}
N -160 -20 -70 -20 {lab=CM}
N 0 50 0 90 {lab=0}
N -160 20 -70 20 {lab=CM}
N -240 -0 -160 0 {lab=CM}
N -160 -20 -160 20 {lab=CM}
C {lab_wire.sym} 0 -90 0 0 {name=p1 sig_type=std_logic lab=PSUP
}
C {lab_wire.sym} -450 -50 0 0 {name=p2 sig_type=std_logic lab=PSUP


}
C {lab_wire.sym} -450 50 0 0 {name=p3 sig_type=std_logic lab=0
}
C {vsource.sym} -430 0 0 0 {name=VDD value=\{vdd\} savecurrent=false}
C {vsource.sym} -240 30 0 0 {name=VCM value="DC \{vcm\} AC 1" savecurrent=false}
C {noconn.sym} -70 50 0 0 {name=l1}
C {noconn.sym} -70 40 0 0 {name=l2}
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
C {lab_wire.sym} -90 -20 0 0 {name=p7 sig_type=std_logic lab=CM
}
C {lab_wire.sym} 100 0 0 1 {name=p4 sig_type=std_logic lab=VO
}
C {blocks/aux_amp/aux_amp.sym} 10 -10 0 0 {name=x1}
C {code_shown.sym} 220 190 0 0 {name=NGSPICE only_toplevel=true value="
.control
set units=degrees
save all
ac dec 100 1 1G

let avm = v(VO) / v(CM)
let gain_db = db(avm)
let phase_deg = cph(avm)

plot gain_db vs frequency
plot phase_deg vs frequency

write tb_aux_amp_acm.raw frequency v(CM) v(VO) acm

.endc
"}
C {lab_wire.sym} -240 90 0 0 {name=p5 sig_type=std_logic lab=0
}
C {lab_wire.sym} 0 90 0 0 {name=p8 sig_type=std_logic lab=0
}
