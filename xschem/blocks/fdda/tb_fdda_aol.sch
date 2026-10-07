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
N -570 400 -550 400 {lab=0}
N -570 380 -570 400 {lab=0}
N -570 300 -570 320 {lab=PSUP}
N -570 300 -550 300 {lab=PSUP}
N -650 400 -630 400 {lab=0}
N -650 380 -650 400 {lab=0}
N -650 300 -650 320 {lab=VCM}
N -650 300 -630 300 {lab=VCM}
N -140 190 -100 190 {lab=Vop}
N -140 230 -100 230 {lab=Von}
N -40 310 -40 330 {lab=0}
N -40 230 -40 250 {lab=Vop}
N -40 190 -40 230 {lab=Vop}
N -100 190 -40 190 {lab=Vop}
N -420 80 -420 100 {lab=VCM}
N -440 80 -420 80 {lab=VCM}
N -380 80 -380 100 {lab=VCM}
N -420 80 -380 80 {lab=VCM}
N -380 160 -380 190 {lab=INM}
N -380 190 -290 190 {lab=INM}
N -420 160 -420 250 {lab=INP}
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

.temp 25

.param vcm=2.5
.param vdd=5

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
ac dec 100 1 1G

let Vid = v(INP) - v(INM)
let Vo = v(Vop) - v(Von)
let aol = v(Vo) / v(Vid)
let gain_db = db(aol)
let phase_deg = cph(aol)

meas ac UGF when gain_db=0
meas ac phase_margin find phase_deg when gain_db=0

write tb_fdda_aol.raw frequency v(Vop) v(Von) v(Vo) aol gain_db phase_deg

.endc
"}
C {lab_pin.sym} -100 330 0 0 {name=p11 sig_type=std_logic lab=0}
C {capa.sym} -100 280 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {blocks/fdda/fdda.sym} -360 160 0 0 {name=x2}
C {lab_pin.sym} -290 230 0 0 {name=p9 sig_type=std_logic lab=VCM}
C {lab_pin.sym} -440 80 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {noconn.sym} -230 110 1 0 {name=l3}
C {lab_pin.sym} -210 110 2 0 {name=p14 sig_type=std_logic lab=PSUP}
C {lab_pin.sym} -200 310 2 0 {name=p15 sig_type=std_logic lab=0}
C {noconn.sym} -240 310 3 0 {name=l4}
C {noconn.sym} -220 310 3 0 {name=l5}
C {vsource.sym} -570 350 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} -550 400 2 0 {name=p16 sig_type=std_logic lab=0}
C {lab_pin.sym} -550 300 2 0 {name=p17 sig_type=std_logic lab=PSUP}
C {lab_pin.sym} -630 400 2 0 {name=p18 sig_type=std_logic lab=0}
C {lab_pin.sym} -630 300 2 0 {name=p19 sig_type=std_logic lab=VCM}
C {lab_wire.sym} -40 190 0 1 {name=p1 sig_type=std_logic lab=Vop
}
C {lab_pin.sym} -40 330 0 0 {name=p5 sig_type=std_logic lab=0}
C {capa.sym} -40 280 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {vsource.sym} -650 350 0 0 {name=VCM2 value=\{vcm\} savecurrent=false}
C {lab_pin.sym} -290 170 0 0 {name=p2 sig_type=std_logic lab=VCM}
C {vsource.sym} -380 130 2 1 {name=VDM2 value="DC 0 AC 0.5" savecurrent=false}
C {vsource.sym} -420 130 0 1 {name=VDM1 value="DC 0 AC 0.5" savecurrent=false}
C {lab_pin.sym} -420 250 0 0 {name=p3 sig_type=std_logic lab=INP}
C {lab_pin.sym} -380 190 0 0 {name=p6 sig_type=std_logic lab=INM
}
C {noconn.sym} -250 110 1 0 {name=l1}
