-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/16/2017 15:55:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MIPS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPS_vhd_vec_tst IS
END MIPS_vhd_vec_tst;
ARCHITECTURE MIPS_arch OF MIPS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL dadoASerEscritoTest : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL enderecoASerEscritoTest : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL enderecoReg1Test : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL enderecoReg2Test : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL entraAULATest : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL entraBULATest : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL instrucaoTest : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT MIPS
	PORT (
	CLK : IN STD_LOGIC;
	dadoASerEscritoTest : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	enderecoASerEscritoTest : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	enderecoReg1Test : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	enderecoReg2Test : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	entraAULATest : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	entraBULATest : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	instrucaoTest : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MIPS
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	dadoASerEscritoTest => dadoASerEscritoTest,
	enderecoASerEscritoTest => enderecoASerEscritoTest,
	enderecoReg1Test => enderecoReg1Test,
	enderecoReg2Test => enderecoReg2Test,
	entraAULATest => entraAULATest,
	entraBULATest => entraBULATest,
	instrucaoTest => instrucaoTest
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '1';
	WAIT FOR 200000 ps;
	FOR i IN 1 TO 2
	LOOP
		CLK <= '0';
		WAIT FOR 200000 ps;
		CLK <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_CLK;
END MIPS_arch;
