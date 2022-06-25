v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 270 -440 270 -370 { lab=Collector}
N 270 -560 270 -500 { lab=Emitter}
N 160 -370 270 -370 { lab=Collector}
N 160 -560 270 -560 { lab=Emitter}
N 230 -600 230 -470 { lab=Base}
N 160 -600 230 -600 { lab=Base}
C {devices/iopin.sym} 170 -600 2 0 {name=p1 lab=Base}
C {devices/iopin.sym} 170 -560 2 0 {name=p2 lab=Emitter}
C {devices/iopin.sym} 170 -370 2 0 {name=p3 lab=Collector}
C {devices/iopin.sym} 180 -790 2 0 {name=p4 lab=VPWR

}
C {devices/iopin.sym} 180 -760 2 0 {name=p5 lab=VGND

}
C {xschem_sky130/sky130_fd_pr/pnp_05v5.sym} 250 -470 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {devices/iopin.sym} 180 -730 2 0 {name=p6 lab=VSUBS


}
