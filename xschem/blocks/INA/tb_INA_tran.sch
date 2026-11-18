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
N 170 110 170 130 {lab=0}
N 170 30 170 50 {lab=VON}
N 230 110 230 130 {lab=0}
N 230 30 230 50 {lab=VOP}
N 230 -30 230 30 {lab=VOP}
N 180 -30 230 -30 {lab=VOP}
N -680 330 -680 350 {lab=0}
N -680 350 -660 350 {lab=0}
N -680 250 -680 270 {lab=CONF1}
N -680 250 -660 250 {lab=CONF1}
N -490 250 -490 270 {lab=CONF0}
N -490 250 -470 250 {lab=CONF0}
N -490 330 -490 350 {lab=0}
N -490 350 -470 350 {lab=0}
N -880 330 -880 350 {lab=0}
N -880 350 -860 350 {lab=0}
N -880 250 -880 270 {lab=CONF2}
N -880 250 -860 250 {lab=CONF2}
C {code_shown.sym} 580 -410 0 0 {name=MODELS only_toplevel=true
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

.param cbit0=0
.param cbit1=0
.param cbit2=0

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0
"}
C {code_shown.sym} 580 70 0 0 {name=NGSPICE only_toplevel=true value="
.control
set units=degrees
save all
tran 100n 2000u

let Vi = v(INP) - v(INM)
let Vo = v(Vop) - v(Von)

write tb_INA_tran.raw Vo
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
C {vsource.sym} -240 -90 2 1 {name=VDM2 value="PULSE(0 0.5m 2.5u 1n 1n 500u 1000u 100)" savecurrent=false}
C {vsource.sym} -280 -90 0 1 {name=VDM1 value="PULSE(0 0.5m 2.5u 1n 1n 500u 1000u 100)" savecurrent=false}
C {lab_pin.sym} -280 30 0 0 {name=p5 sig_type=std_logic lab=INP}
C {lab_pin.sym} -240 -30 0 0 {name=p6 sig_type=std_logic lab=INM
}
C {blocks/INA/INA.sym} -100 0 0 0 {name=x1}
C {lab_pin.sym} -120 0 0 0 {name=p12 sig_type=std_logic lab=VCM}
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
C {lab_wire.sym} -120 50 0 0 {name=p8 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -120 70 0 0 {name=p7 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -120 90 0 0 {name=p9 sig_type=std_logic lab=CONF2}
C {lab_pin.sym} 170 130 0 0 {name=p24 sig_type=std_logic lab=0}
C {capa.sym} 170 80 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {lab_pin.sym} 230 130 0 0 {name=p25 sig_type=std_logic lab=0}
C {capa.sym} 230 80 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {lab_wire.sym} -660 250 0 1 {name=p26 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -470 250 0 1 {name=p27 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -660 350 0 1 {name=p31 sig_type=std_logic lab=0}
C {lab_wire.sym} -470 350 0 1 {name=p32 sig_type=std_logic lab=0}
C {vsource.sym} -680 300 0 0 {name=CBIT1 value="\{cbit1 * 3.3\}" savecurrent=false
}
C {vsource.sym} -490 300 0 0 {name=CBIT0 value="\{cbit0 * 3.3\}" savecurrent=false
}
C {lab_wire.sym} -860 250 0 1 {name=p33 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -860 350 0 1 {name=p34 sig_type=std_logic lab=0}
C {vsource.sym} -880 300 0 0 {name=CBIT2 value="\{cbit2 * 3.3\}" savecurrent=false
}
