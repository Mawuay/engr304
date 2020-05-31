LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
--USE ieee.numeric_std.all;
-----------------------------------------------------------------------------
-- ENTITY: Problem2 - The dimes and nickels counter for vendiing machince
-- that dispences 15 cents candy. 
-- example. Page 537 in the textbook Brown and Vranesic.
-----------------------------------------------------------------------------
ENTITY Problem2 IS
  PORT (
			Resetn	: IN std_logic;
			Clock	: IN std_logic;
			Stop1 , Stop2 : IN std_logic;
			DIG1 , DIG0 : OUT std_logic_vector(3 downto 0);
			Dice1, Dice2	: OUT std_logic_vector(2 downto 0)
  );
END Problem2;

-----------------------------------------------------------------------------
-- ARCHITECTURE: behav
-- This architecture is implemented with behavioural VHDL
-----------------------------------------------------------------------------
ARCHITECTURE behav OF Problem2 IS
  -- This area is used to define types and any internal signals
  signal Count1, Count2	:  std_logic_vector(2 downto 0);
  signal Sum :  std_logic_vector(3 downto 0);
  --sum <= '0' & Dice1 + Dice2;
	--DIG1 <= '0' & Dice1 + Dice2 , DIG0;
  
begin


process (Clock, Resetn)
begin
	if (Resetn = '0') then
		count1 <= "000";
		count2 <= "000";
	elsif (Clock' EVENT AND Clock = '1') then
		if (Stop1 = '0') then 
			count1 <= count1 + 1;
		else
			count1 <= count1;
		end if;
		if (Stop2 = '0') then
			count2 <= count2 +1;
		else 
			count2 <= count2;
		end if;
	end if;
end process;
		
process (Count1) is
BEGIN
	CASE Count1 IS 
		WHEN "000" => Dice1 <= "001" ; -- drive Dice1 to 1
		WHEN "001" => Dice1 <= "010" ; -- drive Dice1 to 2 
		WHEN "010" => Dice1 <= "011" ; -- drive Dice1 to 3 
		WHEN "011" => Dice1 <= "100" ; -- drive Dice1 to 4 
		WHEN "100" => Dice1 <= "101" ; -- drive Dice1 to 5 
		WHEN "101" => Dice1 <= "110" ; -- drive Dice1 to 6
		
		WHEN others => Dice1 <= "001"; -- err cases
		END CASE;
end process;

process (Count2) is
BEGIN
	CASE Count2 IS 
		WHEN "000" => Dice2 <= "001" ; -- drive Dice2 to 1
		WHEN "001" => Dice2 <= "010" ; -- drive Dice2 to 2 
		WHEN "010" => Dice2 <= "011" ; -- drive Dice2 to 3 
		WHEN "011" => Dice2 <= "100" ; -- drive Dice2 to 4 
		WHEN "100" => Dice2 <= "101" ; -- drive Dice2 to 5 
		WHEN "101" => Dice2 <= "110" ; -- drive Dice2 to 6
		
		WHEN others => Dice2 <= "001"; -- err cases
		END CASE;
end process;

Sum <= '0' & Count1 + Count2;	


process (Sum) is 
begin 
	CASE Sum is 
		WHEN "0000" =>
			DIG0 <= "0000";
			DIG1 <= "0000";
		WHEN "0001"  =>
			DIG0 <= "0001";
			DIG1 <= "0000";
		WHEN "0010"  =>
			DIG0 <= "0010";
			DIG1 <= "0000";
		WHEN "0011"  =>
			DIG0 <= "0011";
			DIG1 <= "0000";
		WHEN "0100"  =>
			DIG0 <= "0100";
			DIG1 <= "0000";
		WHEN "0101"  =>
			DIG0 <= "0101";
			DIG1 <= "0000";
		WHEN "0110"  =>
			DIG0 <= "0110";
			DIG1 <= "0000";
		WHEN "0111"  =>
			DIG0 <= "0111";
			DIG1 <= "0000";
		WHEN "1000"  =>
			DIG0 <= "1000";
			DIG1 <= "0000";
		WHEN "1001"  =>
			DIG0 <= "1001";
			DIG1 <= "0000";
		WHEN "1010"  =>
			DIG0 <= "0000";
			DIG1 <= "0001";
		WHEN "1011"  =>
			DIG0 <= "0001";
			DIG1 <= "0001";
		WHEN "1100"  =>
			DIG0 <= "0010";
			DIG1 <= "0001";
		WHEN others =>
			DIG0 <= "0000";
			DIG1 <= "0000";
	END CASE;
	end process;
	
END behav;
