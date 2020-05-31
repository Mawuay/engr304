library verilog;
use verilog.vl_types.all;
entity Problem2 is
    port(
        Resetn          : in     vl_logic;
        Clock           : in     vl_logic;
        Stop1           : in     vl_logic;
        Stop2           : in     vl_logic;
        DIG1            : out    vl_logic_vector(3 downto 0);
        DIG0            : out    vl_logic_vector(3 downto 0);
        Dice1           : out    vl_logic_vector(2 downto 0);
        Dice2           : out    vl_logic_vector(2 downto 0)
    );
end Problem2;
