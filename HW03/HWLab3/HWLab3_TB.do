# start the simulation
vsim -gui work.hwlab3_testbench(test)
add wave -position insertpoint  \
sim:/hwlab3_testbench/SW \
sim:/hwlab3_testbench/KEY \
sim:/hwlab3_testbench/LEDG \
sim:/hwlab3_testbench/LEDR \
sim:/hwlab3_testbench/HEX0 \
sim:/hwlab3_testbench/HEX1 \
sim:/hwlab3_testbench/HEX2 \
sim:/hwlab3_testbench/HEX3 \
sim:/hwlab3_testbench/HEX4 \
sim:/hwlab3_testbench/HEX5 \
sim:/hwlab3_testbench/HEX6 \
sim:/hwlab3_testbench/HEX7 \
sim:/hwlab3_testbench/sigi \
sim:/hwlab3_testbench/sigj \
sim:/hwlab3_testbench/SWSig
add wave -position insertpoint \
/hwlab3_testbench/Tester/i \
/hwlab3_testbench/Tester/j \
/hwlab3_testbench/Tester/newi \
/hwlab3_testbench/Tester/newj \
/hwlab3_testbench/Tester/ProdInt \
/hwlab3_testbench/Tester/i_invalid \
/hwlab3_testbench/Tester/j_invalid \
/hwlab3_testbench/Tester/inA \
/hwlab3_testbench/Tester/inB \
/hwlab3_testbench/Tester/ProdVect 

echo "Be patient. This may take a few seconds to complete"
# uncomment the run line to use it
run 2800 us
