v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {what is the expected bond 
wire inductance? - it is 
good practive to include 
it here with the expected
parasitic capacitance for 
stability check } 80 180 0 0 0.2 0.2 {}
N -100 310 -100 330 {lab=0}
N -100 230 -100 250 {lab=Von}
N -740 290 -720 290 {lab=0}
N -740 270 -740 290 {lab=0}
N -740 190 -740 210 {lab=PSUP_LV}
N -740 190 -720 190 {lab=PSUP_LV}
N -820 290 -800 290 {lab=0}
N -820 270 -820 290 {lab=0}
N -820 190 -820 210 {lab=VCM}
N -820 190 -800 190 {lab=VCM}
N -140 190 -100 190 {lab=Vop}
N -140 230 -100 230 {lab=Von}
N -40 310 -40 330 {lab=0}
N -40 230 -40 250 {lab=Vop}
N -40 190 -40 230 {lab=Vop}
N -100 190 -40 190 {lab=Vop}
N -550 80 -550 100 {lab=VCM}
N -570 80 -550 80 {lab=VCM}
N -510 80 -510 100 {lab=VCM}
N -550 80 -510 80 {lab=VCM}
N -510 160 -510 190 {lab=INM}
N -510 190 -420 190 {lab=INM}
N -550 160 -550 250 {lab=INP}
N -550 250 -420 250 {lab=INP}
N -420 190 -290 190 {lab=INM}
N -420 250 -290 250 {lab=INP}
C {code_shown.sym} 220 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice

.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim

* .temp @TEMP@

.param vcm=2.5
.param vdd=3.3

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0
"}
C {lab_wire.sym} -100 230 0 1 {name=p4 sig_type=std_logic lab=Von
}
C {code_shown.sym} 220 190 0 0 {name=NGSPICE only_toplevel=true value="
.control
set units=degrees
save all

.param INCM=0
.param INDM=1

* ==================================================
* 1. Differential gain
* ==================================================

alterparam INCM=0
alterparam INDM=1
reset

ac dec 100 1 1G

let Vdi = v(INP) - v(INM)
let Vdo = v(Vop) - v(Von)
let Ad = Vdo / Vdi
let gain_diff_db = db(Ad)
let phase_diff_deg = cph(Ad)

meas ac UGF when gain_diff_db=0
meas ac phase_margin find phase_diff_deg when gain_diff_db=0

write tb_fdda_lv_buff_cmrr_aol.raw frequency v(Vop) v(Von) Vdo Ad gain_diff_db phase_diff_deg

* ==================================================
* 2. Common-mode gain
* ==================================================

alterparam INCM=1
alterparam INDM=0
reset

ac dec 100 1 1G

let Vci = (v(INP) + v(INM))/2
let Vco = v(Vop) - v(Von)
let Ac  = Vco/Vci

let gain_comm_db = db(Ac)
let phase_comm_deg = cph(Ac)

write tb_fdda_lv_buff_cmrr_acm.raw frequency v(Vop) v(Von) Vco Ac gain_comm_db phase_comm_deg

* ==================================================
* 3. CMRR
* ==================================================

.endc
"}
C {lab_pin.sym} -100 330 0 0 {name=p11 sig_type=std_logic lab=0}
C {capa.sym} -100 280 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {blocks/fdda_lv_buff/fdda_lv_buff.sym} -360 160 0 0 {name=x2}
C {lab_pin.sym} -290 230 0 0 {name=p9 sig_type=std_logic lab=VCM}
C {lab_pin.sym} -570 80 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {noconn.sym} -230 110 1 0 {name=l3}
C {lab_pin.sym} -210 110 2 0 {name=p14 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -200 310 2 0 {name=p15 sig_type=std_logic lab=0}
C {noconn.sym} -240 310 3 0 {name=l4}
C {noconn.sym} -220 310 3 0 {name=l5}
C {vsource.sym} -740 240 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} -720 290 2 0 {name=p16 sig_type=std_logic lab=0}
C {lab_pin.sym} -720 190 2 0 {name=p17 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -800 290 2 0 {name=p18 sig_type=std_logic lab=0}
C {lab_pin.sym} -800 190 2 0 {name=p19 sig_type=std_logic lab=VCM}
C {lab_wire.sym} -40 190 0 1 {name=p1 sig_type=std_logic lab=Vop
}
C {lab_pin.sym} -40 330 0 0 {name=p5 sig_type=std_logic lab=0}
C {capa.sym} -40 280 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {vsource.sym} -820 240 0 0 {name=VCM2 value=\{vcm\} savecurrent=false}
C {lab_pin.sym} -290 170 0 0 {name=p2 sig_type=std_logic lab=VCM}
C {vsource.sym} -510 130 0 0 {name=VDM2 value="DC 0 AC \{INCM - (INDM/2)\}" savecurrent=false}
C {vsource.sym} -550 130 0 1 {name=VDM1 value="DC 0 AC \{INCM + (INDM/2)\}" savecurrent=false}
C {lab_pin.sym} -550 250 0 0 {name=p3 sig_type=std_logic lab=INP}
C {lab_pin.sym} -510 190 0 0 {name=p6 sig_type=std_logic lab=INM
}
C {noconn.sym} -250 110 1 0 {name=l1}
