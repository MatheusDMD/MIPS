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
-- Generated on "11/26/2017 22:15:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FluxoDeDados
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FluxoDeDados_vhd_vec_tst IS
END FluxoDeDados_vhd_vec_tst;
ARCHITECTURE FluxoDeDados_arch OF FluxoDeDados_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BEQ : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL enderecoDisplay : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL habEscritaDisplay : STD_LOGIC;
SIGNAL habEscritaMEM : STD_LOGIC;
SIGNAL habEscritaReg : STD_LOGIC;
SIGNAL habLeituraMEM : STD_LOGIC;
SIGNAL mux_PC : STD_LOGIC;
SIGNAL mux_RtIm : STD_LOGIC;
SIGNAL Mux_RtRd : STD_LOGIC;
SIGNAL mux_ULAMem : STD_LOGIC;
SIGNAL OpCode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL PCdisplay : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RST_PC : STD_LOGIC;
SIGNAL ULAOPer : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT FluxoDeDados
	PORT (
	BEQ : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	enderecoDisplay : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	habEscritaDisplay : OUT STD_LOGIC;
	habEscritaMEM : IN STD_LOGIC;
	habEscritaReg : IN STD_LOGIC;
	habLeituraMEM : IN STD_LOGIC;
	mux_PC : IN STD_LOGIC;
	mux_RtIm : IN STD_LOGIC;
	Mux_RtRd : IN STD_LOGIC;
	mux_ULAMem : IN STD_LOGIC;
	OpCode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	PCdisplay : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	RST_PC : IN STD_LOGIC;
	ULAOPer : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FluxoDeDados
	PORT MAP (
-- list connections between master ports and signals
	BEQ => BEQ,
	CLK => CLK,
	enderecoDisplay => enderecoDisplay,
	habEscritaDisplay => habEscritaDisplay,
	habEscritaMEM => habEscritaMEM,
	habEscritaReg => habEscritaReg,
	habLeituraMEM => habLeituraMEM,
	mux_PC => mux_PC,
	mux_RtIm => mux_RtIm,
	Mux_RtRd => Mux_RtRd,
	mux_ULAMem => mux_ULAMem,
	OpCode => OpCode,
	PCdisplay => PCdisplay,
	RST_PC => RST_PC,
	ULAOPer => ULAOPer
	);

-- mux_PC
t_prcs_mux_PC: PROCESS
BEGIN
	mux_PC <= '0';
WAIT;
END PROCESS t_prcs_mux_PC;

-- Mux_RtRd
t_prcs_Mux_RtRd: PROCESS
BEGIN
	Mux_RtRd <= '0';
	WAIT FOR 400000 ps;
	Mux_RtRd <= '1';
	WAIT FOR 400000 ps;
	Mux_RtRd <= '0';
WAIT;
END PROCESS t_prcs_Mux_RtRd;

-- habEscritaReg
t_prcs_habEscritaReg: PROCESS
BEGIN
	habEscritaReg <= '0';
	WAIT FOR 400000 ps;
	habEscritaReg <= '1';
	WAIT FOR 400000 ps;
	habEscritaReg <= '0';
WAIT;
END PROCESS t_prcs_habEscritaReg;

-- mux_RtIm
t_prcs_mux_RtIm: PROCESS
BEGIN
	mux_RtIm <= '0';
	WAIT FOR 800000 ps;
	mux_RtIm <= '1';
WAIT;
END PROCESS t_prcs_mux_RtIm;
-- ULAOPer[1]
t_prcs_ULAOPer_1: PROCESS
BEGIN
	ULAOPer(1) <= '0';
	WAIT FOR 400000 ps;
	ULAOPer(1) <= '1';
	WAIT FOR 400000 ps;
	ULAOPer(1) <= '0';
WAIT;
END PROCESS t_prcs_ULAOPer_1;
-- ULAOPer[0]
t_prcs_ULAOPer_0: PROCESS
BEGIN
	ULAOPer(0) <= '0';
WAIT;
END PROCESS t_prcs_ULAOPer_0;

-- mux_ULAMem
t_prcs_mux_ULAMem: PROCESS
BEGIN
	mux_ULAMem <= '0';
WAIT;
END PROCESS t_prcs_mux_ULAMem;

-- BEQ
t_prcs_BEQ: PROCESS
BEGIN
	BEQ <= '0';
WAIT;
END PROCESS t_prcs_BEQ;

-- habLeituraMEM
t_prcs_habLeituraMEM: PROCESS
BEGIN
	habLeituraMEM <= '0';
WAIT;
END PROCESS t_prcs_habLeituraMEM;

-- habEscritaMEM
t_prcs_habEscritaMEM: PROCESS
BEGIN
	habEscritaMEM <= '0';
	WAIT FOR 800000 ps;
	habEscritaMEM <= '1';
WAIT;
END PROCESS t_prcs_habEscritaMEM;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '0';
	WAIT FOR 20000 ps;
	CLK <= '1';
	WAIT FOR 180000 ps;
	CLK <= '0';
	WAIT FOR 200000 ps;
	CLK <= '1';
	WAIT FOR 200000 ps;
	CLK <= '0';
	WAIT FOR 200000 ps;
	CLK <= '1';
WAIT;
END PROCESS t_prcs_CLK;
-- enderecoDisplay[31]
t_prcs_enderecoDisplay_31: PROCESS
BEGIN
	enderecoDisplay(31) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_31;
-- enderecoDisplay[30]
t_prcs_enderecoDisplay_30: PROCESS
BEGIN
	enderecoDisplay(30) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_30;
-- enderecoDisplay[29]
t_prcs_enderecoDisplay_29: PROCESS
BEGIN
	enderecoDisplay(29) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_29;
-- enderecoDisplay[28]
t_prcs_enderecoDisplay_28: PROCESS
BEGIN
	enderecoDisplay(28) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_28;
-- enderecoDisplay[27]
t_prcs_enderecoDisplay_27: PROCESS
BEGIN
	enderecoDisplay(27) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_27;
-- enderecoDisplay[26]
t_prcs_enderecoDisplay_26: PROCESS
BEGIN
	enderecoDisplay(26) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_26;
-- enderecoDisplay[25]
t_prcs_enderecoDisplay_25: PROCESS
BEGIN
	enderecoDisplay(25) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_25;
-- enderecoDisplay[24]
t_prcs_enderecoDisplay_24: PROCESS
BEGIN
	enderecoDisplay(24) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_24;
-- enderecoDisplay[23]
t_prcs_enderecoDisplay_23: PROCESS
BEGIN
	enderecoDisplay(23) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_23;
-- enderecoDisplay[22]
t_prcs_enderecoDisplay_22: PROCESS
BEGIN
	enderecoDisplay(22) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_22;
-- enderecoDisplay[21]
t_prcs_enderecoDisplay_21: PROCESS
BEGIN
	enderecoDisplay(21) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_21;
-- enderecoDisplay[20]
t_prcs_enderecoDisplay_20: PROCESS
BEGIN
	enderecoDisplay(20) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_20;
-- enderecoDisplay[19]
t_prcs_enderecoDisplay_19: PROCESS
BEGIN
	enderecoDisplay(19) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_19;
-- enderecoDisplay[18]
t_prcs_enderecoDisplay_18: PROCESS
BEGIN
	enderecoDisplay(18) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_18;
-- enderecoDisplay[17]
t_prcs_enderecoDisplay_17: PROCESS
BEGIN
	enderecoDisplay(17) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_17;
-- enderecoDisplay[16]
t_prcs_enderecoDisplay_16: PROCESS
BEGIN
	enderecoDisplay(16) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_16;
-- enderecoDisplay[15]
t_prcs_enderecoDisplay_15: PROCESS
BEGIN
	enderecoDisplay(15) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_15;
-- enderecoDisplay[14]
t_prcs_enderecoDisplay_14: PROCESS
BEGIN
	enderecoDisplay(14) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_14;
-- enderecoDisplay[13]
t_prcs_enderecoDisplay_13: PROCESS
BEGIN
	enderecoDisplay(13) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_13;
-- enderecoDisplay[12]
t_prcs_enderecoDisplay_12: PROCESS
BEGIN
	enderecoDisplay(12) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_12;
-- enderecoDisplay[11]
t_prcs_enderecoDisplay_11: PROCESS
BEGIN
	enderecoDisplay(11) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_11;
-- enderecoDisplay[10]
t_prcs_enderecoDisplay_10: PROCESS
BEGIN
	enderecoDisplay(10) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_10;
-- enderecoDisplay[9]
t_prcs_enderecoDisplay_9: PROCESS
BEGIN
	enderecoDisplay(9) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_9;
-- enderecoDisplay[8]
t_prcs_enderecoDisplay_8: PROCESS
BEGIN
	enderecoDisplay(8) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_8;
-- enderecoDisplay[7]
t_prcs_enderecoDisplay_7: PROCESS
BEGIN
	enderecoDisplay(7) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_7;
-- enderecoDisplay[6]
t_prcs_enderecoDisplay_6: PROCESS
BEGIN
	enderecoDisplay(6) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_6;
-- enderecoDisplay[5]
t_prcs_enderecoDisplay_5: PROCESS
BEGIN
	enderecoDisplay(5) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_5;
-- enderecoDisplay[4]
t_prcs_enderecoDisplay_4: PROCESS
BEGIN
	enderecoDisplay(4) <= '1';
WAIT;
END PROCESS t_prcs_enderecoDisplay_4;
-- enderecoDisplay[3]
t_prcs_enderecoDisplay_3: PROCESS
BEGIN
	enderecoDisplay(3) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_3;
-- enderecoDisplay[2]
t_prcs_enderecoDisplay_2: PROCESS
BEGIN
	enderecoDisplay(2) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_2;
-- enderecoDisplay[1]
t_prcs_enderecoDisplay_1: PROCESS
BEGIN
	enderecoDisplay(1) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_1;
-- enderecoDisplay[0]
t_prcs_enderecoDisplay_0: PROCESS
BEGIN
	enderecoDisplay(0) <= '0';
WAIT;
END PROCESS t_prcs_enderecoDisplay_0;

-- RST_PC
t_prcs_RST_PC: PROCESS
BEGIN
	RST_PC <= '1';
	WAIT FOR 20000 ps;
	RST_PC <= '0';
WAIT;
END PROCESS t_prcs_RST_PC;
END FluxoDeDados_arch;
