library verilog;
use verilog.vl_types.all;
entity Problem8 is
    port(
        Resetn          : in     vl_logic;
        FWD             : in     vl_logic;
        Clock           : in     vl_logic;
        Q               : out    vl_logic_vector(2 downto 0)
    );
end Problem8;
