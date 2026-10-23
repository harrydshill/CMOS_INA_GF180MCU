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
T {1u} -180 -300 0 0 0.4 0.4 {}
N -920 50 -900 50 {lab=0}
N -920 30 -920 50 {lab=0}
N -920 -50 -920 -30 {lab=PSUP_LV}
N -920 -50 -900 -50 {lab=PSUP_LV}
N -1000 50 -980 50 {lab=0}
N -1000 30 -1000 50 {lab=0}
N -1000 -50 -1000 -30 {lab=VCM}
N -1000 -50 -980 -50 {lab=VCM}
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
N -0 150 20 150 {lab=0}
N -0 130 0 150 {lab=0}
N -20 130 -20 150 {lab=PSUP_LV}
N -40 150 -20 150 {lab=PSUP_LV}
N -140 -350 -140 -320 {lab=PSUP_LV}
N -140 -270 -80 -270 {lab=g}
N -100 -320 -80 -320 {lab=g}
N -80 -320 -80 -270 {lab=g}
N -140 -290 -140 -270 {lab=g}
N -140 -270 -140 -250 {lab=g}
N -20 -350 -20 -320 {lab=PSUP_LV}
N -80 -320 -60 -320 {lab=g}
N -20 -290 -20 -270 {lab=#net1}
N -20 -270 -20 -250 {lab=#net1}
N -140 -370 -20 -370 {lab=PSUP_LV}
N -140 -190 -140 -160 {lab=0}
N -20 -370 -20 -350 {lab=PSUP_LV}
N -140 -370 -140 -350 {lab=PSUP_LV}
N -20 -230 -20 -220 {lab=#net1}
N -20 -250 -20 -230 {lab=#net1}
N -20 -220 -20 -130 {lab=#net1}
N -920 180 -920 200 {lab=0}
N -920 200 -900 200 {lab=0}
N -920 100 -920 120 {lab=CONF1}
N -920 100 -900 100 {lab=CONF1}
N -710 100 -710 120 {lab=CONF0}
N -710 100 -690 100 {lab=CONF0}
N -710 180 -710 200 {lab=0}
N -710 200 -690 200 {lab=0}
N -1130 180 -1130 200 {lab=0}
N -1130 200 -1110 200 {lab=0}
N -1130 100 -1130 120 {lab=CONF2}
N -1130 100 -1110 100 {lab=CONF2}
N -1290 180 -1290 200 {lab=0}
N -1290 200 -1270 200 {lab=0}
N -1290 100 -1290 120 {lab=CONF3}
N -1290 100 -1270 100 {lab=CONF3}
N -1500 180 -1500 200 {lab=0}
N -1500 200 -1480 200 {lab=0}
N -1500 100 -1500 120 {lab=CONF4}
N -1500 100 -1480 100 {lab=CONF4}
C {code_shown.sym} 580 -490 0 0 {name=MODELS only_toplevel=true
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

.param cbit0=1
.param cbit1=0
.param cbit2=1
.param cbit3=0
.param cbit4=0

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

*write tb_LPF_gain.raw gain_db phase_deg
write tb_LPF_gain.raw

.endc
"}
C {vsource.sym} -920 0 0 0 {name=VDD1 value=\{vdd\} savecurrent=false}
C {lab_pin.sym} -900 50 2 0 {name=p16 sig_type=std_logic lab=0}
C {lab_pin.sym} -900 -50 2 0 {name=p17 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -980 50 2 0 {name=p18 sig_type=std_logic lab=0}
C {lab_pin.sym} -980 -50 2 0 {name=p19 sig_type=std_logic lab=VCM}
C {vsource.sym} -1000 0 0 0 {name=VCM value=\{vdd/2\} savecurrent=false}
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
C {blocks/LPF/LPF.sym} -100 0 0 0 {name=x2}
C {lab_pin.sym} -330 -310 2 1 {name=p15 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -330 -290 2 1 {name=p20 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -330 -270 2 1 {name=p21 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -40 150 2 1 {name=p23 sig_type=std_logic lab=PSUP_LV}
C {symbols/pfet_03v3.sym} -120 -320 0 1 {name=M7
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
C {symbols/pfet_03v3.sym} -40 -320 0 0 {name=M1
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
C {lab_pin.sym} -20 -370 2 0 {name=p24 sig_type=std_logic lab=PSUP_LV}
C {isource.sym} -140 -220 0 0 {name=I1 value=1u}
C {lab_pin.sym} -140 -160 2 0 {name=p25 sig_type=std_logic lab=0}
C {lab_pin.sym} -80 -280 2 0 {name=p26 sig_type=std_logic lab=g}
C {lab_pin.sym} -120 0 0 0 {name=p27 sig_type=std_logic lab=VCM}
C {lab_wire.sym} -900 100 0 1 {name=p22 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -690 100 0 1 {name=p28 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -900 200 0 1 {name=p29 sig_type=std_logic lab=0}
C {lab_wire.sym} -690 200 0 1 {name=p30 sig_type=std_logic lab=0}
C {vsource.sym} -1130 150 0 0 {name=CBIT2 value=\{cbit2\} savecurrent=false
}
C {lab_wire.sym} -1110 100 0 1 {name=VBIT1 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -1110 200 0 1 {name=VBIT3 sig_type=std_logic lab=0}
C {vsource.sym} -920 150 0 0 {name=CBIT1 value=\{cbit1\} savecurrent=false
}
C {vsource.sym} -710 150 0 0 {name=CBIT0 value=\{cbit0\} savecurrent=false
}
C {lab_wire.sym} -120 -60 0 0 {name=p11 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -120 -80 0 0 {name=p12 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -120 -100 0 0 {name=VBIT2 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -1270 100 0 1 {name=p14 sig_type=std_logic lab=CONF3}
C {lab_wire.sym} -1270 200 0 1 {name=p31 sig_type=std_logic lab=0}
C {vsource.sym} -1500 150 0 0 {name=CBIT4 value=\{cbit4\} savecurrent=false
}
C {lab_wire.sym} -1480 100 0 1 {name=VBIT4 sig_type=std_logic lab=CONF4}
C {lab_wire.sym} -1480 200 0 1 {name=VBIT5 sig_type=std_logic lab=0}
C {vsource.sym} -1290 150 0 0 {name=CBIT3 value=\{cbit3\} savecurrent=false
}
C {lab_wire.sym} -120 80 0 0 {name=p7 sig_type=std_logic lab=CONF3}
C {lab_wire.sym} -120 60 0 0 {name=p8 sig_type=std_logic lab=CONF4}
