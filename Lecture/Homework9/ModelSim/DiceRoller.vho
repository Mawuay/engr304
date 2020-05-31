-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "04/27/2019 20:26:56"

-- 
-- Device: Altera EPM7064SLC44-10 Package PLCC44
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	DiceRoller IS
    PORT (
	Roll0 : IN std_logic;
	Roll1 : IN std_logic;
	Clk : IN std_logic;
	RSTn : IN std_logic;
	Dig0 : OUT std_logic_vector(3 DOWNTO 0);
	Dig1 : OUT std_logic_vector(3 DOWNTO 0)
	);
END DiceRoller;

-- Design Ports Information
-- Roll0	=>  Location: PIN_28
-- Roll1	=>  Location: PIN_40
-- Clk	=>  Location: PIN_43
-- RSTn	=>  Location: PIN_1
-- Dig1[1]	=>  Location: PIN_18
-- Dig1[2]	=>  Location: PIN_16
-- Dig1[3]	=>  Location: PIN_14
-- Dig0[0]	=>  Location: PIN_17
-- Dig1[0]	=>  Location: PIN_5
-- Dig0[1]	=>  Location: PIN_19
-- Dig0[2]	=>  Location: PIN_6
-- Dig0[3]	=>  Location: PIN_11


ARCHITECTURE structure OF DiceRoller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_Roll0 : std_logic;
SIGNAL ww_Roll1 : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_RSTn : std_logic;
SIGNAL ww_Dig0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dig1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Die0[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[0]~34_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[0]~34_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[0]~34_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[0]~34_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[0]~34_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[0]~34_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[0]~34_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[0]~34_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[0]~34_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[0]~34_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[0]~34_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~16_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~16_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~16_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~16_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~16_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~16_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~16_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~16_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~16_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~16_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~16_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die0[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|result_node|sout_node[0]~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|result_node|sout_node[0]~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|result_node|sout_node[0]~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|result_node|sout_node[0]~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|result_node|sout_node[0]~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|result_node|sout_node[0]~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|result_node|sout_node[0]~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|result_node|sout_node[0]~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|result_node|sout_node[0]~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|result_node|sout_node[0]~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|result_node|sout_node[0]~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~42_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~42_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~42_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~42_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~42_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~42_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~42_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~42_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~42_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~42_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[2]~42_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~48_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~48_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~48_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~48_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~48_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~48_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~48_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~48_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~48_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~48_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~48_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~55_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~55_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~55_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~55_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~55_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~55_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~55_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~55_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~55_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~55_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[3]~55_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[1]~61_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[1]~61_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[1]~61_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[1]~61_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[1]~61_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[1]~61_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[1]~61_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[1]~61_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[1]~61_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[1]~61_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[1]~61_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~10_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~10_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~10_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~10_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~10_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~10_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~10_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~10_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~10_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~10_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~10_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~31_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~31_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~31_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~31_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~31_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~31_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~31_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~31_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~31_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~31_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~31_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~10_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~10_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~10_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~10_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~10_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~10_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~10_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~10_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~10_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~10_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~10_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~16_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~16_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~16_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~16_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~16_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~16_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~16_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~16_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~16_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~16_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~16_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~32_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~32_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~32_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~32_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~32_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~32_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~32_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~32_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~32_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~32_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~32_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~34_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~34_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~34_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~34_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~34_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~34_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~34_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~34_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~34_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~34_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~34_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~40_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~40_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~40_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~40_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~40_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~40_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~40_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~40_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~40_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~40_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~40_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~46_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~46_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~46_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~46_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~46_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~46_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~46_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~46_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~46_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~46_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~46_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~51_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~51_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~51_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~51_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~51_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~51_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~51_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~51_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~51_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~51_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~51_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~63_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~63_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~63_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~63_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~63_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~63_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~63_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~63_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~63_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~63_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~63_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~69_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~69_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~69_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~69_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~69_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~69_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~69_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~69_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~69_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~69_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~69_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~6_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~7_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~8_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Dig0~9_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[1]~12sexpand1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Die1[0]~11sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|adder[0]|ps[2]~4sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~6sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|adder[0]|gn[0]~1sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|adder[0]|gn[2]~3sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|adder[0]|gn[0]~4_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|adder[0]|gn[2]~5_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add0|adder|adder[0]|ps[2]~10_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Clk~dataout\ : std_logic;
SIGNAL \~GND~0~dataout\ : std_logic;
SIGNAL \~GND~1~dataout\ : std_logic;
SIGNAL \~GND~2~dataout\ : std_logic;
SIGNAL \RSTn~dataout\ : std_logic;
SIGNAL \Roll0~dataout\ : std_logic;
SIGNAL \Die1[1]~12sexpand1_dataout\ : std_logic;
SIGNAL \Roll1~dataout\ : std_logic;
SIGNAL \Die1[0]~11sexp_dataout\ : std_logic;
SIGNAL \Die1[0]~34_dataout\ : std_logic;
SIGNAL \Add0|adder|result_node|sout_node[0]~6_dataout\ : std_logic;
SIGNAL \Add3~7_dataout\ : std_logic;
SIGNAL \Add3~6sexp_dataout\ : std_logic;
SIGNAL \Die1[3]~18_dataout\ : std_logic;
SIGNAL \Die1[3]~55_dataout\ : std_logic;
SIGNAL \Die1[2]~16_dataout\ : std_logic;
SIGNAL \Die1[2]~42_dataout\ : std_logic;
SIGNAL \Die1[3]~48_dataout\ : std_logic;
SIGNAL \Die1[1]~61_dataout\ : std_logic;
SIGNAL \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ : std_logic;
SIGNAL \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ : std_logic;
SIGNAL \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ : std_logic;
SIGNAL \LessThan0~10_pexpout\ : std_logic;
SIGNAL \LessThan0~16_pexpout\ : std_logic;
SIGNAL \LessThan0~8_dataout\ : std_logic;
SIGNAL \Add0|adder|adder[0]|gn[2]~5_dataout\ : std_logic;
SIGNAL \Add0|adder|adder[0]|gn[0]~4_dataout\ : std_logic;
SIGNAL \Dig0~63_pexpout\ : std_logic;
SIGNAL \Add0|adder|adder[0]|ps[2]~10_dataout\ : std_logic;
SIGNAL \Dig0~32_pexpout\ : std_logic;
SIGNAL \Dig0~34_pexpout\ : std_logic;
SIGNAL \Dig0~6_dataout\ : std_logic;
SIGNAL \Dig0~7_dataout\ : std_logic;
SIGNAL \Dig0~8_dataout\ : std_logic;
SIGNAL \Dig0~9_dataout\ : std_logic;
SIGNAL \Dig0~10_dataout\ : std_logic;
SIGNAL \Dig0~69_pexpout\ : std_logic;
SIGNAL \Dig0~46_pexpout\ : std_logic;
SIGNAL \Dig0~51_pexpout\ : std_logic;
SIGNAL \Dig0~31_dataout\ : std_logic;
SIGNAL \Dig0~40_pexpout\ : std_logic;
SIGNAL \Dig0~22_dataout\ : std_logic;
SIGNAL Die0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RSTn~dataout\ : std_logic;
SIGNAL \ALT_INV_Roll1~dataout\ : std_logic;
SIGNAL \ALT_INV_Die1[1]~61_dataout\ : std_logic;
SIGNAL \ALT_INV_Die1[3]~55_dataout\ : std_logic;
SIGNAL \ALT_INV_Die1[2]~42_dataout\ : std_logic;
SIGNAL ALT_INV_Die0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Die1[0]~34_dataout\ : std_logic;

BEGIN

ww_Roll0 <= Roll0;
ww_Roll1 <= Roll1;
ww_Clk <= Clk;
ww_RSTn <= RSTn;
Dig0 <= ww_Dig0;
Dig1 <= ww_Dig1;

\Die0[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[0]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Roll0~dataout\);

\Die0[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & Die0(1) & Die0(2) & NOT Die0(3));

\Die0[2]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT Die0(0) & Die0(1));

\Die0[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[2]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Roll0~dataout\);

\Die0[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[0]~34_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[0]~34_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~11sexp_dataout\ & \Die1[1]~12sexpand1_dataout\);

\Die1[0]~34_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~11sexp_dataout\ & \Die1[0]~34_dataout\);

