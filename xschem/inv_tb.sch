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
C {devices/vsource.sym} -180 30 0 0 {name=Vin value="pulse(0 1.8 0 .1n .1n 5n 10n)"}
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
.param VCC=1.8
.tran 1n 25n
.save all alli
*.dc Vin 0 1.8 1m
*let abs_val = (abs(deriv(out)) >= 1) * 1.8
*.meas dc vth find v(in) when v(in)=v(out)
*.meas dc VOH find out=0.2
*.meas dc VOL find out=1.6
*.meas dc VIH find in when abs_out=1 cross=1
*.meas dc VIL find in when abs_out=1 cross=LAST
"}
C {devices/parax_cap.sym} 10 -10 0 0 {name=C1 gnd=0 value=.3p m=1}
