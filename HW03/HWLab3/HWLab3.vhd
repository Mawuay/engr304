-------------------------------------------------------------------------
-- FILE: HWLab3
--   This file contains VHDL that implements Lab 2 for the Altera DE2 Board.
-- DESCRIPTION:
--   In this lab, the switches are used to input digits.  HEX displays are used
--   to show the hex value of the operation result and the operands.
-- COURSE: 		Engineering 304
-- DESIGN TOOL: 	Fill_In
-----------------------------------------------------------------------------
-- MODIFICATION HISTORY:  
-- Revision 1.1  Fill_In  
-- Fill_In
-- Revision 1.0  3/27/18  2:00 PM  Prof. Brouwer
-- File template as supplied by the professor.
-----------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- Add a USE statement for the package containing function calls that support
-- the arithmetic operations on unsigned data.  Similar libraries are available
-- for signed (2's complement) arithmetic operations.
USE ieee.std_logic_unsigned.ALL;
-- Add a USE statement for the package containing function calls that support
-- the 7-segment displays on the DE2 board.
USE work.SevenSeg_pkg.ALL;
-- MAth library for counter 
use IEEE.math_real.all;

-----------------------------------------------------------------------------
-- ENTITY: HWLab3
-----------------------------------------------------------------------------
ENTITY HWLab3 IS
  PORT (
	-- The entity port names are intended to match the names found in the pin
	-- assignment file.  Matching the names makes pin assignment easier, but
	-- it is not required.
	SW : IN std_logic_vector(16 downto 0);
  KEY : IN std_logic_vector(3 downto 0);
	HEX0 : OUT std_logic_vector(6 downto 0);
	HEX1 : OUT std_logic_vector(6 downto 0);
	HEX2 : OUT std_logic_vector(6 downto 0);
	HEX3 : OUT std_logic_vector(6 downto 0);
	HEX4 : OUT std_logic_vector(6 downto 0);
	HEX5 : OUT std_logic_vector(6 downto 0);
	HEX6 : OUT std_logic_vector(6 downto 0);
	HEX7 : OUT std_logic_vector(6 downto 0);
	LEDR : OUT std_logic_vector(15 downto 0);
	LEDG : OUT std_logic_vector(7 downto 0)

  );
END HWLab3;

-----------------------------------------------------------------------------
-- ARCHITECTURE: behav
-- This architecture is implemented with behavioral VHDL
-----------------------------------------------------------------------------
ARCHITECTURE behav OF HWLab3 IS
  -- This area is used to define types and any internal signals
  -- Fill_In as necessary to define signals like "Result", etc
  -- Defining the signals for input, output and timing control of the progamme 
  signal inputClock , resultClock, Reset : std_logic; -- timing control signals 
  signal multiplierReg : std_logic_vector(7 downto 0);	-- input register 
  signal multiplicandReg : std_logic_vector(7 downto 0); -- input reigster 
  signal shiftRegister : std_logic_vector(7 downto 0); -- output shiftRegister
  signal computeResult : std_logic_vector(7 downto 0); -- output computeResult
  signal count : std_logic_vector(7 downto 0); -- counter 
  signal Q : std_logic_vector(7 downto 0); -- used in multiplicand mux loop
  signal A : std_logic_vector(7 downto 0); -- used in multiplier mux loop
  signal sumVal : std_logic_vector(7 downto 0); -- used in multiplier mux loop
  signal Result : std_logic_vector(8 downto 0);
  
	
BEGIN
  -- concurrent signal assignments placed here
  -- Assign internal signals to external port names (e.g. SW15..8 = InputB)
  -- use the conversion function to display the least signif 4-bits of Result
  -- Assigning the signal values to theri respective Hardware components
  
	inputClock <= KEY(3); -- triggers the update of  registers with values read in from the SW
	resultClock <= KEY(2); -- triggers the sum computation.
	Reset <= KEY(0); -- resets the system
	
	
	-- Fill_In as necessary to drive the remaining HEX displays
	-- this section updates the HEX displays after resultClock &/ inputClock is pressed 
	HEX7 <= convert_to_7seg(multiplierReg(7 downto 4));
	HEX6 <= convert_to_7seg(multiplierReg(3 downto 0));
	HEX5 <= convert_to_7seg(multiplicandReg(7 downto 4));
	HEX4 <= convert_to_7seg(multiplicandReg(3 downto 0));
	
	-- this displays the result 
	HEX3 <= convert_to_7seg(computeResult(7 downto 4));
	HEX2 <= convert_to_7seg(computeResult(3 downto 0));
	HEX1 <= convert_to_7seg(shiftRegister(7 downto 4));
	HEX0 <= convert_to_7seg(shiftRegister(3 downto 0));
	
	
 -- LEDR assignments
	LEDR(7 downto 0) <= shiftRegister(7 downto 0);
	LEDR(15 downto 8) <= Result(7 downto 0);
	LEDG(7 downto 0) <= count(7 downto 0);

	
-- Pre-adder multiplicand MUX
	sumVal <= SW(15 downto 8) when shiftRegister(0) = '1' else "00000000"; -- controls the input to the adder.

-- Sum 
	Result <= ('0' & computeResult) + sumVal; 
 

-----------------------------------------------------------------------------
-- process 
-- reading the input into multiplierReg & multiplicandReg
-- Based on the binary value of the first 8 SWs and next 8SWs, and the state 
-- of SW16. 
-- Two 8 bit unsigned numbers are generated.
-----------------------------------------------------------------------------
process (inputClock, Reset) is
begin
		if ( Reset = '0') then  -- if reset is pushed 
			 multiplierReg <= "00000000" ; -- set multiplierReg to 0
			 multiplicandReg <= "00000000"; -- set multiplicandReg to 0
			
		-- mux structure that feeds the 2 input registers 
		elsif ( inputClock'EVENT AND inputClock = '1') then 
				if ( SW(16) = '1') then -- when select is high (SW16) input is read from switches on KEY3
				 -- when Key3 is pushed
						 multiplierReg <= SW(15 downto 8); -- set multiplierReg
						 multiplicandReg <= SW(7 downto 0); -- set multiplicandReg
				end if;

		end if;
end process;


-----------------------------------------------------------------------------
-- process 
-- shiftRegister MUX
-----------------------------------------------------------------------------
	Q <= SW(7 downto 0) when SW(16) = '1' else (Result(0) & shiftRegister(7 downto 1)); -- controls the input to the computeResult.
 
 
-----------------------------------------------------------------------------
-- process 
-- computeResult MUX
-----------------------------------------------------------------------------
	A <= "00000000" when SW(16) = '1' else Result(8 downto 1); -- controls the input to the computeResult.


-----------------------------------------------------------------------------
-- process 
-- populating the registers.
-- the shift register logic.
-----------------------------------------------------------------------------
process (inputClock, Reset) is
begin
				if ( Reset = '0') then
						shiftRegister <= "00000000";
						
				elsif ( inputClock'EVENT AND inputClock = '1') then  -- when Key3 is pushed
								 shiftRegister  <= Q; 

				end if;
		
end process;



-----------------------------------------------------------------------------
-- process 
-- populating the registers.
-- the compute Result logic.
-----------------------------------------------------------------------------
process (inputClock, Reset) is
begin
				if ( Reset = '0') then
						computeResult <= "00000000";
						
				elsif ( inputClock'EVENT AND inputClock = '1') then  -- when Key3 is pushed
								 computeResult  <= A;		 
				end if;
		
end process;


-----------------------------------------------------------------------------
-- process
-- controls the counter LEDGs it increments on each key press of KEY3 to 
-- indicate they progress of the computation.
-----------------------------------------------------------------------------
process (inputClock, Reset) is
begin
			if ( Reset = '0') then  -- if reset is pushed 
				 count <= "00000000";
				 
			elsif ( SW(16) = '0') then 
					if (inputClock'EVENT AND inputClock = '1') then  -- when Key3 is pushed
					count <= ('1' & count(7 downto 1));	
					end if;
				
			end if;

end process;


END behav;


