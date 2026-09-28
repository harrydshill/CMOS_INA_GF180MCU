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
N -240 30 -240 70 {lab=0}
N 70 -0 110 -0 {lab=VO}
N -160 -20 -70 -20 {lab=INP}
N 0 50 0 90 {lab=0}
N -160 20 -70 20 {lab=VO}
N -160 20 -160 120 {lab=VO}
N -160 120 110 120 {lab=VO}
N 110 0 110 120 {lab=VO}
N -240 -20 -160 -20 {lab=INP}
C {lab_wire.sym} 0 -90 0 0 {name=p1 sig_type=std_logic lab=PSUP
}
C {lab_wire.sym} -450 -50 0 0 {name=p2 sig_type=std_logic lab=PSUP


}
C {lab_wire.sym} -450 50 0 0 {name=p3 sig_type=std_logic lab=0
}
C {vsource.sym} -430 0 0 0 {name=VDD value="DC \{vdd\} AC 1" savecurrent=false}
C {vsource.sym} -240 10 0 0 {name=VCM value=\{vcm\} savecurrent=false}
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
C {lab_wire.sym} -90 -20 0 0 {name=p7 sig_type=std_logic lab=INP
}
C {lab_wire.sym} 100 0 0 1 {name=p4 sig_type=std_logic lab=VO
}
C {blocks/aux_amp/aux_amp.sym} 10 -10 0 0 {name=x1}
C {code_shown.sym} 210 190 0 0 {name=NGSPICE only_toplevel=true value="
.control
save all
ac dec 100 1 1G

let psup_to_out = v(VO) / v(PSUP)
let psrr = v(PSUP) / v(VO)
let psrr_db = db(psrr)
plot psrr_db vs frequency title 'PSRR rejection'

write tb_aux_amp_psrr.raw frequency v(PSUP) v(VO) psup_to_out psrr psrr_db

.endc
"}
C {lab_wire.sym} -240 70 0 0 {name=p5 sig_type=std_logic lab=0
}
C {lab_wire.sym} 0 90 0 0 {name=p8 sig_type=std_logic lab=0
}
