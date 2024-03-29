v {xschem version=3.4.5 file_version=1.2
* Copyright 2021 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {
y <= not a after 0.1 ns ;}
K {}
V {assign #150 y=~a ;}
S {}
E {}
N 420 -260 420 -230 {lab=y}
N 420 -260 460 -260 {lab=y}
N 380 -260 380 -200 {lab=a}
N 340 -260 380 -260 {lab=a}
N 420 -400 420 -360 {lab=VCCPIN}
N 420 -160 420 -140 {lab=VSSPIN}
N 420 -200 500 -200 { lab=VSSPIN}
N 500 -200 500 -160 { lab=VSSPIN}
N 420 -160 500 -160 { lab=VSSPIN}
N 420 -360 500 -360 { lab=VCCPIN}
N 500 -360 500 -320 { lab=VCCPIN}
N 420 -320 500 -320 { lab=VCCPIN}
N 380 -320 380 -260 { lab=a}
N 420 -290 420 -260 {lab=y}
N 420 -170 420 -160 { lab=VSSPIN}
N 420 -360 420 -350 { lab=VCCPIN}
C {devices/opin.sym} 460 -260 0 0 {name=p1 lab=y verilog_type=wire}
C {devices/ipin.sym} 340 -260 0 0 {name=p2 lab=a}
C {devices/lab_pin.sym} 420 -400 0 0 {name=p149 lab=VCCPIN}
C {devices/lab_pin.sym} 420 -140 0 0 {name=p3 lab=VSSPIN}
C {sky130_fd_pr/pfet_01v8.sym} 400 -320 0 0 {name=M3
L=L_P
W=W_P
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 400 -200 0 0 {name=M2
L=L_N
W=W_N
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
