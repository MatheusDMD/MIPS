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
-- Generated on "11/11/2017 14:44:46"
                                                             
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
SIGNAL A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Address3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL BEQ : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL Escrita3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL funct1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL habEscritaMEM : STD_LOGIC;
SIGNAL habEscritaReg : STD_LOGIC;
SIGNAL habLeituraMEM : STD_LOGIC;
SIGNAL mux_PC : STD_LOGIC;
SIGNAL mux_RtIm : STD_LOGIC;
SIGNAL Mux_RtRd : STD_LOGIC;
SIGNAL mux_ULAMem : STD_LOGIC;
SIGNAL OpCode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULAOPer : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ULAOPERATIONOUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT FluxoDeDados
	PORT (
	A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Address3 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	BEQ : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	Escrita3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	funct1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	habEscritaMEM : IN STD_LOGIC;
	habEscritaReg : IN STD_LOGIC;
	habLeituraMEM : IN STD_LOGIC;
	mux_PC : IN STD_LOGIC;
	mux_RtIm : IN STD_LOGIC;
	Mux_RtRd : IN STD_LOGIC;
	mux_ULAMem : IN STD_LOGIC;
	OpCode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	S : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULAOPer : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	ULAOPERATIONOUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FluxoDeDados
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	Address3 => Address3,
	B => B,
	BEQ => BEQ,
	CLK => CLK,
	Escrita3 => Escrita3,
	funct1 => funct1,
	habEscritaMEM => habEscritaMEM,
	habEscritaReg => habEscritaReg,
	habLeituraMEM => habLeituraMEM,
	mux_PC => mux_PC,
	mux_RtIm => mux_RtIm,
	Mux_RtRd => Mux_RtRd,
	mux_ULAMem => mux_ULAMem,
	OpCode => OpCode,
	S => S,
	ULAOPer => ULAOPer,
	ULAOPERATIONOUT => ULAOPERATIONOUT
	);

-- BEQ
t_prcs_BEQ: PROCESS
BEGIN
	BEQ <= '0';
WAIT;
END PROCESS t_prcs_BEQ;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '0';
	WAIT FOR 400000 ps;
	CLK <= '1';
	WAIT FOR 400000 ps;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- habEscritaMEM
t_prcs_habEscritaMEM: PROCESS
BEGIN
	habEscritaMEM <= '0';
WAIT;
END PROCESS t_prcs_habEscritaMEM;

-- habEscritaReg
t_prcs_habEscritaReg: PROCESS
BEGIN
	habEscritaReg <= '1';
WAIT;
END PROCESS t_prcs_habEscritaReg;

-- habLeituraMEM
t_prcs_habLeituraMEM: PROCESS
BEGIN
	habLeituraMEM <= '0';
WAIT;
END PROCESS t_prcs_habLeituraMEM;

-- mux_PC
t_prcs_mux_PC: PROCESS
BEGIN
	mux_PC <= '0';
WAIT;
END PROCESS t_prcs_mux_PC;

-- mux_RtIm
t_prcs_mux_RtIm: PROCESS
BEGIN
	mux_RtIm <= '0';
WAIT;
END PROCESS t_prcs_mux_RtIm;

-- Mux_RtRd
t_prcs_Mux_RtRd: PROCESS
BEGIN
	Mux_RtRd <= '1';
WAIT;
END PROCESS t_prcs_Mux_RtRd;

-- mux_ULAMem
t_prcs_mux_ULAMem: PROCESS
BEGIN
	mux_ULAMem <= '0';
WAIT;
END PROCESS t_prcs_mux_ULAMem;
-- ULAOPer[1]
t_prcs_ULAOPer_1: PROCESS
BEGIN
	ULAOPer(1) <= '1';
WAIT;
END PROCESS t_prcs_ULAOPer_1;
-- ULAOPer[0]
t_prcs_ULAOPer_0: PROCESS
BEGIN
	ULAOPer(0) <= '0';
WAIT;
END PROCESS t_prcs_ULAOPer_0;
END FluxoDeDados_arch;
