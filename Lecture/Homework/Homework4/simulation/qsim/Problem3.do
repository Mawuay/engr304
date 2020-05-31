onerror {quit -f}
vlib work
vlog -work work Problem3.vo
vlog -work work Problem3.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Problem_3_vlg_vec_tst
vcd file -direction Problem3.msim.vcd
vcd add -internal Problem_3_vlg_vec_tst/*
vcd add -internal Problem_3_vlg_vec_tst/i1/*
add wave /*
run -all