\Die1[0]~34_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RSTn~dataout\ & NOT \Roll1~dataout\ & \Die1[0]~34_dataout\);

\Die1[0]~34_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[0]~34_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[0]~34_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[0]~34_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[0]~34_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Die1[0]~34_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[0]~34_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & Die0(1) & NOT Die0(0) & Die0(2));

\Die0[3]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[3]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[3]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Roll0~dataout\);

\Die0[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~16_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~16_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Roll1~dataout\ & NOT \Die1[1]~61_dataout\ & \Die1[2]~42_dataout\);

\Die1[2]~16_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Die1[0]~34_dataout\ & \Die1[3]~55_dataout\ & \Roll1~dataout\ & \Die1[2]~42_dataout\);

\Die1[2]~16_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & \Roll1~dataout\ & \Die1[1]~61_dataout\ & NOT \Die1[2]~42_dataout\);

\Die1[2]~16_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~16_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~16_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~16_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~16_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Die1[2]~16_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~16_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & Die0(1) & Die0(2) & NOT Die0(3));

\Die0[1]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT Die0(0));

\Die0[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Roll0~dataout\);

\Die0[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die0[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add0|adder|result_node|sout_node[0]~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add0|adder|result_node|sout_node[0]~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & Die0(0));

\Add0|adder|result_node|sout_node[0]~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Die1[0]~34_dataout\ & NOT Die0(0));

\Add0|adder|result_node|sout_node[0]~6_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add0|adder|result_node|sout_node[0]~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add0|adder|result_node|sout_node[0]~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add0|adder|result_node|sout_node[0]~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add0|adder|result_node|sout_node[0]~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add0|adder|result_node|sout_node[0]~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Add0|adder|result_node|sout_node[0]~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add0|adder|result_node|sout_node[0]~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~42_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~42_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[1]~12sexpand1_dataout\ & \Die1[2]~16_dataout\);

\Die1[2]~42_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[2]~42_dataout\ & \Die1[2]~16_dataout\);

\Die1[2]~42_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RSTn~dataout\ & NOT \Roll1~dataout\ & \Die1[2]~42_dataout\);

\Die1[2]~42_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~42_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~42_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~42_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~42_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Die1[2]~42_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[2]~42_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~48_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~48_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Roll1~dataout\ & NOT \Die1[1]~61_dataout\);

\Die1[3]~48_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Die1[2]~42_dataout\ & \Roll1~dataout\);

\Die1[3]~48_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[3]~55_dataout\ & \Roll1~dataout\);

\Die1[3]~48_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & \Roll1~dataout\);

\Die1[3]~48_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~48_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~48_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~48_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Die1[3]~48_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~48_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~18_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[3]~48_dataout\ & NOT \Die1[2]~42_dataout\ & \Die1[3]~55_dataout\);

\Die1[3]~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add3~6sexp_dataout\ & \Die1[3]~48_dataout\ & \Die1[3]~55_dataout\);

\Die1[3]~18_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & \Die1[1]~61_dataout\ & \Die1[3]~48_dataout\ & \Die1[2]~42_dataout\ & NOT \Die1[3]~55_dataout\);

\Die1[3]~18_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Die1[3]~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~55_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~55_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[1]~12sexpand1_dataout\ & \Die1[3]~18_dataout\);

\Die1[3]~55_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[3]~55_dataout\ & \Die1[3]~18_dataout\);

\Die1[3]~55_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RSTn~dataout\ & NOT \Roll1~dataout\ & \Die1[3]~55_dataout\);

\Die1[3]~55_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~55_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~55_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~55_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~55_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Die1[3]~55_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[3]~55_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~7_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~7_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\);

\Add3~7_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~7_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~7_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[1]~61_dataout\);

\Add3~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Add3~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[1]~61_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[1]~61_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[3]~48_dataout\ & \Add3~7_dataout\ & \Die1[1]~12sexpand1_dataout\);

\Die1[1]~61_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[3]~48_dataout\ & \Add3~7_dataout\ & \Die1[1]~61_dataout\);

\Die1[1]~61_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RSTn~dataout\ & NOT \Roll1~dataout\ & \Die1[1]~61_dataout\);

\Die1[1]~61_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[1]~61_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[1]~61_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[1]~61_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[1]~61_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Die1[1]~61_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Die1[1]~61_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~8_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & NOT Die0(1) & \Die1[3]~55_dataout\ & Die0(3));

\LessThan0~8_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[2]~42_dataout\ & Die0(2) & \Die1[3]~55_dataout\ & NOT Die0(3));

\LessThan0~8_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & NOT \Die1[3]~55_dataout\ & NOT Die0(3));

\LessThan0~8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & NOT Die0(1) & NOT \Die1[3]~55_dataout\ & NOT Die0(3));

