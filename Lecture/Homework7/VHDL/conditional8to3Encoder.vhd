
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
    
   Z <= "000" when A(7)='1' else
        "001" when A(6)='1'else
        "010" when A(5)='1' else
        "011" when A(4)='1' else
        "100" when A(3)='1' else
        "101" when A(2)='1' else
        "110" when A(1)='1' else
        "111" when A(0)='1';
    

end priority_enc_arc