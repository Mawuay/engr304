onerror {quit -f}
vlib work
vlog -work work ThunderBird.vo
vlog -work work ThunderBird.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ThunderBird_vlg_vec_tst
vcd file -direction ThunderBird.msim.vcd
vcd add -internal ThunderBird_vlg_vec_tst/*
vcd add -internal ThunderBird_vlg_vec_tst/i1/*
add wave /*
run -all