\LessThan0~8_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & \Die1[3]~55_dataout\ & Die0(3));

\LessThan0~8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~8_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\LessThan0~8_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~10_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & \Add0|adder|adder[0]|gn[0]~4_dataout\ & NOT \Die1[1]~61_dataout\ & NOT Die0(1));

\Dig0~10_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~10_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[2]~42_dataout\ & Die0(2) & \Die1[3]~55_dataout\ & NOT Die0(3));

\Dig0~10_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~5_dataout\ & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & NOT \Die1[3]~55_dataout\ & NOT Die0(3));

\Dig0~10_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~5_dataout\ & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & \Die1[3]~55_dataout\ & Die0(3));

\Dig0~10_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~10_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Dig0~9_dataout\ & \Dig0~8_dataout\ & \Dig0~7_dataout\ & \Dig0~6_dataout\);

\Dig0~10_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~10_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Dig0~10_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~10_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~22_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & NOT Die0(3) & NOT \Die1[3]~55_dataout\ & \Die1[1]~61_dataout\ & Die0(1));

\Dig0~22_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & NOT Die0(3) & NOT \Die1[3]~55_dataout\ & \Die1[1]~61_dataout\ & NOT Die0(1));

\Dig0~22_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & Die0(3) & \Die1[3]~55_dataout\ & NOT \Die1[1]~61_dataout\ & Die0(1));

\Dig0~22_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & NOT Die0(3) & NOT \Die1[3]~55_dataout\ & NOT \Die1[1]~61_dataout\ & Die0(1));

\Dig0~22_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & Die0(3) & \Die1[3]~55_dataout\ & \Die1[1]~61_dataout\ & Die0(1));

\Dig0~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~22_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Dig0~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~31_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Die1[0]~34_dataout\ & NOT Die0(0) & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & NOT Die0(3) & NOT \Die1[3]~55_dataout\ & \Die1[1]~61_dataout\);

\Dig0~31_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0) & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & Die0(1) & \Die1[1]~61_dataout\);

\Dig0~31_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0) & \Die1[2]~42_dataout\ & Die0(2) & NOT Die0(3) & \Die1[3]~55_dataout\ & \Die1[1]~61_dataout\);

\Dig0~31_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0) & \Die1[2]~42_dataout\ & Die0(2) & Die0(3) & NOT \Die1[3]~55_dataout\ & \Die1[1]~61_dataout\);

\Dig0~31_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Die1[0]~34_dataout\ & NOT Die0(0) & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & Die0(3) & \Die1[3]~55_dataout\ & \Die1[1]~61_dataout\);

\Dig0~31_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~31_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~31_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~31_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Dig0~31_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~31_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~10_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & NOT \Die1[3]~55_dataout\ & Die0(3) & \Die1[1]~61_dataout\);

\LessThan0~10_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & NOT \Die1[1]~61_dataout\ & NOT Die0(1));

\LessThan0~10_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & NOT \Die1[3]~55_dataout\ & NOT Die0(3));

\LessThan0~10_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & \Die1[3]~55_dataout\ & Die0(3));

\LessThan0~10_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & \Die1[1]~61_dataout\ & NOT Die0(1));

\LessThan0~10_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~10_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~10_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~10_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\LessThan0~10_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~10_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~16_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[2]~42_dataout\ & Die0(2) & NOT \Die1[3]~55_dataout\ & Die0(3));

\LessThan0~16_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & \Die1[3]~55_dataout\ & NOT Die0(3) & \Die1[1]~61_dataout\);

\LessThan0~16_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & Die0(1) & \Die1[1]~61_dataout\);

\LessThan0~16_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & Die0(1) & NOT \Die1[1]~61_dataout\);

\LessThan0~16_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[2]~42_dataout\ & Die0(2) & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & NOT Die0(1) & NOT \Die1[1]~61_dataout\);

\LessThan0~16_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~16_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~16_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~16_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\LessThan0~16_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~16_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~32_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[3]~55_dataout\ & Die0(3) & \Add0|adder|adder[0]|gn[2]~5_dataout\ & NOT Die0(1));

\Dig0~32_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~5_dataout\ & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|ps[2]~10_dataout\ & \Die1[1]~61_dataout\ & NOT Die0(1));

\Dig0~32_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Die1[3]~55_dataout\ & NOT Die0(3) & \Add0|adder|adder[0]|gn[2]~5_dataout\ & NOT Die0(1));

\Dig0~32_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Die1[3]~55_dataout\ & NOT Die0(3) & \Add0|adder|adder[0]|gn[2]~5_dataout\ & Die0(0));

\Dig0~32_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Die1[3]~55_dataout\ & NOT Die0(3) & \Add0|adder|adder[0]|gn[2]~5_dataout\ & NOT \Die1[0]~34_dataout\);

\Dig0~32_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~32_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~32_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~32_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Dig0~32_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~32_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~34_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[2]~42_dataout\ & Die0(2) & NOT \Die1[3]~55_dataout\ & Die0(3));

\Dig0~34_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|ps[2]~10_dataout\ & NOT \Die1[3]~55_dataout\ & Die0(3) & \Die1[1]~61_dataout\);

\Dig0~34_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|ps[2]~10_dataout\ & \Die1[3]~55_dataout\ & NOT Die0(3) & \Die1[1]~61_dataout\);

\Dig0~34_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~5_dataout\ & \Add0|adder|adder[0]|gn[0]~4_dataout\ & \Add0|adder|adder[0]|ps[2]~10_dataout\ & Die0(1) & \Die1[1]~61_dataout\);

\Dig0~34_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~5_dataout\ & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|ps[2]~10_dataout\ & Die0(1) & NOT \Die1[1]~61_dataout\);

\Dig0~34_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~34_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~34_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~34_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Dig0~34_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~34_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~40_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & Die0(3) & \Die1[3]~55_dataout\ & \Die1[1]~61_dataout\ & NOT Die0(1));

\Dig0~40_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & \Die1[2]~42_dataout\ & Die0(2) & Die0(3) & \Die1[3]~55_dataout\ & NOT \Die1[1]~61_dataout\ & NOT Die0(1));

\Dig0~40_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & \Die1[2]~42_dataout\ & Die0(2) & NOT Die0(3) & NOT \Die1[3]~55_dataout\ & NOT \Die1[1]~61_dataout\ & NOT Die0(1));

\Dig0~40_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & NOT Die0(3) & \Die1[3]~55_dataout\ & NOT \Die1[1]~61_dataout\ & NOT Die0(1));

