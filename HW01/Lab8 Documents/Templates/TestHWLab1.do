vsim -gui work.hwlab1_testbench(test)

add wave -position end  sim:/hwlab1_testbench/sigi
add wave -position end  sim:/hwlab1_testbench/sigj
add wave -position end  -radix hexadecimal sim:/hwlab1_testbench/SW
add wave -position end  -radix hexadecimal sim:/hwlab1_testbench/HEX0
add wave -position end  -radix hexadecimal sim:/hwlab1_testbench/HEX1
add wave -position end  -radix hexadecimal sim:/hwlab1_testbench/HEX2
add wave -position end  -radix hexadecimal sim:/hwlab1_testbench/HEX3
add wave -position end  -radix hexadecimal sim:/hwlab1_testbench/HEX4
add wave -position end  -radix hexadecimal sim:/hwlab1_testbench/HEX5
add wave -position end  -radix hexadecimal sim:/hwlab1_testbench/HEX6
add wave -position end  -radix hexadecimal sim:/hwlab1_testbench/HEX7
run 660000 ns

