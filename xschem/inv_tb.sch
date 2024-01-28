v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 -20 10 -20 {
lab=out}
N 10 -20 40 -20 {
lab=out}
C {not.sym} -50 -20 0 0 {name=x1 m=1 
+ W_N=1 L_N=0.15 W_P=2 L_P=0.15 
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/vsource.sym} -180 30 0 0 {name=Vin value="pulse(0 1.8 .1n .1n .1n 3n 6n)"}
C {devices/lab_pin.sym} -180 0 0 0 {name=p1 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} -90 -20 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} -180 60 0 0 {name=p3 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 40 -20 0 1 {name=p4 sig_type=std_logic lab=out}
C {devices/code.sym} 120 -180 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt"
spice_ignore=false}
C {devices/code.sym} 120 -40 0 0 {name=analysis only_toplevel=true
value="
vvcc vcc 0 dc 1.8
vvss vss 0 dc 0
.save all alli
.tran 1n 15n
.control
plot in out
.endc
"}
C {devices/parax_cap.sym} 10 -10 0 0 {name=C1 gnd=0 value=0.2p m=1}
