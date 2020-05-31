library verilog;
use verilog.vl_types.all;
entity ThunderBird_vlg_check_tst is
    port(
        LeftTurn        : in     vl_logic;
        LeftTurn1       : in     vl_logic;
        LeftTurn2       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ThunderBird_vlg_check_tst;
