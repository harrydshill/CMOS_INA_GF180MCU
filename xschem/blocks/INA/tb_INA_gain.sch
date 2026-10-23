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
stability check } 440 20 0 0 0.2 0.2 {}
N -680 50 -660 50 {lab=0}
N -680 30 -680 50 {lab=0}
N -680 -50 -680 -30 {lab=PSUP_LV}
N -680 -50 -660 -50 {lab=PSUP_LV}
N -760 50 -740 50 {lab=0}
N -760 30 -760 50 {lab=0}
N -760 -50 -760 -30 {lab=VCM}
N -760 -50 -740 -50 {lab=VCM}
N 20 150 40 150 {lab=0}
N 20 130 20 150 {lab=0}
N 20 -150 20 -130 {lab=PSUP_LV}
N 20 -150 40 -150 {lab=PSUP_LV}
N 160 -30 180 -30 {lab=VOP}
N 160 30 180 30 {lab=VON}
N -280 -140 -280 -120 {lab=VCM}
N -300 -140 -280 -140 {lab=VCM}
N -240 -140 -240 -120 {lab=VCM}
N -280 -140 -240 -140 {lab=VCM}
N -240 -60 -240 -30 {lab=INM}
N -280 -60 -280 30 {lab=INP}
N -240 -30 -120 -30 {lab=INM}
N -280 30 -120 30 {lab=INP}
N -40 150 -20 150 {lab=PSUP_LV}
N -20 130 -20 150 {lab=PSUP_LV}
N -40 170 -0 170 {lab=0}
N -0 130 -0 170 {lab=0}
N -140 -390 -140 -360 {lab=PSUP_LV}
N -140 -310 -80 -310 {lab=g}
N -100 -360 -80 -360 {lab=g}
N -80 -360 -80 -310 {lab=g}
N -140 -330 -140 -310 {lab=g}
N -140 -310 -140 -290 {lab=g}
N -20 -390 -20 -360 {lab=PSUP_LV}
N -80 -360 -60 -360 {lab=g}
N -20 -330 -20 -310 {lab=#net1}
N -20 -310 -20 -290 {lab=#net1}
N -140 -410 -20 -410 {lab=PSUP_LV}
N -140 -230 -140 -200 {lab=0}
N -20 -410 -20 -390 {lab=PSUP_LV}
N -140 -410 -140 -390 {lab=PSUP_LV}
N -20 -210 -20 -200 {lab=#net2}
N -20 -290 -20 -270 {lab=#net1}
N -20 -200 -20 -130 {lab=#net2}
C {code_shown.sym} 580 -370 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice

.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim

.temp 25

.param vdd=3.3

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0
"}
C {code_shown.sym} 580 30 0 0 {name=NGSPICE only_toplevel=true value="
.control
set units=degrees
save all
ac dec 100 1 1G

let Vid = v(INP) - v(INM)
let Vo = v(Vop) - v(Von)
let aol = v(Vo) / v(Vid)
let gain_db = db(aol)
let phase_deg = cph(aol)

write tb_INA_gain.raw

.endc
"}
C {vsource.sym} -680 0 0 0 {name=VDD1 value=\{vdd\} savecurrent=false}
C {lab_pin.sym} -660 50 2 0 {name=p16 sig_type=std_logic lab=0}
C {lab_pin.sym} -660 -50 2 0 {name=p17 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -740 50 2 0 {name=p18 sig_type=std_logic lab=0}
C {lab_pin.sym} -740 -50 2 0 {name=p19 sig_type=std_logic lab=VCM}
C {vsource.sym} -760 0 0 0 {name=VCM value=\{vdd/2\} savecurrent=false}
C {lab_wire.sym} 180 -30 0 1 {name=p1 sig_type=std_logic lab=VOP}
C {lab_wire.sym} 180 30 0 1 {name=p2 sig_type=std_logic lab=VON}
C {lab_pin.sym} 40 150 2 0 {name=p3 sig_type=std_logic lab=0}
C {lab_pin.sym} 40 -150 2 0 {name=p4 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -300 -140 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {vsource.sym} -240 -90 2 1 {name=VDM2 value="DC 0 AC 0.5" savecurrent=false}
C {vsource.sym} -280 -90 0 1 {name=VDM1 value="DC 0 AC 0.5" savecurrent=false}
C {lab_pin.sym} -280 30 0 0 {name=p5 sig_type=std_logic lab=INP}
C {lab_pin.sym} -240 -30 0 0 {name=p6 sig_type=std_logic lab=INM
}
C {lab_pin.sym} -270 190 2 1 {name=p7 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -120 80 2 1 {name=p8 sig_type=std_logic lab=PSUP_LV}
C {blocks/INA/INA.sym} -100 0 0 0 {name=x1}
C {lab_pin.sym} -250 100 2 1 {name=p9 sig_type=std_logic lab=0}
C {lab_pin.sym} -150 120 2 1 {name=p10 sig_type=std_logic lab=0}
C {lab_pin.sym} -120 60 2 1 {name=p11 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} 160 0 0 1 {name=p12 sig_type=std_logic lab=VCM}
C {lab_pin.sym} -40 150 0 0 {name=p14 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -40 170 0 0 {name=p15 sig_type=std_logic lab=0}
C {symbols/pfet_03v3.sym} -120 -360 0 1 {name=M7
L=4u
W=2u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -40 -360 0 0 {name=M1
L=4u
W=2u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -20 -410 2 0 {name=p20 sig_type=std_logic lab=PSUP_LV}
C {isource.sym} -140 -260 0 0 {name=I1 value=1u}
C {lab_pin.sym} -140 -200 2 0 {name=p22 sig_type=std_logic lab=0}
C {ammeter.sym} -20 -240 0 1 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {lab_pin.sym} -80 -320 2 0 {name=p23 sig_type=std_logic lab=g}
