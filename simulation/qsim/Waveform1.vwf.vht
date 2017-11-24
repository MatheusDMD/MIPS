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
-- Generated on "11/24/2017 15:30:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          registerBank32
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY registerBank32_vhd_vec_tst IS
END registerBank32_vhd_vec_tst;
ARCHITECTURE registerBank32_arch OF registerBank32_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL DadoEscritoReg3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL DadoLidoReg1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL DadoLidoReg2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL EndReg1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL EndReg2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL EndReg3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL habEscritaReg : STD_LOGIC;
COMPONENT registerBank32
	PORT (
	clk : IN STD_LOGIC;
	DadoEscritoReg3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	DadoLidoReg1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	DadoLidoReg2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	EndReg1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	EndReg2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	EndReg3 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	habEscritaReg : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : registerBank32
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	DadoEscritoReg3 => DadoEscritoReg3,
	DadoLidoReg1 => DadoLidoReg1,
	DadoLidoReg2 => DadoLidoReg2,
	EndReg1 => EndReg1,
	EndReg2 => EndReg2,
	EndReg3 => EndReg3,
	habEscritaReg => habEscritaReg
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 80000 ps;
	clk <= '0';
	WAIT FOR 100000 ps;
	clk <= '1';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 3
	LOOP
		clk <= '0';
		WAIT FOR 100000 ps;
		clk <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- EndReg1[4]
t_prcs_EndReg1_4: PROCESS
BEGIN
	EndReg1(4) <= '0';
WAIT;
END PROCESS t_prcs_EndReg1_4;
-- EndReg1[3]
t_prcs_EndReg1_3: PROCESS
BEGIN
	EndReg1(3) <= '1';
WAIT;
END PROCESS t_prcs_EndReg1_3;
-- EndReg1[2]
t_prcs_EndReg1_2: PROCESS
BEGIN
	EndReg1(2) <= '1';
	WAIT FOR 800000 ps;
	EndReg1(2) <= '0';
WAIT;
END PROCESS t_prcs_EndReg1_2;
-- EndReg1[1]
t_prcs_EndReg1_1: PROCESS
BEGIN
	EndReg1(1) <= '1';
WAIT;
END PROCESS t_prcs_EndReg1_1;
-- EndReg1[0]
t_prcs_EndReg1_0: PROCESS
BEGIN
	EndReg1(0) <= '1';
WAIT;
END PROCESS t_prcs_EndReg1_0;
-- EndReg2[4]
t_prcs_EndReg2_4: PROCESS
BEGIN
	EndReg2(4) <= '0';
WAIT;
END PROCESS t_prcs_EndReg2_4;
-- EndReg2[3]
t_prcs_EndReg2_3: PROCESS
BEGIN
	EndReg2(3) <= '1';
WAIT;
END PROCESS t_prcs_EndReg2_3;
-- EndReg2[2]
t_prcs_EndReg2_2: PROCESS
BEGIN
	EndReg2(2) <= '0';
	WAIT FOR 800000 ps;
	EndReg2(2) <= '1';
WAIT;
END PROCESS t_prcs_EndReg2_2;
-- EndReg2[1]
t_prcs_EndReg2_1: PROCESS
BEGIN
	EndReg2(1) <= '0';
	WAIT FOR 400000 ps;
	EndReg2(1) <= '1';
	WAIT FOR 400000 ps;
	EndReg2(1) <= '0';
WAIT;
END PROCESS t_prcs_EndReg2_1;
-- EndReg2[0]
t_prcs_EndReg2_0: PROCESS
BEGIN
	EndReg2(0) <= '1';
	WAIT FOR 800000 ps;
	EndReg2(0) <= '0';
WAIT;
END PROCESS t_prcs_EndReg2_0;
-- EndReg3[4]
t_prcs_EndReg3_4: PROCESS
BEGIN
	EndReg3(4) <= '0';
WAIT;
END PROCESS t_prcs_EndReg3_4;
-- EndReg3[3]
t_prcs_EndReg3_3: PROCESS
BEGIN
	EndReg3(3) <= '1';
WAIT;
END PROCESS t_prcs_EndReg3_3;
-- EndReg3[2]
t_prcs_EndReg3_2: PROCESS
BEGIN
	EndReg3(2) <= '1';
	WAIT FOR 200000 ps;
	EndReg3(2) <= '0';
	WAIT FOR 400000 ps;
	EndReg3(2) <= '1';
WAIT;
END PROCESS t_prcs_EndReg3_2;
-- EndReg3[1]
t_prcs_EndReg3_1: PROCESS
BEGIN
	EndReg3(1) <= '1';
	WAIT FOR 600000 ps;
	EndReg3(1) <= '0';
WAIT;
END PROCESS t_prcs_EndReg3_1;
-- EndReg3[0]
t_prcs_EndReg3_0: PROCESS
BEGIN
	EndReg3(0) <= '1';
	WAIT FOR 600000 ps;
	EndReg3(0) <= '0';
	WAIT FOR 200000 ps;
	EndReg3(0) <= '1';
WAIT;
END PROCESS t_prcs_EndReg3_0;
-- DadoEscritoReg3[31]
t_prcs_DadoEscritoReg3_31: PROCESS
BEGIN
	DadoEscritoReg3(31) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_31;
-- DadoEscritoReg3[30]
t_prcs_DadoEscritoReg3_30: PROCESS
BEGIN
	DadoEscritoReg3(30) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_30;
-- DadoEscritoReg3[29]
t_prcs_DadoEscritoReg3_29: PROCESS
BEGIN
	DadoEscritoReg3(29) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_29;
-- DadoEscritoReg3[28]
t_prcs_DadoEscritoReg3_28: PROCESS
BEGIN
	DadoEscritoReg3(28) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_28;
-- DadoEscritoReg3[27]
t_prcs_DadoEscritoReg3_27: PROCESS
BEGIN
	DadoEscritoReg3(27) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_27;
-- DadoEscritoReg3[26]
t_prcs_DadoEscritoReg3_26: PROCESS
BEGIN
	DadoEscritoReg3(26) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_26;
-- DadoEscritoReg3[25]
t_prcs_DadoEscritoReg3_25: PROCESS
BEGIN
	DadoEscritoReg3(25) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_25;
-- DadoEscritoReg3[24]
t_prcs_DadoEscritoReg3_24: PROCESS
BEGIN
	DadoEscritoReg3(24) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_24;
-- DadoEscritoReg3[23]
t_prcs_DadoEscritoReg3_23: PROCESS
BEGIN
	DadoEscritoReg3(23) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_23;
-- DadoEscritoReg3[22]
t_prcs_DadoEscritoReg3_22: PROCESS
BEGIN
	DadoEscritoReg3(22) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_22;
-- DadoEscritoReg3[21]
t_prcs_DadoEscritoReg3_21: PROCESS
BEGIN
	DadoEscritoReg3(21) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_21;
-- DadoEscritoReg3[20]
t_prcs_DadoEscritoReg3_20: PROCESS
BEGIN
	DadoEscritoReg3(20) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_20;
-- DadoEscritoReg3[19]
t_prcs_DadoEscritoReg3_19: PROCESS
BEGIN
	DadoEscritoReg3(19) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_19;
-- DadoEscritoReg3[18]
t_prcs_DadoEscritoReg3_18: PROCESS
BEGIN
	DadoEscritoReg3(18) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_18;
-- DadoEscritoReg3[17]
t_prcs_DadoEscritoReg3_17: PROCESS
BEGIN
	DadoEscritoReg3(17) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_17;
-- DadoEscritoReg3[16]
t_prcs_DadoEscritoReg3_16: PROCESS
BEGIN
	DadoEscritoReg3(16) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_16;
-- DadoEscritoReg3[15]
t_prcs_DadoEscritoReg3_15: PROCESS
BEGIN
	DadoEscritoReg3(15) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_15;
-- DadoEscritoReg3[14]
t_prcs_DadoEscritoReg3_14: PROCESS
BEGIN
	DadoEscritoReg3(14) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_14;
-- DadoEscritoReg3[13]
t_prcs_DadoEscritoReg3_13: PROCESS
BEGIN
	DadoEscritoReg3(13) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_13;
-- DadoEscritoReg3[12]
t_prcs_DadoEscritoReg3_12: PROCESS
BEGIN
	DadoEscritoReg3(12) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_12;
-- DadoEscritoReg3[11]
t_prcs_DadoEscritoReg3_11: PROCESS
BEGIN
	DadoEscritoReg3(11) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_11;
-- DadoEscritoReg3[10]
t_prcs_DadoEscritoReg3_10: PROCESS
BEGIN
	DadoEscritoReg3(10) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_10;
-- DadoEscritoReg3[9]
t_prcs_DadoEscritoReg3_9: PROCESS
BEGIN
	DadoEscritoReg3(9) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_9;
-- DadoEscritoReg3[8]
t_prcs_DadoEscritoReg3_8: PROCESS
BEGIN
	DadoEscritoReg3(8) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_8;
-- DadoEscritoReg3[7]
t_prcs_DadoEscritoReg3_7: PROCESS
BEGIN
	DadoEscritoReg3(7) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_7;
-- DadoEscritoReg3[6]
t_prcs_DadoEscritoReg3_6: PROCESS
BEGIN
	DadoEscritoReg3(6) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_6;
-- DadoEscritoReg3[5]
t_prcs_DadoEscritoReg3_5: PROCESS
BEGIN
	DadoEscritoReg3(5) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_5;
-- DadoEscritoReg3[4]
t_prcs_DadoEscritoReg3_4: PROCESS
BEGIN
	DadoEscritoReg3(4) <= '0';
	WAIT FOR 600000 ps;
	DadoEscritoReg3(4) <= '1';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_4;
-- DadoEscritoReg3[3]
t_prcs_DadoEscritoReg3_3: PROCESS
BEGIN
	DadoEscritoReg3(3) <= '0';
	WAIT FOR 400000 ps;
	DadoEscritoReg3(3) <= '1';
	WAIT FOR 200000 ps;
	DadoEscritoReg3(3) <= '0';
	WAIT FOR 200000 ps;
	DadoEscritoReg3(3) <= '1';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_3;
-- DadoEscritoReg3[2]
t_prcs_DadoEscritoReg3_2: PROCESS
BEGIN
	DadoEscritoReg3(2) <= '0';
	WAIT FOR 200000 ps;
	DadoEscritoReg3(2) <= '1';
	WAIT FOR 200000 ps;
	DadoEscritoReg3(2) <= '0';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_2;
-- DadoEscritoReg3[1]
t_prcs_DadoEscritoReg3_1: PROCESS
BEGIN
	DadoEscritoReg3(1) <= '1';
	WAIT FOR 400000 ps;
	DadoEscritoReg3(1) <= '0';
	WAIT FOR 400000 ps;
	DadoEscritoReg3(1) <= '1';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_1;
-- DadoEscritoReg3[0]
t_prcs_DadoEscritoReg3_0: PROCESS
BEGIN
	DadoEscritoReg3(0) <= '0';
	WAIT FOR 200000 ps;
	DadoEscritoReg3(0) <= '1';
	WAIT FOR 400000 ps;
	DadoEscritoReg3(0) <= '0';
	WAIT FOR 200000 ps;
	DadoEscritoReg3(0) <= '1';
WAIT;
END PROCESS t_prcs_DadoEscritoReg3_0;

-- habEscritaReg
t_prcs_habEscritaReg: PROCESS
BEGIN
	habEscritaReg <= '1';
	WAIT FOR 400000 ps;
	habEscritaReg <= '0';
	WAIT FOR 200000 ps;
	habEscritaReg <= '1';
	WAIT FOR 200000 ps;
	habEscritaReg <= '0';
WAIT;
END PROCESS t_prcs_habEscritaReg;
END registerBank32_arch;
