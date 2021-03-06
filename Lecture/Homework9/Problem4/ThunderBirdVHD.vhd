LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
-----------------------------------------------------------------------------
-- ENTITY: ThunderBird - VHDL code that mimics teh classic ThunderBird turn
-- singnal.
-----------------------------------------------------------------------------
ENTITY ThunderBirdVHD IS
  PORT (
			Resetn	: IN std_logic;
			Clock	: IN std_logic;
			Lft : IN std_logic;
			LeftTurnVHD: OUT std_logic_vector(2 downto 0)
  );
END ThunderBirdVHD;

-----------------------------------------------------------------------------
-- ARCHITECTURE: behav
-- This architecture is implemented with behavioural VHDL
-----------------------------------------------------------------------------
ARCHITECTURE behav OF ThunderBirdVHD IS
  -- This area is used to define types and any internal signals
  type State_type IS (NoSignal,Light1,Light2,Light3);
  signal y_present, y_next : State_type;
  
begin

-- DN is the input signal that causes the states to change
process (Lft, y_present) is
BEGIN
	CASE y_present IS 
		WHEN NoSignal =>		--State1
			if (Lft = '0') then
				y_next <= NoSignal;
			else 
				y_next <= Light1;
				LeftTurnVHD <= "001";
			end if;
		
		WHEN Light1 =>		--State2
				y_next <= Light2;
				LeftTurnVHD<= "011";

		WHEN Light1 =>		--State2
				y_next <= Light3;
				LeftTurnVHD<= "111";
			
		WHEN Light1 =>		--State2
				y_next <= NoSignal;
				LeftTurnVHD<= "000";

		END CASE;
end process;


process (Clock, Resetn)
begin
	if (Resetn = '0') then
		y_present <= NoSignal;
	elsif (Clock' EVENT AND Clock = '1') then
		y_present <= y_next;
	end if;
end process;
		

		
END behav;