\Dig0~40_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & Die0(3) & NOT \Die1[3]~55_dataout\ & NOT \Die1[1]~61_dataout\ & NOT Die0(1));

\Dig0~40_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~40_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~40_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~40_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Dig0~40_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~40_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~46_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[2]~42_dataout\ & Die0(2) & \Die1[0]~34_dataout\ & NOT Die0(0) & Die0(1) & NOT Die0(3) & \Die1[3]~55_dataout\);

\Dig0~46_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & NOT Die0(1) & Die0(3) & \Die1[3]~55_dataout\);

\Dig0~46_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & NOT Die0(1) & NOT Die0(3) & NOT \Die1[3]~55_dataout\);

\Dig0~46_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & \Die1[1]~61_dataout\ & NOT Die0(1));

\Dig0~46_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & NOT \Die1[1]~61_dataout\ & NOT Die0(1));

\Dig0~46_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~46_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~46_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~46_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Dig0~46_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~46_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~51_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & NOT Die0(3) & NOT \Die1[3]~55_dataout\ & Die0(1) & \Die1[1]~61_dataout\);

\Dig0~51_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & \Add0|adder|adder[0]|gn[0]~1sexp_dataout\ & \Add0|adder|adder[0]|ps[2]~4sexp_dataout\ & Die0(1) & NOT \Die1[1]~61_dataout\);

\Dig0~51_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[2]~42_dataout\ & Die0(2) & NOT Die0(3) & \Die1[3]~55_dataout\ & Die0(1) & \Die1[1]~61_dataout\);

\Dig0~51_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[2]~42_dataout\ & Die0(2) & Die0(3) & NOT \Die1[3]~55_dataout\ & Die0(1) & \Die1[1]~61_dataout\);

\Dig0~51_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & Die0(3) & \Die1[3]~55_dataout\ & Die0(1) & \Die1[1]~61_dataout\);

\Dig0~51_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~51_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~51_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~51_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Dig0~51_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~51_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~1_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~2_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~63_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~63_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[2]~5_dataout\ & \Die1[3]~55_dataout\ & Die0(3) & Die0(0));

\Dig0~63_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Die1[0]~34_dataout\ & \Add0|adder|adder[0]|gn[2]~5_dataout\ & \Die1[3]~55_dataout\ & Die0(3));

\Dig0~63_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[2]~42_dataout\ & Die0(2) & \Add0|adder|adder[0]|gn[0]~4_dataout\ & NOT \Die1[1]~61_dataout\ & NOT Die0(1));

\Dig0~63_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~63_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~63_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~63_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~63_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Dig0~63_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~63_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~69_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~69_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0) & \Die1[2]~42_dataout\ & Die0(2) & Die0(1) & Die0(3) & NOT \Die1[3]~55_dataout\);

\Dig0~69_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & Die0(1) & Die0(3) & \Die1[3]~55_dataout\);

\Dig0~69_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0) & \Add0|adder|adder[0]|gn[2]~3sexp_dataout\ & NOT \Die1[2]~42_dataout\ & NOT Die0(2) & Die0(1) & NOT Die0(3) & NOT \Die1[3]~55_dataout\);

\Dig0~69_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[1]~61_dataout\ & \Die1[0]~34_dataout\ & NOT Die0(0) & \Die1[2]~42_dataout\ & Die0(2) & Die0(1));

\Dig0~69_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~69_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~69_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~69_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Dig0~69_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~69_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Dig0~6_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0) & Die0(1) & \Die1[1]~61_dataout\);

\Dig0~7_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0) & NOT Die0(1) & NOT \Die1[1]~61_dataout\);

\Dig0~8_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[0]~4_dataout\ & NOT Die0(1) & \Die1[1]~61_dataout\);

\Dig0~9_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Add0|adder|adder[0]|gn[0]~4_dataout\ & Die0(1) & NOT \Die1[1]~61_dataout\);

\Die1[1]~12sexpand1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RSTn~dataout\ & NOT \Roll1~dataout\);

\Die1[0]~11sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Roll1~dataout\ & \Die1[0]~34_dataout\);

\Add0|adder|adder[0]|ps[2]~4sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Die1[2]~42_dataout\ & NOT Die0(2));

\Add3~6sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & \Die1[1]~61_dataout\);

\Add0|adder|adder[0]|gn[0]~1sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0));

\Add0|adder|adder[0]|gn[2]~3sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[2]~42_dataout\ & Die0(2));

\Add0|adder|adder[0]|gn[0]~4_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[0]~34_dataout\ & NOT Die0(0));

\Add0|adder|adder[0]|gn[2]~5_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Die1[2]~42_dataout\ & Die0(2));

\Add0|adder|adder[0]|ps[2]~10_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Die1[2]~42_dataout\ & NOT Die0(2));
\ALT_INV_RSTn~dataout\ <= NOT \RSTn~dataout\;
\ALT_INV_Roll1~dataout\ <= NOT \Roll1~dataout\;
\ALT_INV_Die1[1]~61_dataout\ <= NOT \Die1[1]~61_dataout\;
\ALT_INV_Die1[3]~55_dataout\ <= NOT \Die1[3]~55_dataout\;
\ALT_INV_Die1[2]~42_dataout\ <= NOT \Die1[2]~42_dataout\;
ALT_INV_Die0(1) <= NOT Die0(1);
ALT_INV_Die0(3) <= NOT Die0(3);
ALT_INV_Die0(2) <= NOT Die0(2);
ALT_INV_Die0(0) <= NOT Die0(0);
\ALT_INV_Die1[0]~34_dataout\ <= NOT \Die1[0]~34_dataout\;

-- Location: PIN_43
\Clk~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk,
	dataout => \Clk~dataout\);

-- Location: LC21
\~GND~0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~0_pterm0_bus\,
	pterm1 => \~GND~0_pterm1_bus\,
	pterm2 => \~GND~0_pterm2_bus\,
	pterm3 => \~GND~0_pterm3_bus\,
	pterm4 => \~GND~0_pterm4_bus\,
	pterm5 => \~GND~0_pterm5_bus\,
	pxor => \~GND~0_pxor_bus\,
	pclk => \~GND~0_pclk_bus\,
	papre => \~GND~0_papre_bus\,
	paclr => \~GND~0_paclr_bus\,
	pena => \~GND~0_pena_bus\,
	dataout => \~GND~0~dataout\);

