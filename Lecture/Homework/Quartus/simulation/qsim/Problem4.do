onerror {quit -f}
vlib work
vlog -work work Problem4.vo
vlog -work work Problem4.vt
vsim -novopt -c -t 1ps -L max7000s_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Problem4_vlg_vec_tst
vcd file -direction Problem4.msim.vcd
vcd add -internal Problem4_vlg_vec_tst/*
vcd add -internal Problem4_vlg_vec_tst/i1/*
add wave /*
run -all
