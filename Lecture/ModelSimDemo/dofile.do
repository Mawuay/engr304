vsim -gui work.my304demo
# vsim -gui work.my304demo 
# //  ModelSim ALTERA 10.1d Nov  2 2012 
# //
# //  Copyright 1991-2012 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION
# //  WHICH IS THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS
# //  LICENSORS AND IS SUBJECT TO LICENSE TERMS.
# //
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.my304demo(combined)
add wave  \
sim:/my304demo/A \
sim:/my304demo/B \
sim:/my304demo/F1 \
sim:/my304demo/F2
add list  \
sim:/my304demo/A \
sim:/my304demo/B \
sim:/my304demo/F1 \
sim:/my304demo/F2
force A 0 0 ns, 1 40 ns -r 80 ns
    force B 0 0 ns, 1 80 ns -r 160 ns
run 320 ns
f
# ambiguous command name "f": fblocked fconfigure fcopy fcover file fileevent find findExec flush for force foreach format formatTime
trnscrips file ""
# invalid command name "trnscrips"
transcript ""
# transcript: unknown argument: 
transcript file ""
