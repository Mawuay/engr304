library verilog;
use verilog.vl_types.all;
entity Problem8_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        FWD             : in     vl_logic;
        Resetn          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Problem8_vlg_sample_tst;
