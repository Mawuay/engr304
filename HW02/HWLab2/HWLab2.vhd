-------------------------------------------------------------------------
-- FILE: HWLab2
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

-----------------------------------------------------------------------------
-- ENTITY: HWLab2
-----------------------------------------------------------------------------
ENTITY HWLab2 IS
  PORT (
	-- The entity port names are intended to match the names found in the pin
	-- assignment file.  Matching the names makes pin assignment easier, but
	-- it is not required.
	SW : IN std_logic_vector(15 downto 0);
   KEY : IN std_logic_vector(3 downto 0);
	HEX0 : OUT std_logic_vector(6 downto 0);
	HEX1 : OUT std_logic_vector(6 downto 0);
	HEX2 : OUT std_logic_vector(6 downto 0);
	HEX3 : OUT std_logic_vector(6 downto 0);
	HEX4 : OUT std_logic_vector(6 downto 0);
	HEX5 : OUT std_logic_vector(6 downto 0);
	HEX6 : OUT std_logic_vector(6 downto 0);
	HEX7 : OUT std_logic_vector(6 downto 0)

  );
END HWLab2;

-----------------------------------------------------------------------------
-- ARCHITECTURE: behav
-- This architecture is implemented with behavioural VHDL
-----------------------------------------------------------------------------
ARCHITECTURE behav OF HWLab2 IS
  -- This area is used to define types and any internal signals
  -- Fill_In as necessary to define signals like "Result", etc
  -- Defining the signals for input, output and timing control of the progamme 
  signal registerClock , resultClock, Reset : std_logic; -- timing control signals 
  signal registerA : std_logic_vector(7 downto 0);	-- input register 
  signal registerB : std_logic_vector(7 downto 0); -- input reigster 
  signal sumRegister : std_logic_vector(11 downto 0); -- output sumRegister
	
BEGIN
  -- concurrent signal assignments placed here
  -- Assign internal signals to external port names (e.g. SW15..8 = InputB)
  -- use the conversion function to display the least signif 4-bits of Result
  -- Assigning the signal values to theri respective Hardware components
  
	registerClock <= KEY(3); -- triggers the update of  registers with values read in from the SW
	resultClock <= KEY(2); -- triggers the sum computation.
	Reset <= KEY(0); -- resets the system
	
	-- Fill_In as necessary to drive the remaining HEX displays
	-- this section updades the HEX displays after resultClock &/ registerClock is pressed 
	HEX7 <= convert_to_7seg(registerA(7 downto 4));
	HEX6 <= convert_to_7seg(registerA(3 downto 0));
	HEX5 <= convert_to_7seg(registerB(7 downto 4));
	HEX4 <= convert_to_7seg(registerB(3 downto 0));
	-- handling the overflow bit. 
	-- if sumRegister is greater that 255 or ( 1111111 ) bits then HEX2 <= sumRegister(11 downto 8) <=
   HEX2 <= "1111111" when  sumRegister(11 downto 8)  = "0000" else convert_to_7seg(sumRegister(11 downto 8));
	HEX1 <= convert_to_7seg(sumRegister(7 downto 4));
	HEX0 <= convert_to_7seg(sumRegister(3 downto 0));
	
	
  -- use "others" to drive busses of wires (e.g. turning off hex displays)
  -- setting HEX3 to 1
   HEX3 <= "1111111";
 
-----------------------------------------------------------------------------
-- process 
-- reading the input into registerA & registerB
-- Based on the binary value of the fisrt 8 SWs and next 8SWs. 
-- A 4bit unsigned bit is generated.
-----------------------------------------------------------------------------
process (registerClock, Reset) is
begin
		if ( Reset = '0') then  -- if reset is pushed 
			 registerA <= "00000000" ; -- set registerA to 0
			 registerB <= "00000000"; -- set registerB to 0
			 
		elsif (registerClock'EVENT AND registerClock = '1') then  -- when Key3 is pushed
			 registerA <= SW(15 downto 8); -- set registerA
			 registerB <= SW(7 downto 0); -- set registerB

		end if;
end process;

-----------------------------------------------------------------------------
-- process
-- SumRegister ... computes the sum of the 8 bit ( the sum signal is zero 
-- paded with 4 zeros so it fits into convert_to_7seg function)
-- this block calculates the Sum of the hex digits num1 and num2
-----------------------------------------------------------------------------
process (resultClock, Reset, registerA, registerB) is
begin
		if ( Reset = '0') then  -- if reset is pushed 
			sumRegister <= "000000000000" ; -- set sumRegister to 0
	
		elsif (resultClock'EVENT AND resultClock = '1') then   -- when Key3 is pushed
			sumRegister <= (( "0000" & registerA ) + ( "0000" & registerB ));  -- compute the sum
		end if;
end process;

END behav;


