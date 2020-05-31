LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
-----------------------------------------------------------------------------
-- ENTITY: Problem1 - The dimes and nickels counter for vendiing machince
-- that dispences 15 cents candy. 
-- example. Page 537 in the textbook Brown and Vranesic.
-----------------------------------------------------------------------------
ENTITY Problem1 IS
  PORT (
			Resetn	: IN std_logic;
			Clock	: IN std_logic;
			DN	: IN std_logic_vector(1 downto 0);
			Z	: OUT std_logic
  );
END Problem1;

-----------------------------------------------------------------------------
-- ARCHITECTURE: behav
-- This architecture is implemented with behavioural VHDL
-----------------------------------------------------------------------------
ARCHITECTURE behav OF Problem1 IS
  -- This area is used to define types and any internal signals
  type State_type IS (S1,S2,S3,S4,S5);
  signal y_present, y_next : State_type;
  
begin

-- DN is the input signal that causes the states to change
process (DN, y_present) is
BEGIN
	CASE y_present IS 
		WHEN S1 =>		--State1
			if (DN = "00") then
				y_next <= S1;
			elsif (DN = "01") then
				y_next <= S3;
			elsif (DN = "10") then
				y_next <= S2;
			else 
				y_next <= S1;
			end if;
		
		WHEN S2 =>		--State2
			if (DN = "00") then
				y_next <= S2;
			elsif (DN = "01") then
				y_next <= S4;
			elsif (DN = "10") then
				y_next <= S5;
			else 
				y_next <= S2;
			end if;

		WHEN S3 =>		--State3
			if (DN = "00") then
				y_next <= S3;
			elsif (DN = "01") then
				y_next <= S2;
			elsif (DN = "10") then
				y_next <= S4;
			else 
				y_next <= S3;
			end if;
			
		WHEN S4 =>	--State4
			y_next <= S1;  -- since the clock will happen quicker than a new coin 
					-- can be inserted this state should just return to S1
			
		
		WHEN S5 => 		--State5
			y_next <= S3;	-- since the clock will happen quicker than a new coin 
					-- can be inserted this state should just return to S3 
					-- to ask for another coin....( case of 20 cents )
		END CASE;
end process;


process (Clock, Resetn)
begin
	if (Resetn = '0') then
		y_present <= S1;
	elsif (Clock' EVENT AND Clock = '1') then
		y_present <= y_next;
	end if;
end process;
		

	Z <= '1' when (y_present = S5 or y_present = S4) else '0';
		
END behav;