-- Location: LC25
\~GND~1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~1_pterm0_bus\,
	pterm1 => \~GND~1_pterm1_bus\,
	pterm2 => \~GND~1_pterm2_bus\,
	pterm3 => \~GND~1_pterm3_bus\,
	pterm4 => \~GND~1_pterm4_bus\,
	pterm5 => \~GND~1_pterm5_bus\,
	pxor => \~GND~1_pxor_bus\,
	pclk => \~GND~1_pclk_bus\,
	papre => \~GND~1_papre_bus\,
	paclr => \~GND~1_paclr_bus\,
	pena => \~GND~1_pena_bus\,
	dataout => \~GND~1~dataout\);

-- Location: LC30
\~GND~2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~2_pterm0_bus\,
	pterm1 => \~GND~2_pterm1_bus\,
	pterm2 => \~GND~2_pterm2_bus\,
	pterm3 => \~GND~2_pterm3_bus\,
	pterm4 => \~GND~2_pterm4_bus\,
	pterm5 => \~GND~2_pterm5_bus\,
	pxor => \~GND~2_pxor_bus\,
	pclk => \~GND~2_pclk_bus\,
	papre => \~GND~2_papre_bus\,
	paclr => \~GND~2_paclr_bus\,
	pena => \~GND~2_pena_bus\,
	dataout => \~GND~2~dataout\);

-- Location: PIN_1
\RSTn~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RSTn,
	dataout => \RSTn~dataout\);

-- Location: PIN_28
\Roll0~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Roll0,
	dataout => \Roll0~dataout\);

-- Location: LC1
\Die0[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \Clk~dataout\,
	aclr => \ALT_INV_RSTn~dataout\,
	pterm0 => \Die0[0]_pterm0_bus\,
	pterm1 => \Die0[0]_pterm1_bus\,
	pterm2 => \Die0[0]_pterm2_bus\,
	pterm3 => \Die0[0]_pterm3_bus\,
	pterm4 => \Die0[0]_pterm4_bus\,
	pterm5 => \Die0[0]_pterm5_bus\,
	pxor => \Die0[0]_pxor_bus\,
	pclk => \Die0[0]_pclk_bus\,
	papre => \Die0[0]_papre_bus\,
	paclr => \Die0[0]_paclr_bus\,
	pena => \Die0[0]_pena_bus\,
	dataout => Die0(0));

-- Location: SEXP24
\Die1[1]~12sexpand1\ : max_sexp
PORT MAP (
	datain => \Die1[1]~12sexpand1_datain_bus\,
	dataout => \Die1[1]~12sexpand1_dataout\);

-- Location: PIN_40
\Roll1~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Roll1,
	dataout => \Roll1~dataout\);

-- Location: SEXP25
\Die1[0]~11sexp\ : max_sexp
PORT MAP (
	datain => \Die1[0]~11sexp_datain_bus\,
	dataout => \Die1[0]~11sexp_dataout\);

-- Location: LC22
\Die1[0]~34\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Die1[0]~34_pterm0_bus\,
	pterm1 => \Die1[0]~34_pterm1_bus\,
	pterm2 => \Die1[0]~34_pterm2_bus\,
	pterm3 => \Die1[0]~34_pterm3_bus\,
	pterm4 => \Die1[0]~34_pterm4_bus\,
	pterm5 => \Die1[0]~34_pterm5_bus\,
	pxor => \Die1[0]~34_pxor_bus\,
	pclk => \Die1[0]~34_pclk_bus\,
	papre => \Die1[0]~34_papre_bus\,
	paclr => \Die1[0]~34_paclr_bus\,
	pena => \Die1[0]~34_pena_bus\,
	dataout => \Die1[0]~34_dataout\);

-- Location: LC24
\Add0|adder|result_node|sout_node[0]~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Add0|adder|result_node|sout_node[0]~6_pterm0_bus\,
	pterm1 => \Add0|adder|result_node|sout_node[0]~6_pterm1_bus\,
	pterm2 => \Add0|adder|result_node|sout_node[0]~6_pterm2_bus\,
	pterm3 => \Add0|adder|result_node|sout_node[0]~6_pterm3_bus\,
	pterm4 => \Add0|adder|result_node|sout_node[0]~6_pterm4_bus\,
	pterm5 => \Add0|adder|result_node|sout_node[0]~6_pterm5_bus\,
	pxor => \Add0|adder|result_node|sout_node[0]~6_pxor_bus\,
	pclk => \Add0|adder|result_node|sout_node[0]~6_pclk_bus\,
	papre => \Add0|adder|result_node|sout_node[0]~6_papre_bus\,
	paclr => \Add0|adder|result_node|sout_node[0]~6_paclr_bus\,
	pena => \Add0|adder|result_node|sout_node[0]~6_pena_bus\,
	dataout => \Add0|adder|result_node|sout_node[0]~6_dataout\);

-- Location: LC4
\Die0[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \Clk~dataout\,
	aclr => \ALT_INV_RSTn~dataout\,
	pterm0 => \Die0[2]_pterm0_bus\,
	pterm1 => \Die0[2]_pterm1_bus\,
	pterm2 => \Die0[2]_pterm2_bus\,
	pterm3 => \Die0[2]_pterm3_bus\,
	pterm4 => \Die0[2]_pterm4_bus\,
	pterm5 => \Die0[2]_pterm5_bus\,
	pxor => \Die0[2]_pxor_bus\,
	pclk => \Die0[2]_pclk_bus\,
	papre => \Die0[2]_papre_bus\,
	paclr => \Die0[2]_paclr_bus\,
	pena => \Die0[2]_pena_bus\,
	dataout => Die0(2));

-- Location: LC5
\Die0[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \Clk~dataout\,
	aclr => \ALT_INV_RSTn~dataout\,
	pterm0 => \Die0[3]_pterm0_bus\,
	pterm1 => \Die0[3]_pterm1_bus\,
	pterm2 => \Die0[3]_pterm2_bus\,
	pterm3 => \Die0[3]_pterm3_bus\,
	pterm4 => \Die0[3]_pterm4_bus\,
	pterm5 => \Die0[3]_pterm5_bus\,
	pxor => \Die0[3]_pxor_bus\,
	pclk => \Die0[3]_pclk_bus\,
	papre => \Die0[3]_papre_bus\,
	paclr => \Die0[3]_paclr_bus\,
	pena => \Die0[3]_pena_bus\,
	dataout => Die0(3));

