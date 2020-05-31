-----------------------------------------------------------------------------
-- FILE: HWLab1_TestBench
--   This file contains VHDL that implements Lab 1 for the Altera DE2 Board.
-- DESCRIPTION:
--   In this lab, the switches are used to imput digits and set the mode
--   of the system.  LEDs are used as indicators.  HEX displays are used
--   to show the hex value of the operation result and the operands.
-- COURSE: 		Engineering 304 - Spring 2018
-- DESIGN TOOL: 	Quartus
-- SIMULATION TOOL:	ModelSim
-----------------------------------------------------------------------------
-- MODIFICATION HISTORY:  
-- Revision 1.0  3/28/18  2:00 PM  Prof. Brouwer
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
-- ENTITY: HWLab1_TestBench
-----------------------------------------------------------------------------
ENTITY HWLab1_TestBench IS
END HWLab1_TestBench;

ARCHITECTURE test OF HWLab1_TestBench IS
  component HWLab1 is
	port (
		SW : IN std_logic_vector(15 downto 0);
		HEX0 : OUT std_logic_vector(6 downto 0);
		HEX1 : OUT std_logic_vector(6 downto 0);
		HEX2 : OUT std_logic_vector(6 downto 0);
		HEX3 : OUT std_logic_vector(6 downto 0);
		HEX4 : OUT std_logic_vector(6 downto 0);
		HEX5 : OUT std_logic_vector(6 downto 0);
		HEX6 : OUT std_logic_vector(6 downto 0);
		HEX7 : OUT std_logic_vector(6 downto 0)
	);
  end component HWLab1;

  signal SW : std_logic_vector(15 downto 0) := (others => '0');
  signal HEX0 : std_logic_vector(6 downto 0) := (others => '0');
  signal HEX1 : std_logic_vector(6 downto 0) := (others => '0');  
  signal HEX2 : std_logic_vector(6 downto 0) := (others => '0');  
  signal HEX3 : std_logic_vector(6 downto 0) := (others => '0');  
  signal HEX4 : std_logic_vector(6 downto 0) := (others => '0');  
  signal HEX5 : std_logic_vector(6 downto 0) := (others => '0');  
  signal HEX6 : std_logic_vector(6 downto 0) := (others => '0');
  signal HEX7 : std_logic_vector(6 downto 0) := (others => '0');
  signal sigi, sigj : integer := 0;
  
  BEGIN
DUT:  HWLab1  -- place an instance of the adder module and wire it up
  port map (
	SW => SW, HEX0 => HEX0, HEX1 => HEX1, HEX2 => HEX2,
	HEX3 => HEX3, HEX4 => HEX4, HEX5 => HEX5,
	HEX6 => HEX6, HEX7 => HEX7 );

Tester:  process is  -- Testbench code, so non-synthesizable contructs are OK
  variable i, j, newi, newj, sum : integer := 0;
  variable i_invalid, j_invalid : integer := 0;
  variable inA, inB : std_logic_vector(7 downto 0) := (others => '0');
  variable S : std_logic_vector(7 downto 0) := (others => '0');
begin
  for i in 0 to 255 loop -- go through all ASCII input possibilities
    for j in 0 to 255 loop
      sigi <= i;
      sigj <= j;
      i_invalid := 0;  -- initialize some flags
      j_invalid := 0;
      inA := conv_std_logic_vector(i,8);  -- convert int to bit vector
      inB := conv_std_logic_vector(j,8);
      SW(15 downto 8) <= inB;  -- drive the i and j values to the SW ports
      SW(7 downto 0) <= inA;
      wait for 10 ns;  -- allow circuit to process input changes
      -- now check HEX7..4 for correct values based on i and j
      assert (convert_to_7seg(inB(7 downto 4)) = HEX7)
        report "HEX7 incorrect"
        severity WARNING;
      assert (convert_to_7seg(inB(3 downto 0)) = HEX6)
        report "HEX6 incorrect"
        severity WARNING;
      assert (convert_to_7seg(inA(7 downto 4)) = HEX5)
        report "HEX5 incorrect"
        severity WARNING;
      assert (convert_to_7seg(inA(3 downto 0)) = HEX4)
        report "HEX4 incorrect"
        severity WARNING;
	  
      -- now if j was a valid ascii value, check HEX3
      if ((j < 48)  -- invalid input cases
          or ((j > 57) AND (j < 65)) 
          or ((j > 70) AND (j < 97))
          or (j > 102)) then
        newj := 0;
        j_invalid := 1;
        assert (HEX3 = "1111110")
          report "HEX3 should show error but does not"
          severity WARNING;
      else  -- valid input cases
        if (j < 58) then
          newj := j - 48;
        elsif (j < 71) then
          newj := j - 55;
        else
          newj := j - 87;
        end if;
        assert (HEX3 = convert_to_7seg(conv_std_logic_vector(newj,4)))
          report "HEX3 is showing the wrong pattern"
          severity WARNING;
      end if;

      -- now if i was a valid ascii value, check HEX2
      if ((i < 48)  -- invalid input cases
          or ((i > 57) AND (i < 65)) 
          or ((i > 70) AND (i < 97))
          or (i > 102)) then
        newi := 0;
        i_invalid := 1;
        assert (HEX2 = "1111110")
          report "HEX2 should show error but does not"
          severity WARNING;
      else  -- valid input cases
        if (i < 58) then
          newi := i - 48;
        elsif (i < 71) then
          newi := i - 55;
        else
          newi := i - 87;
          assert (HEX2 = convert_to_7seg(conv_std_logic_vector(newi,4)))
            report "HEX2 is showing the wrong pattern"
            severity WARNING;
        end if;
      end if;

      -- now calulate the expected sum and compare with HEX1..0
      sum := newi + newj;
      S := conv_std_logic_vector(sum,8);
      if (i_invalid = 0 AND j_invalid = 0) then
        if (S(7 downto 4) = "0000" ) then
          assert HEX1 = "1111111"
            report "HEX1 should have been blank"
            severity WARNING;
        else
          assert HEX1 = convert_to_7seg(S(7 downto 4))
            report "HEX1 incorrect"
            severity WARNING;
        end if;
        assert HEX0 = convert_to_7seg(S(3 downto 0))
          report "HEX0 incorrect"
          severity WARNING;
      end if;
    end loop;  -- for j
  end loop;  -- for i
end process;
END test;


