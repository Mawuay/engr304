library verilog;
use verilog.vl_types.all;
entity Problem2_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        Resetn          : in     vl_logic;
        Stop1           : in     vl_logic;
        Stop2           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Problem2_vlg_sample_tst;
