v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {1u} -260 -460 0 0 0.4 0.4 {}
N -220 -510 -220 -480 {lab=PSUP_LV}
N -220 -430 -160 -430 {lab=g}
N -180 -480 -160 -480 {lab=g}
N -160 -480 -160 -430 {lab=g}
N -220 -450 -220 -430 {lab=g}
N -220 -430 -220 -410 {lab=g}
N -100 -510 -100 -480 {lab=PSUP_LV}
N -160 -480 -140 -480 {lab=g}
N -100 -450 -100 -430 {lab=#net1}
N -100 -430 -100 -410 {lab=#net1}
N -220 -530 -100 -530 {lab=PSUP_LV}
N -220 -350 -220 -320 {lab=0}
N -100 -530 -100 -510 {lab=PSUP_LV}
N -220 -530 -220 -510 {lab=PSUP_LV}
N -100 -390 -100 -380 {lab=#net1}
N -100 -410 -100 -390 {lab=#net1}
N -100 -380 -100 -290 {lab=#net1}
N 30 -510 30 -480 {lab=PSUP_LV}
N -30 -480 -10 -480 {lab=g}
N 30 -450 30 -430 {lab=#net2}
N 30 -430 30 -410 {lab=#net2}
N 30 -530 30 -510 {lab=PSUP_LV}
N 30 -390 30 -380 {lab=#net2}
N 30 -410 30 -390 {lab=#net2}
N 30 -380 30 -290 {lab=#net2}
N -100 -530 30 -530 {lab=PSUP_LV}
N -20 -290 -20 -200 {lab=#net2}
N -20 -290 30 -290 {lab=#net2}
N -40 -290 -40 -200 {lab=#net1}
N -100 -290 -40 -290 {lab=#net1}
N -420 -140 -420 -120 {lab=VCM}
N -440 -140 -420 -140 {lab=VCM}
N -380 -140 -380 -120 {lab=VCM}
N -420 -140 -380 -140 {lab=VCM}
N -380 -60 -380 -30 {lab=INM}
N -420 -60 -420 30 {lab=INP}
N -380 -30 -260 -30 {lab=INM}
N -420 30 -260 30 {lab=INP}
N -260 -30 -140 -30 {lab=INM}
N -140 -30 -130 -30 {lab=INM}
N -260 30 -130 30 {lab=INP}
N 200 110 200 130 {lab=0}
N 200 30 200 50 {lab=Von}
N 160 -30 200 -30 {lab=Vop}
N 160 30 200 30 {lab=Von}
N 260 110 260 130 {lab=0}
N 260 30 260 50 {lab=Vop}
N 260 -30 260 10 {lab=Vop}
N 200 -30 260 -30 {lab=Vop}
N 260 10 260 30 {lab=Vop}
N -680 260 -680 280 {lab=0}
N -680 280 -660 280 {lab=0}
N -680 180 -680 200 {lab=CONF1}
N -680 180 -660 180 {lab=CONF1}
N -470 180 -470 200 {lab=CONF0}
N -470 180 -450 180 {lab=CONF0}
N -470 260 -470 280 {lab=0}
N -470 280 -450 280 {lab=0}
N -1080 260 -1080 280 {lab=0}
N -1080 280 -1060 280 {lab=0}
N -1080 180 -1080 200 {lab=CONF3}
N -1080 180 -1060 180 {lab=CONF3}
N -870 180 -870 200 {lab=CONF2}
N -870 180 -850 180 {lab=CONF2}
N -870 260 -870 280 {lab=0}
N -870 280 -850 280 {lab=0}
N -1280 260 -1280 280 {lab=0}
N -1280 280 -1260 280 {lab=0}
N -1280 180 -1280 200 {lab=CONF4}
N -1280 180 -1260 180 {lab=CONF4}
N -1200 50 -1180 50 {lab=0}
N -1200 30 -1200 50 {lab=0}
N -1200 -50 -1200 -30 {lab=PSUP_LV}
N -1200 -50 -1180 -50 {lab=PSUP_LV}
N -1280 50 -1260 50 {lab=0}
N -1280 30 -1280 50 {lab=0}
N -1280 -50 -1280 -30 {lab=VCM}
N -1280 -50 -1260 -50 {lab=VCM}
C {symbols/pfet_03v3.sym} -200 -480 0 1 {name=M7
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
C {symbols/pfet_03v3.sym} -120 -480 0 0 {name=M1
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
C {lab_pin.sym} 20 -530 2 0 {name=p24 sig_type=std_logic lab=PSUP_LV}
C {isource.sym} -220 -380 0 0 {name=I1 value=1u}
C {lab_pin.sym} -220 -320 2 0 {name=p25 sig_type=std_logic lab=0}
C {lab_pin.sym} -160 -440 2 0 {name=p26 sig_type=std_logic lab=g}
C {lab_pin.sym} 0 -200 2 0 {name=p1 sig_type=std_logic lab=PSUP_LV}
C {symbols/pfet_03v3.sym} 10 -480 0 0 {name=M2
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
C {lab_pin.sym} -20 -480 2 1 {name=p2 sig_type=std_logic lab=g}
C {lab_pin.sym} 0 200 2 0 {name=p3 sig_type=std_logic lab=0}
C {lab_pin.sym} -440 -140 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {vsource.sym} -380 -90 2 1 {name=VDM2 value="DC 0 AC 0.5" savecurrent=false}
C {vsource.sym} -420 -90 0 1 {name=VDM1 value="DC 0 AC 0.5" savecurrent=false}
C {lab_pin.sym} -420 30 0 0 {name=p5 sig_type=std_logic lab=INP}
C {lab_pin.sym} -380 -30 0 0 {name=p6 sig_type=std_logic lab=INM
}
C {lab_pin.sym} -130 0 0 0 {name=p4 sig_type=std_logic lab=VCM}
C {lab_wire.sym} 200 30 0 1 {name=p7 sig_type=std_logic lab=Von
}
C {lab_pin.sym} 200 130 0 0 {name=p11 sig_type=std_logic lab=0}
C {capa.sym} 200 80 0 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"
}
C {lab_wire.sym} 260 -30 0 1 {name=p8 sig_type=std_logic lab=Vop
}
C {lab_pin.sym} 260 130 0 0 {name=p9 sig_type=std_logic lab=0}
C {capa.sym} 260 80 0 0 {name=C2
m=1
value=1n
footprint=1206
device="ceramic capacitor"
}
C {code_shown.sym} 420 -550 0 0 {name=MODELS only_toplevel=true
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
.param cbit3=0
.param cbit4=0

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0
"}
C {code_shown.sym} 400 -30 0 0 {name=NGSPICE only_toplevel=true value="
.control
set units=degrees
save all
ac dec 100 1 1G

let Vid = v(INP) - v(INM)
let Vo = v(Vop) - v(Von)
let aol = v(Vo) / v(Vid)
let gain_db = db(aol)
let phase_deg = cph(aol)

write tb_top_ac.raw gain_db phase_deg

.endc
"}
C {lab_wire.sym} -660 180 0 1 {name=p22 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -450 180 0 1 {name=p28 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -660 280 0 1 {name=p29 sig_type=std_logic lab=0}
C {lab_wire.sym} -450 280 0 1 {name=p30 sig_type=std_logic lab=0}
C {vsource.sym} -680 230 0 0 {name=VBIT1 value="\{cbit1 * 3.3\}" savecurrent=false
}
C {vsource.sym} -470 230 0 0 {name=VBIT0 value="\{cbit0 * 3.3\}" savecurrent=false
}
C {lab_wire.sym} -1060 180 0 1 {name=p10 sig_type=std_logic lab=CONF3}
C {lab_wire.sym} -850 180 0 1 {name=p12 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -1060 280 0 1 {name=p14 sig_type=std_logic lab=0}
C {lab_wire.sym} -850 280 0 1 {name=p15 sig_type=std_logic lab=0}
C {vsource.sym} -1080 230 0 0 {name=VBIT2 value="\{cbit3 * 3.3\}" savecurrent=false
}
C {vsource.sym} -870 230 0 0 {name=VBIT3 value="\{cbit2 * 3.3\}" savecurrent=false
}
C {lab_wire.sym} -1260 180 0 1 {name=p16 sig_type=std_logic lab=CONF4}
C {lab_wire.sym} -1260 280 0 1 {name=p17 sig_type=std_logic lab=0}
C {vsource.sym} -1280 230 0 0 {name=VBIT4 value="\{cbit4 * 3.3\}" savecurrent=false
}
C {vsource.sym} -1200 0 0 0 {name=VDD1 value=\{vdd\} savecurrent=false}
C {lab_pin.sym} -1180 50 2 0 {name=p18 sig_type=std_logic lab=0}
C {lab_pin.sym} -1180 -50 2 0 {name=p19 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -1260 50 2 0 {name=p20 sig_type=std_logic lab=0}
C {lab_pin.sym} -1260 -50 2 0 {name=p21 sig_type=std_logic lab=VCM}
C {vsource.sym} -1280 0 0 0 {name=VCM value=\{vdd/2\} savecurrent=false}
C {lab_wire.sym} -130 70 0 0 {name=p23 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -130 90 0 0 {name=p27 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -130 110 0 0 {name=p31 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -130 -90 0 0 {name=p32 sig_type=std_logic lab=CONF3}
C {lab_wire.sym} -130 -70 0 0 {name=p33 sig_type=std_logic lab=CONF4}
C {top.sym} 20 0 0 0 {name=x1}
C {lab_pin.sym} -20 200 2 0 {name=p34 sig_type=std_logic lab=0}
C {lab_pin.sym} -40 200 2 0 {name=p35 sig_type=std_logic lab=0}