-- Location: LC6
\Die0[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \Clk~dataout\,
	aclr => \ALT_INV_RSTn~dataout\,
	pterm0 => \Die0[1]_pterm0_bus\,
	pterm1 => \Die0[1]_pterm1_bus\,
	pterm2 => \Die0[1]_pterm2_bus\,
	pterm3 => \Die0[1]_pterm3_bus\,
	pterm4 => \Die0[1]_pterm4_bus\,
	pterm5 => \Die0[1]_pterm5_bus\,
	pxor => \Die0[1]_pxor_bus\,
	pclk => \Die0[1]_pclk_bus\,
	papre => \Die0[1]_papre_bus\,
	paclr => \Die0[1]_paclr_bus\,
	pena => \Die0[1]_pena_bus\,
	dataout => Die0(1));

-- Location: LC7
\Add3~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Add3~7_pterm0_bus\,
	pterm1 => \Add3~7_pterm1_bus\,
	pterm2 => \Add3~7_pterm2_bus\,
	pterm3 => \Add3~7_pterm3_bus\,
	pterm4 => \Add3~7_pterm4_bus\,
	pterm5 => \Add3~7_pterm5_bus\,
	pxor => \Add3~7_pxor_bus\,
	pclk => \Add3~7_pclk_bus\,
	papre => \Add3~7_papre_bus\,
	paclr => \Add3~7_paclr_bus\,
	pena => \Add3~7_pena_bus\,
	dataout => \Add3~7_dataout\);

-- Location: SEXP26
\Add3~6sexp\ : max_sexp
PORT MAP (
	datain => \Add3~6sexp_datain_bus\,
	dataout => \Add3~6sexp_dataout\);

-- Location: LC28
\Die1[3]~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Die1[3]~18_pterm0_bus\,
	pterm1 => \Die1[3]~18_pterm1_bus\,
	pterm2 => \Die1[3]~18_pterm2_bus\,
	pterm3 => \Die1[3]~18_pterm3_bus\,
	pterm4 => \Die1[3]~18_pterm4_bus\,
	pterm5 => \Die1[3]~18_pterm5_bus\,
	pxor => \Die1[3]~18_pxor_bus\,
	pclk => \Die1[3]~18_pclk_bus\,
	papre => \Die1[3]~18_papre_bus\,
	paclr => \Die1[3]~18_paclr_bus\,
	pena => \Die1[3]~18_pena_bus\,
	dataout => \Die1[3]~18_dataout\);

-- Location: LC27
\Die1[3]~55\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Die1[3]~55_pterm0_bus\,
	pterm1 => \Die1[3]~55_pterm1_bus\,
	pterm2 => \Die1[3]~55_pterm2_bus\,
	pterm3 => \Die1[3]~55_pterm3_bus\,
	pterm4 => \Die1[3]~55_pterm4_bus\,
	pterm5 => \Die1[3]~55_pterm5_bus\,
	pxor => \Die1[3]~55_pxor_bus\,
	pclk => \Die1[3]~55_pclk_bus\,
	papre => \Die1[3]~55_papre_bus\,
	paclr => \Die1[3]~55_paclr_bus\,
	pena => \Die1[3]~55_pena_bus\,
	dataout => \Die1[3]~55_dataout\);

-- Location: LC15
\Die1[2]~16\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Die1[2]~16_pterm0_bus\,
	pterm1 => \Die1[2]~16_pterm1_bus\,
	pterm2 => \Die1[2]~16_pterm2_bus\,
	pterm3 => \Die1[2]~16_pterm3_bus\,
	pterm4 => \Die1[2]~16_pterm4_bus\,
	pterm5 => \Die1[2]~16_pterm5_bus\,
	pxor => \Die1[2]~16_pxor_bus\,
	pclk => \Die1[2]~16_pclk_bus\,
	papre => \Die1[2]~16_papre_bus\,
	paclr => \Die1[2]~16_paclr_bus\,
	pena => \Die1[2]~16_pena_bus\,
	dataout => \Die1[2]~16_dataout\);

-- Location: LC26
\Die1[2]~42\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Die1[2]~42_pterm0_bus\,
	pterm1 => \Die1[2]~42_pterm1_bus\,
	pterm2 => \Die1[2]~42_pterm2_bus\,
	pterm3 => \Die1[2]~42_pterm3_bus\,
	pterm4 => \Die1[2]~42_pterm4_bus\,
	pterm5 => \Die1[2]~42_pterm5_bus\,
	pxor => \Die1[2]~42_pxor_bus\,
	pclk => \Die1[2]~42_pclk_bus\,
	papre => \Die1[2]~42_papre_bus\,
	paclr => \Die1[2]~42_paclr_bus\,
	pena => \Die1[2]~42_pena_bus\,
	dataout => \Die1[2]~42_dataout\);

-- Location: LC16
\Die1[3]~48\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Die1[3]~48_pterm0_bus\,
	pterm1 => \Die1[3]~48_pterm1_bus\,
	pterm2 => \Die1[3]~48_pterm2_bus\,
	pterm3 => \Die1[3]~48_pterm3_bus\,
	pterm4 => \Die1[3]~48_pterm4_bus\,
	pterm5 => \Die1[3]~48_pterm5_bus\,
	pxor => \Die1[3]~48_pxor_bus\,
	pclk => \Die1[3]~48_pclk_bus\,
	papre => \Die1[3]~48_papre_bus\,
	paclr => \Die1[3]~48_paclr_bus\,
	pena => \Die1[3]~48_pena_bus\,
	dataout => \Die1[3]~48_dataout\);

-- Location: LC23
\Die1[1]~61\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Die1[1]~61_pterm0_bus\,
	pterm1 => \Die1[1]~61_pterm1_bus\,
	pterm2 => \Die1[1]~61_pterm2_bus\,
	pterm3 => \Die1[1]~61_pterm3_bus\,
	pterm4 => \Die1[1]~61_pterm4_bus\,
	pterm5 => \Die1[1]~61_pterm5_bus\,
	pxor => \Die1[1]~61_pxor_bus\,
	pclk => \Die1[1]~61_pclk_bus\,
	papre => \Die1[1]~61_papre_bus\,
	paclr => \Die1[1]~61_paclr_bus\,
	pena => \Die1[1]~61_pena_bus\,
	dataout => \Die1[1]~61_dataout\);

-- Location: SEXP1
\Add0|adder|adder[0]|ps[2]~4sexp\ : max_sexp
PORT MAP (
	datain => \Add0|adder|adder[0]|ps[2]~4sexp_datain_bus\,
	dataout => \Add0|adder|adder[0]|ps[2]~4sexp_dataout\);

-- Location: SEXP4
\Add0|adder|adder[0]|gn[0]~1sexp\ : max_sexp
PORT MAP (
	datain => \Add0|adder|adder[0]|gn[0]~1sexp_datain_bus\,
	dataout => \Add0|adder|adder[0]|gn[0]~1sexp_dataout\);

