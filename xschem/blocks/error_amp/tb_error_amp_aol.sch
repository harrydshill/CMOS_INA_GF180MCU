v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 10 -0 {}
T {what is the expected bond 
wire inductance? - it is 
good practive to include 
it here with the expected
parasitic capacitance for 
stability check } 10 140 0 0 0.2 0.2 {}
N 0 -90 0 -50 {lab=PSUP}
N -450 -50 -430 -50 {lab=PSUP}
N -430 -50 -430 -30 {lab=PSUP}
N -450 50 -430 50 {lab=0}
N -430 30 -430 50 {lab=0}
N -430 50 -430 70 {lab=0}
N -240 90 -240 130 {lab=0}
N -240 -80 -160 -80 {lab=INP}
N -160 -60 -160 -20 {lab=INP}
N -160 -20 -70 -20 {lab=INP}
N 0 50 0 90 {lab=0}
N -160 20 -70 20 {lab=INM}
N -240 20 -240 40 {lab=INM}
N -240 20 -160 20 {lab=INM}
N -240 0 -240 20 {lab=INM}
N -160 -80 -160 -60 {lab=INP}
N -240 -80 -240 -60 {lab=INP}
N 50 -20 90 -20 {lab=VO}
N 90 -30 120 -30 {lab=VO}
N 90 -30 90 -20 {lab=VO}
N 50 20 90 20 {lab=#net1}
N 90 20 90 30 {lab=#net1}
N 90 30 120 30 {lab=#net1}
C {lab_wire.sym} 0 -90 0 0 {name=p1 sig_type=std_logic lab=PSUP
}
C {lab_wire.sym} -450 -50 0 0 {name=p2 sig_type=std_logic lab=PSUP


}
C {lab_wire.sym} -450 50 0 0 {name=p3 sig_type=std_logic lab=0
}
C {vsource.sym} -430 0 0 0 {name=VDD value=\{vdd\} savecurrent=false}
C {vsource.sym} -240 70 0 0 {name=VCM value=\{vcm\} savecurrent=false}
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
C {lab_wire.sym} -90 20 0 0 {name=p6 sig_type=std_logic lab=INM
}
C {lab_wire.sym} -90 -20 0 0 {name=p7 sig_type=std_logic lab=INP
}
C {vsource.sym} -240 -30 0 0 {name=VDM1 value="DC 0 AC 1" savecurrent=false}
C {lab_wire.sym} 60 -20 0 1 {name=p4 sig_type=std_logic lab=VO
}
C {code_shown.sym} 220 190 0 0 {name=NGSPICE only_toplevel=true value="
.control
set units=degrees
save all
ac dec 100 1 100Meg

let vid = v(INP) - v(INM)
let aol = v(VO) / vid
let gain_db = db(aol)
let phase_deg = cph(aol)

meas ac UGF when gain_db=0
meas ac PM when phase_deg=UGF

write tb_error_amp_aol.raw frequency v(INP) v(INM) v(VO) aol gain_db phase_deg

.endc
"}
C {lab_wire.sym} -240 130 0 0 {name=p5 sig_type=std_logic lab=0
}
C {lab_wire.sym} 0 90 0 0 {name=p8 sig_type=std_logic lab=0
}
C {capa.sym} 120 0 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {blocks/error_amp/error_amp.sym} 10 -10 0 0 {name=x1}
