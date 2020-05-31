-----------------------------------------------------------------------------
-- FILE: HWLab3_TestBench
--   This file contains VHDL that implements Lab 2 for the Altera DE2 Board.
-- DESCRIPTION:
--   In this lab, the switches are used to imput digits and set the mode
--   of the system.  LEDs are used as indicators.  HEX displays are used
--   to show the hex value of the operation result and the operands.
-- COURSE: 		Engineering 304 - Spring 2018
-- DESIGN TOOL: 	fill in
-- SIMULATION TOOL:	fill in
-----------------------------------------------------------------------------
-- MODIFICATION HISTORY:  
-- Revision 1.1  fill in  PM  fill in
-- fill in
-- Revision 1.0  4/10/18  10:00 PM  Prof. Brouwer
-- File template as supplied by the professor.
-----------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- Add a USE statement for the package containing function calls that support
-- the arithmetic operations on unsigned data.  Similar libraries are available
-- for signed (2's complement) arithemetic operations.
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
-- Add a USE statement for the package containing function calls that support
-- the 7-segment displays on the DE2 board.
USE work.SevenSeg_pkg.ALL;

-----------------------------------------------------------------------------
-- ENTITY: HWLab3_TestBench
-----------------------------------------------------------------------------
ENTITY HWLab3_TestBench IS
END HWLab3_TestBench;

ARCHITECTURE test OF HWLab3_TestBench IS
  component HWLab3 IS
  PORT (
	-- The entity port names are intended to match the names found in the pin
	-- assignment file.  Matching the names makes pin assignment easier, but
	-- it is not required.
	SW : IN std_logic_vector(16 downto 0);
	KEY : IN std_logic_vector(3 downto 0);
	LEDG : OUT std_logic_vector(7 downto 0);
	LEDR : OUT std_logic_vector(15 downto 0);
	HEX0 : OUT std_logic_vector(6 downto 0);
	HEX1 : OUT std_logic_vector(6 downto 0);
	HEX2 : OUT std_logic_vector(6 downto 0);
	HEX3 : OUT std_logic_vector(6 downto 0);
	HEX4 : OUT std_logic_vector(6 downto 0);
	HEX5 : OUT std_logic_vector(6 downto 0);
	HEX6 : OUT std_logic_vector(6 downto 0);
	HEX7 : OUT std_logic_vector(6 downto 0)
  );
  END component HWLab3;

  signal SW : std_logic_vector(16 downto 0) := (others => '0');
  signal KEY : std_logic_vector(3 downto 0) := (others => '0');
  signal LEDG : std_logic_vector(7 downto 0) := (others => '0');
  signal LEDR : std_logic_vector(15 downto 0) := (others => '0');
  signal HEX0 : std_logic_vector(6 downto 0) := (others => '0');
  signal HEX1 : std_logic_vector(6 downto 0) := (others => '0');  
  signal HEX2 : std_logic_vector(6 downto 0) := (others => '0');  
  signal HEX3 : std_logic_vector(6 downto 0) := (others => '0');  
  signal HEX4 : std_logic_vector(6 downto 0) := (others => '0');  
  signal HEX5 : std_logic_vector(6 downto 0) := (others => '0');  
  signal HEX6 : std_logic_vector(6 downto 0) := (others => '0');
  signal HEX7 : std_logic_vector(6 downto 0) := (others => '0');
  
  BEGIN
DUT:  HWLab3
  port map (
	SW => SW, -- TBD other port mapping to be done
	);

process is
  variable ClkCount : integer := 0;
  variable QInt, MInt : integer := 0;
  variable QVect, MVect : std_logic_vector(7 downto 0) := (others => '0');
  variable ProdInt : integer := 0;
  variable ProdVect : std_logic_vector(15 downto 0) := (others => '0');
begin
  SW <= (others => '0');
  KEY(3) <= '1';
  KEY(0) <= '0';
  wait for 2 ns;  -- reset everything
  KEY(0) <= '1';
  wait for 2 ns;  -- back to normal - check if reset
  -- TBD: add assert statements to check all HEXes, all red LEDs, and all
  -- green LEDs to see if they are properly reset when KEY(0) is asserted
  
  -- test Q and M for all 256 patterns for each, 20 ns of sim time per test
  for QInt in 0 to 255 loop  -- multiplier (Q)
    for MInt in 0 to 255 loop  -- mulitplicand (M)
      QVect := conv_std_logic_vector(QInt,8);
      MVect := conv_std_logic_vector(MInt,8);
      -- set new switch patterns
      SW(15 downto 8) <= MVect;
      SW(7 downto 0) <= QVect;
      -- set mode to "loading"
      SW(16) <= '1';  
      KEY(3) <= '0';  -- clock low
      wait for 2 ns;
      -- clock in new switch pattern into registers
      KEY(3) <= '1';  -- rising edge on clock
      wait for 2 ns;  -- allow circuit to process input changes
    
      -- check to see if HEX4-7 are correct
 	    assert (convert_to_7seg(MVect(7 downto 4)) = HEX7)
        report "HEX7 incorrect"	severity WARNING;
      --TBD check HEXs 6..4
    
      -- set mode to "operating"
      SW(16) <= '0';  
      -- clock the circuit 8 times; then check the output found on 
      -- HEX3..0, LEDG, & LEDR
      for ClkCount in 0 to 7 loop
        KEY(3) <= '0';  -- clock low
        wait for 1 ns;
        KEY(3) <= '1';  -- rising edge on clock
        wait for 1 ns;  -- allow circuit to process input changes
      end loop;
    
      ProdInt := QInt * MInt;
      ProdVect := conv_std_logic_vector(ProdInt,16);
    
      -- TBD: add assert statement for green LEDs for your design
      assert LEDR = ProdVect(15 downto 0)
        report "LEDR incorrect" severity WARNING;
      assert HEX3 = convert_to_7seg(ProdVect(15 downto 12))
        report "HEX3 incorrect"	severity WARNING;
      -- TBD: add assert statements for HEX2..0
    end loop;
  end loop;
end process;
END test;