-- Location: SEXP5
\Add0|adder|adder[0]|gn[2]~3sexp\ : max_sexp
PORT MAP (
	datain => \Add0|adder|adder[0]|gn[2]~3sexp_datain_bus\,
	dataout => \Add0|adder|adder[0]|gn[2]~3sexp_dataout\);

-- Location: LC12
\LessThan0~10\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \LessThan0~10_pterm0_bus\,
	pterm1 => \LessThan0~10_pterm1_bus\,
	pterm2 => \LessThan0~10_pterm2_bus\,
	pterm3 => \LessThan0~10_pterm3_bus\,
	pterm4 => \LessThan0~10_pterm4_bus\,
	pterm5 => \LessThan0~10_pterm5_bus\,
	pxor => \LessThan0~10_pxor_bus\,
	pclk => \LessThan0~10_pclk_bus\,
	papre => \LessThan0~10_papre_bus\,
	paclr => \LessThan0~10_paclr_bus\,
	pena => \LessThan0~10_pena_bus\,
	pexpout => \LessThan0~10_pexpout\);

-- Location: LC13
\LessThan0~16\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \LessThan0~10_pexpout\,
	pterm0 => \LessThan0~16_pterm0_bus\,
	pterm1 => \LessThan0~16_pterm1_bus\,
	pterm2 => \LessThan0~16_pterm2_bus\,
	pterm3 => \LessThan0~16_pterm3_bus\,
	pterm4 => \LessThan0~16_pterm4_bus\,
	pterm5 => \LessThan0~16_pterm5_bus\,
	pxor => \LessThan0~16_pxor_bus\,
	pclk => \LessThan0~16_pclk_bus\,
	papre => \LessThan0~16_papre_bus\,
	paclr => \LessThan0~16_paclr_bus\,
	pena => \LessThan0~16_pena_bus\,
	pexpout => \LessThan0~16_pexpout\);

-- Location: LC14
\LessThan0~8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \LessThan0~16_pexpout\,
	pterm0 => \LessThan0~8_pterm0_bus\,
	pterm1 => \LessThan0~8_pterm1_bus\,
	pterm2 => \LessThan0~8_pterm2_bus\,
	pterm3 => \LessThan0~8_pterm3_bus\,
	pterm4 => \LessThan0~8_pterm4_bus\,
	pterm5 => \LessThan0~8_pterm5_bus\,
	pxor => \LessThan0~8_pxor_bus\,
	pclk => \LessThan0~8_pclk_bus\,
	papre => \LessThan0~8_papre_bus\,
	paclr => \LessThan0~8_paclr_bus\,
	pena => \LessThan0~8_pena_bus\,
	dataout => \LessThan0~8_dataout\);

-- Location: SEXP28
\Add0|adder|adder[0]|gn[2]~5\ : max_sexp
PORT MAP (
	datain => \Add0|adder|adder[0]|gn[2]~5_datain_bus\,
	dataout => \Add0|adder|adder[0]|gn[2]~5_dataout\);

-- Location: SEXP27
\Add0|adder|adder[0]|gn[0]~4\ : max_sexp
PORT MAP (
	datain => \Add0|adder|adder[0]|gn[0]~4_datain_bus\,
	dataout => \Add0|adder|adder[0]|gn[0]~4_dataout\);

-- Location: LC17
\Dig0~63\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Dig0~63_pterm0_bus\,
	pterm1 => \Dig0~63_pterm1_bus\,
	pterm2 => \Dig0~63_pterm2_bus\,
	pterm3 => \Dig0~63_pterm3_bus\,
	pterm4 => \Dig0~63_pterm4_bus\,
	pterm5 => \Dig0~63_pterm5_bus\,
	pxor => \Dig0~63_pxor_bus\,
	pclk => \Dig0~63_pclk_bus\,
	papre => \Dig0~63_papre_bus\,
	paclr => \Dig0~63_paclr_bus\,
	pena => \Dig0~63_pena_bus\,
	pexpout => \Dig0~63_pexpout\);

-- Location: SEXP30
\Add0|adder|adder[0]|ps[2]~10\ : max_sexp
PORT MAP (
	datain => \Add0|adder|adder[0]|ps[2]~10_datain_bus\,
	dataout => \Add0|adder|adder[0]|ps[2]~10_dataout\);

-- Location: LC18
\Dig0~32\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Dig0~63_pexpout\,
	pterm0 => \Dig0~32_pterm0_bus\,
	pterm1 => \Dig0~32_pterm1_bus\,
	pterm2 => \Dig0~32_pterm2_bus\,
	pterm3 => \Dig0~32_pterm3_bus\,
	pterm4 => \Dig0~32_pterm4_bus\,
	pterm5 => \Dig0~32_pterm5_bus\,
	pxor => \Dig0~32_pxor_bus\,
	pclk => \Dig0~32_pclk_bus\,
	papre => \Dig0~32_papre_bus\,
	paclr => \Dig0~32_paclr_bus\,
	pena => \Dig0~32_pena_bus\,
	pexpout => \Dig0~32_pexpout\);

-- Location: LC19
\Dig0~34\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Dig0~32_pexpout\,
	pterm0 => \Dig0~34_pterm0_bus\,
	pterm1 => \Dig0~34_pterm1_bus\,
	pterm2 => \Dig0~34_pterm2_bus\,
	pterm3 => \Dig0~34_pterm3_bus\,
	pterm4 => \Dig0~34_pterm4_bus\,
	pterm5 => \Dig0~34_pterm5_bus\,
	pxor => \Dig0~34_pxor_bus\,
	pclk => \Dig0~34_pclk_bus\,
	papre => \Dig0~34_papre_bus\,
	paclr => \Dig0~34_paclr_bus\,
	pena => \Dig0~34_pena_bus\,
	pexpout => \Dig0~34_pexpout\);

-- Location: SEXP22
\Dig0~6\ : max_sexp
PORT MAP (
	datain => \Dig0~6_datain_bus\,
	dataout => \Dig0~6_dataout\);

-- Location: SEXP21
\Dig0~7\ : max_sexp
PORT MAP (
	datain => \Dig0~7_datain_bus\,
	dataout => \Dig0~7_dataout\);

-- Location: SEXP17
\Dig0~8\ : max_sexp
PORT MAP (
	datain => \Dig0~8_datain_bus\,
	dataout => \Dig0~8_dataout\);

