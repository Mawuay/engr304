




-----------------------------------------------------------------------------
-- It is recommended to begin from your previous HW01 solution,
-- however this template can be used instead if you would rather start afresh.
-- It also contains a correct Entity specification with properly named inputs
-- and outputs that will make pin assignments easier.
-----------------------------------------------------------------------------









-----------------------------------------------------------------------------
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
	
BEGIN
  -- concurrent signal assignments placed here
  -- Assign internal signals to external port names (e.g. SW15..8 = InputB)

  -- use the conversion function to display the least signif 4-bits of Result
  HEX0 <= convert_to_7seg(Result(3 downto 0));
  -- Fill_In as necessary to drive the remaining HEX displays
  
  -- use "others" to drive busses of wires (e.g. turning off hex displays)
  HEX7 <= (others => '1');

-----------------------------------------------------------------------------
-- process
-- Identify and describe the output signal in this comment block.  If there
-- is more than one output signal (a vector is a single signal), then justify
-- in these comments why you did not have separate processes for each 
-- output. If it cannot be justified, then you should use separate processes.
-----------------------------------------------------------------------------
process (Fill_In) is
BEGIN
	-- Fill_In

end process;
	
END behav;


