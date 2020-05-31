-- This design file implements an XOR function in two ways
library ieee;
use ieee.std_logic_1164.all;

entity My304Demo is
port (
  A, B : in std_logic;
  F1, F2 : out std_logic  -- note the lack of ";" for the last port
);
end entity My304Demo;

architecture combined of My304Demo is
begin
  -- simple "Concurrent Signal Assignment" statement
  -- replace the blank line with a boolean expression for XOR
  F1 <= (A xor B);

  -- "Conditional Signal Assignment" statement
  -- Replace blanks with code to implement XOR
  -- The "/-" operator is the "not equal" conditional test
  F2 <= '1' when ( A /= B) else
       '0';
end combined ;