-- Location: SEXP23
\Dig0~9\ : max_sexp
PORT MAP (
	datain => \Dig0~9_datain_bus\,
	dataout => \Dig0~9_dataout\);

-- Location: LC20
\Dig0~10\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Dig0~34_pexpout\,
	pterm0 => \Dig0~10_pterm0_bus\,
	pterm1 => \Dig0~10_pterm1_bus\,
	pterm2 => \Dig0~10_pterm2_bus\,
	pterm3 => \Dig0~10_pterm3_bus\,
	pterm4 => \Dig0~10_pterm4_bus\,
	pterm5 => \Dig0~10_pterm5_bus\,
	pxor => \Dig0~10_pxor_bus\,
	pclk => \Dig0~10_pclk_bus\,
	papre => \Dig0~10_papre_bus\,
	paclr => \Dig0~10_paclr_bus\,
	pena => \Dig0~10_pena_bus\,
	dataout => \Dig0~10_dataout\);

-- Location: LC8
\Dig0~69\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Dig0~69_pterm0_bus\,
	pterm1 => \Dig0~69_pterm1_bus\,
	pterm2 => \Dig0~69_pterm2_bus\,
	pterm3 => \Dig0~69_pterm3_bus\,
	pterm4 => \Dig0~69_pterm4_bus\,
	pterm5 => \Dig0~69_pterm5_bus\,
	pxor => \Dig0~69_pxor_bus\,
	pclk => \Dig0~69_pclk_bus\,
	papre => \Dig0~69_papre_bus\,
	paclr => \Dig0~69_paclr_bus\,
	pena => \Dig0~69_pena_bus\,
	pexpout => \Dig0~69_pexpout\);

-- Location: LC9
\Dig0~46\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Dig0~69_pexpout\,
	pterm0 => \Dig0~46_pterm0_bus\,
	pterm1 => \Dig0~46_pterm1_bus\,
	pterm2 => \Dig0~46_pterm2_bus\,
	pterm3 => \Dig0~46_pterm3_bus\,
	pterm4 => \Dig0~46_pterm4_bus\,
	pterm5 => \Dig0~46_pterm5_bus\,
	pxor => \Dig0~46_pxor_bus\,
	pclk => \Dig0~46_pclk_bus\,
	papre => \Dig0~46_papre_bus\,
	paclr => \Dig0~46_paclr_bus\,
	pena => \Dig0~46_pena_bus\,
	pexpout => \Dig0~46_pexpout\);

-- Location: LC10
\Dig0~51\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Dig0~46_pexpout\,
	pterm0 => \Dig0~51_pterm0_bus\,
	pterm1 => \Dig0~51_pterm1_bus\,
	pterm2 => \Dig0~51_pterm2_bus\,
	pterm3 => \Dig0~51_pterm3_bus\,
	pterm4 => \Dig0~51_pterm4_bus\,
	pterm5 => \Dig0~51_pterm5_bus\,
	pxor => \Dig0~51_pxor_bus\,
	pclk => \Dig0~51_pclk_bus\,
	papre => \Dig0~51_papre_bus\,
	paclr => \Dig0~51_paclr_bus\,
	pena => \Dig0~51_pena_bus\,
	pexpout => \Dig0~51_pexpout\);

-- Location: LC11
\Dig0~31\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Dig0~51_pexpout\,
	pterm0 => \Dig0~31_pterm0_bus\,
	pterm1 => \Dig0~31_pterm1_bus\,
	pterm2 => \Dig0~31_pterm2_bus\,
	pterm3 => \Dig0~31_pterm3_bus\,
	pterm4 => \Dig0~31_pterm4_bus\,
	pterm5 => \Dig0~31_pterm5_bus\,
	pxor => \Dig0~31_pxor_bus\,
	pclk => \Dig0~31_pclk_bus\,
	papre => \Dig0~31_papre_bus\,
	paclr => \Dig0~31_paclr_bus\,
	pena => \Dig0~31_pena_bus\,
	dataout => \Dig0~31_dataout\);

-- Location: LC2
\Dig0~40\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Dig0~40_pterm0_bus\,
	pterm1 => \Dig0~40_pterm1_bus\,
	pterm2 => \Dig0~40_pterm2_bus\,
	pterm3 => \Dig0~40_pterm3_bus\,
	pterm4 => \Dig0~40_pterm4_bus\,
	pterm5 => \Dig0~40_pterm5_bus\,
	pxor => \Dig0~40_pxor_bus\,
	pclk => \Dig0~40_pclk_bus\,
	papre => \Dig0~40_papre_bus\,
	paclr => \Dig0~40_paclr_bus\,
	pena => \Dig0~40_pena_bus\,
	pexpout => \Dig0~40_pexpout\);

-- Location: LC3
\Dig0~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Dig0~40_pexpout\,
	pterm0 => \Dig0~22_pterm0_bus\,
	pterm1 => \Dig0~22_pterm1_bus\,
	pterm2 => \Dig0~22_pterm2_bus\,
	pterm3 => \Dig0~22_pterm3_bus\,
	pterm4 => \Dig0~22_pterm4_bus\,
	pterm5 => \Dig0~22_pterm5_bus\,
	pxor => \Dig0~22_pxor_bus\,
	pclk => \Dig0~22_pclk_bus\,
	papre => \Dig0~22_papre_bus\,
	paclr => \Dig0~22_paclr_bus\,
	pena => \Dig0~22_pena_bus\,
	dataout => \Dig0~22_dataout\);

-- Location: PIN_18
\Dig1[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~GND~0~dataout\,
	oe => VCC,
	padio => ww_Dig1(1));

-- Location: PIN_16
\Dig1[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~GND~1~dataout\,
	oe => VCC,
	padio => ww_Dig1(2));

-- Location: PIN_14
\Dig1[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~GND~2~dataout\,
	oe => VCC,
	padio => ww_Dig1(3));

-- Location: PIN_17
\Dig0[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Add0|adder|result_node|sout_node[0]~6_dataout\,
	oe => VCC,
	padio => ww_Dig0(0));

-- Location: PIN_5
\Dig1[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \LessThan0~8_dataout\,
	oe => VCC,
	padio => ww_Dig1(0));

-- Location: PIN_19
\Dig0[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Dig0~10_dataout\,
	oe => VCC,
	padio => ww_Dig0(1));

-- Location: PIN_6
\Dig0[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Dig0~31_dataout\,
	oe => VCC,
	padio => ww_Dig0(2));

-- Location: PIN_11
\Dig0[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Dig0~22_dataout\,
	oe => VCC,
	padio => ww_Dig0(3));
END structure;


