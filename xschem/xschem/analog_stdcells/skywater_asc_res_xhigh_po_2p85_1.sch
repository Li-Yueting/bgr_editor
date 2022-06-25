v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 370 -590 370 -580 { lab=Rin}
N 370 -610 370 -590 { lab=Rin}
N 370 -520 370 -490 { lab=#net1}
N 310 -550 350 -550 { lab=VGND}
N 310 -550 310 -460 { lab=VGND}
N 310 -460 350 -460 { lab=VGND}
N 370 -490 520 -490 { lab=#net1}
N 350 -460 500 -460 { lab=VGND}
N 370 -630 370 -610 { lab=Rin}
N 500 -520 500 -460 { lab=VGND}
N 370 -650 370 -630 { lab=Rin}
N 370 -650 390 -650 { lab=Rin}
N 310 -580 310 -550 { lab=VGND}
N 290 -610 310 -610 { lab=VGND}
N 310 -610 310 -580 { lab=VGND}
N 520 -560 520 -550 { lab=Rout}
N 520 -560 540 -560 { lab=Rout}
C {sky130_fd_pr/res_xhigh_po.sym} 370 -550 0 0 {name=R1
W=2.85
L=7.88
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} 520 -520 0 0 {name=R2
W=2.85
L=7.88
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/iopin.sym} 380 -650 0 0 {name=p1 lab=Rin}
C {devices/iopin.sym} 530 -560 0 0 {name=p2 lab=Rout}
C {devices/iopin.sym} 290 -630 0 0 {name=p3 lab=VPWR
}
C {devices/iopin.sym} 300 -610 2 0 {name=p4 lab=VGND}
