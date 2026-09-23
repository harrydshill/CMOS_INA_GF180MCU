v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 10 -0 {}
T {vdd needs to become a variable to sweep
} -420.0000000000007 -120.0000000000001 0 0 0.2 0.2 {}
N -160 -20 -70 -20 {lab=INP}
N 0 -90 0 -50 {lab=PSUP}
N -0 50 0 90 {lab=NSUP}
N -320 -50 -300 -50 {lab=PSUP}
N -300 -50 -300 -30 {lab=PSUP}
N -320 50 -300 50 {lab=NSUP}
N -300 30 -300 50 {lab=NSUP}
N -300 50 -300 70 {lab=NSUP}
N -190 50 -190 90 {lab=NSUP}
N -190 -20 -160 -20 {lab=INP}
N -190 -20 -190 -0 {lab=INP}
N 30 140 70 140 {lab=#net1}
N 70 0 70 140 {lab=#net1}
N -100 20 -70 20 {lab=INM}
N -100 20 -100 140 {lab=INM}
N -100 140 -30 140 {lab=INM}
C {gnd.sym} -300.0000000000007 70.0000000000002 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 0 -90 0 0 {name=p1 sig_type=std_logic lab=PSUP
}
C {lab_wire.sym} -320 -50 0 0 {name=p2 sig_type=std_logic lab=PSUP


}
C {lab_wire.sym} -320 50 0 0 {name=p3 sig_type=std_logic lab=NSUP
}
C {lab_wire.sym} 0 90 0 0 {name=p4 sig_type=std_logic lab=NSUP
}
C {lab_wire.sym} -190 90 0 0 {name=p5 sig_type=std_logic lab=NSUP
}
C {vsource.sym} -300 0 0 0 {name=VDD value=\{vdd\} savecurrent=false}
C {vsource.sym} -190 30 0 0 {name=VCM value=\{vcm\} savecurrent=false}
C {code_shown.sym} 230 200 0 0 {name=NGSPICE only_toplevel=true
value="
.dc VOS -1 1 50m
.plot dc v(inm)-v(inp)
.meas dc vos when v(inp)=v(inm) cross=1
"}
C {noconn.sym} -70 50 0 0 {name=l1}
C {noconn.sym} -70 40 0 0 {name=l2}
C {blocks/aux_amp/aux_amp.sym} 10 -10 0 0 {name=x1}
C {code_shown.sym} 220 -210 0 0 {name=MODELS only_toplevel=false value=
"
.include $::180MCU_MODELS/design.ngspice

.lib $::180MCU_MODELS/sm141064.ngspice @MOS@
.lib $::180MCU_MODELS/sm141064.ngspice @RES@
.lib $::180MCU_MODELS/sm141064.ngspice @BJT@
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical

.temp @TEMP@

.param vcm=@VCM@
.param vdd=@VDD@

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0

"}
C {vsource.sym} 0 140 1 0 {name=VOS value=0 savecurrent=false}
C {lab_wire.sym} -90 20 0 0 {name=p6 sig_type=std_logic lab=INM
}
C {lab_wire.sym} -90 -20 0 0 {name=p7 sig_type=std_logic lab=INP
}
