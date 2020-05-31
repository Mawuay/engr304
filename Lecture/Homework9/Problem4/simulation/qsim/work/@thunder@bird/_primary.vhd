library verilog;
use verilog.vl_types.all;
entity ThunderBird is
    port(
        LeftTurn1       : out    vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        Lft             : in     vl_logic;
        LeftTurn2       : out    vl_logic;
        LeftTurn        : out    vl_logic
    );
end ThunderBird;
