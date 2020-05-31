library verilog;
use verilog.vl_types.all;
entity Problem2_vlg_check_tst is
    port(
        Dice1           : in     vl_logic_vector(2 downto 0);
        Dice2           : in     vl_logic_vector(2 downto 0);
        DIG0            : in     vl_logic_vector(3 downto 0);
        DIG1            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Problem2_vlg_check_tst;
