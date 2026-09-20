v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 270 -690 1070 -290 {flags=graph
y1=0.006544961
y2=0.046901286
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.8645626
x2=6.6544183
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
color=4
node="\\"Offset;Vo1 vcom -\\""}
P 4 1 10 -0 {}
T {vdd needs to become a variable to sweep
} -420.0000000000007 -120.0000000000001 0 0 0.2 0.2 {}
N -160 -30 -70 -30 {lab=VCOM}
N -160 -30 -160 -10 {lab=VCOM}
N 0 -90 0 -50 {lab=PSUP}
N -110 -50 -70 -50 {lab=#net1}
N -110 50 -70 50 {lab=#net2}
N -0 50 0 90 {lab=NSUP}
N -320 -50 -300 -50 {lab=PSUP}
N -300 -50 -300 -30 {lab=PSUP}
N -320 50 -300 50 {lab=NSUP}
N -300 30 -300 50 {lab=NSUP}
N -300 50 -300 70 {lab=NSUP}
N -160 50 -160 90 {lab=NSUP}
C {gnd.sym} -300.0000000000007 70.0000000000002 0 0 {name=l4 lab=GND}
C {noconn.sym} -110 -50 0 0 {name=l5}
C {noconn.sym} -110 50 0 0 {name=l6}
C {lib/aux_amp.sym} 10 -10 0 0 {name=x1}
C {lab_wire.sym} 0 -90 0 0 {name=p1 sig_type=std_logic lab=PSUP
}
C {lab_wire.sym} -320 -50 0 0 {name=p2 sig_type=std_logic lab=PSUP


}
C {lab_wire.sym} -320 50 0 0 {name=p3 sig_type=std_logic lab=NSUP
}
C {lab_wire.sym} 0 90 0 0 {name=p4 sig_type=std_logic lab=NSUP
}
C {lab_wire.sym} -160 90 0 0 {name=p5 sig_type=std_logic lab=NSUP
}
C {vsource.sym} -300 0 0 0 {name=VDD value=\{VDDVAL\} savecurrent=false}
C {vsource.sym} -160 20 0 0 {name=VCM value=\{VDDVAL/2\} savecurrent=false}
C {lab_wire.sym} 70 0 0 1 {name=p6 sig_type=std_logic lab=Vo1
}
C {lab_wire.sym} -70 30 0 0 {name=p7 sig_type=std_logic lab=Vo1
}
C {devices/code_shown.sym} 170 -130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {code_shown.sym} 160 50 0 0 {name=NGSPICE only_toplevel=true
value="
.param VDDVAL=4
.control
save all
dc VDD 4 6 0.1
write tb_aux_opamp_offset_only.raw
.endc
"

"}
C {lab_wire.sym} -160 -30 0 0 {name=p8 sig_type=std_logic lab=VCOM}
