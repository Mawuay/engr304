LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
-----------------------------------------------------------------------------
-- ENTITY: Problem8
-----------------------------------------------------------------------------
ENTITY Problem8 IS
  PORT (
			Resetn	: IN STD_LOGIC;
			FWD 		: IN STD_LOGIC;
			Clock		: IN STD_LOGIC;
			Q			: OUT std_logic_vector(2 downto 0)
			

  );
END Problem8;

-----------------------------------------------------------------------------
-- ARCHITECTURE: behav
-- This architecture is implemented with behavioural VHDL
-----------------------------------------------------------------------------
ARCHITECTURE behav OF Problem8 IS
  -- This area is used to define types and any internal signals
  signal Count : std_logic_vector(2 downto 0);
  
begin
	process (Clock, Resetn)
	begin
		if (Resetn = '0') then
			Count <= "000";
		elsif (Clock' EVENT AND Clock = '1') then
			if (FWD = '1')then 
				Count <= Count + 1;
				
			elsif (FWD = '0') then
				Count <= Count - 1;
			end if;
		end if;
	end process;
		

process (Count) is
BEGIN
	CASE Count IS 
		WHEN "000" => Q <= "101" ; -- drive Q to 5
		WHEN "001" => Q <= "110" ; -- drive Q to 6 
		WHEN "010" => Q <= "111" ; -- drive Q to 7 
		WHEN "011" => Q <= "000" ; -- drive Q to 0 
		WHEN "100" => Q <= "001" ; -- drive Q to 2 
		WHEN "101" => Q <= "100" ; -- drive Q to 4 
		WHEN "110" => Q <= "011" ; -- drive Q to 3 
		WHEN "111" => Q <= "001" ; -- drive Q to 1 
		
		END CASE;
end process;		
		
		
END behav;