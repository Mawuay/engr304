library ieee;
use ieee.std_logic_1164.all;

entity Problem_2 is
 port (
A, B, C : IN bit;  
F : OUT bit 
 );
 
end entity Problem_2;

architecture Behavioral of Problem_2 is 
begin
process (A,B,C) is
begin 
  if (A = '0' and B = '0' and C = '0') then
      F <= '0'; 
      
  elsif (A = '1' and B = '1' and C = '1') then
      F <= '0';
  
  else 
      F <= '1';
  end if;

end process;
end Behavioral;

