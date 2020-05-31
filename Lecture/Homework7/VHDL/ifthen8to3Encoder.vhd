
library IEEE;
use IEEE.STD_LOGIC_1164.all;   
use ieee.numeric_std.all;

entity priority_encoder_8_3 is
     port(
         A : in STD_LOGIC_VECTOR(7 downto 0);
         Z : out STD_LOGIC_VECTOR(2 downto 0)
         );
end priority_encoder_8_3;


architecture priority_enc_arc of priority_encoder_8_3 is
begin
process (A)
	begin
	if A(7) = '1' then
    Z <= "111";

	elsif A(6)= '1' then
		Z <= "110";
	 
	 elsif A(5)='1' then
		Z <= "110";
	 
	 elsif A(4)='1' then
		Z <= "100";
	 
	 elsif A(3)='1' then
		Z <= "011";
	 
	 elsif A(2)='1' then
		Z <= "010";
	 
	 elsif A(1)='1' then
		Z <= "001";
	 
	 elsif A(0)='1' then
		Z <= "000";
	else
		Z <= "000";
 end if;
end process;

end priority_enc_arc;