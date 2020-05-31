library verilog;
use verilog.vl_types.all;
entity ThunderBird_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        Lft             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ThunderBird_vlg_sample_tst;
