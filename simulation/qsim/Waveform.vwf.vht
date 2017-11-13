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
-- Generated on "11/13/2017 19:40:15"
                                                             
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
SIGNAL Address3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL AUlaTest : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL BEQ : STD_LOGIC;
SIGNAL BUlaTest : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL DadoEscritoTeste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL DadoLidoReg1Teste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL DadoLidoReg2Teste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL DepoisEstSinal : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Escrita3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL habEscritaMEM : STD_LOGIC;
SIGNAL habEscritaReg : STD_LOGIC;
SIGNAL habLeituraMEM : STD_LOGIC;
SIGNAL mux_PC : STD_LOGIC;
SIGNAL mux_RtIm : STD_LOGIC;
SIGNAL Mux_RtRd : STD_LOGIC;
SIGNAL mux_ULAMem : STD_LOGIC;
SIGNAL OpCode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Reg1Test : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Reg2Test : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL saidaPCteste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaULAteste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULAOPer : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL zero : STD_LOGIC;
COMPONENT FluxoDeDados
	PORT (
	Address3 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	AUlaTest : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	BEQ : IN STD_LOGIC;
	BUlaTest : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	CLK : IN STD_LOGIC;
	DadoEscritoTeste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	DadoLidoReg1Teste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	DadoLidoReg2Teste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	DepoisEstSinal : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Escrita3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	habEscritaMEM : IN STD_LOGIC;
	habEscritaReg : IN STD_LOGIC;
	habLeituraMEM : IN STD_LOGIC;
	mux_PC : IN STD_LOGIC;
	mux_RtIm : IN STD_LOGIC;
	Mux_RtRd : IN STD_LOGIC;
	mux_ULAMem : IN STD_LOGIC;
	OpCode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	Reg1Test : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Reg2Test : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	saidaPCteste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaULAteste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULAOPer : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FluxoDeDados
	PORT MAP (
-- list connections between master ports and signals
	Address3 => Address3,
	AUlaTest => AUlaTest,
	BEQ => BEQ,
	BUlaTest => BUlaTest,
	CLK => CLK,
	DadoEscritoTeste => DadoEscritoTeste,
	DadoLidoReg1Teste => DadoLidoReg1Teste,
	DadoLidoReg2Teste => DadoLidoReg2Teste,
	DepoisEstSinal => DepoisEstSinal,
	Escrita3 => Escrita3,
	habEscritaMEM => habEscritaMEM,
	habEscritaReg => habEscritaReg,
	habLeituraMEM => habLeituraMEM,
	mux_PC => mux_PC,
	mux_RtIm => mux_RtIm,
	Mux_RtRd => Mux_RtRd,
	mux_ULAMem => mux_ULAMem,
	OpCode => OpCode,
	Reg1Test => Reg1Test,
	Reg2Test => Reg2Test,
	saidaPCteste => saidaPCteste,
	saidaULAteste => saidaULAteste,
	ULAOPer => ULAOPer,
	zero => zero
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
WAIT;
END PROCESS t_prcs_Mux_RtRd;

-- mux_RtIm
t_prcs_mux_RtIm: PROCESS
BEGIN
	mux_RtIm <= '1';
WAIT;
END PROCESS t_prcs_mux_RtIm;

-- habEscritaReg
t_prcs_habEscritaReg: PROCESS
BEGIN
	habEscritaReg <= '0';
WAIT;
END PROCESS t_prcs_habEscritaReg;
-- ULAOPer[1]
t_prcs_ULAOPer_1: PROCESS
BEGIN
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
	habEscritaMEM <= '1';
WAIT;
END PROCESS t_prcs_habEscritaMEM;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '1';
	WAIT FOR 400000 ps;
	CLK <= '0';
	WAIT FOR 400000 ps;
	CLK <= '1';
WAIT;
END PROCESS t_prcs_CLK;
END FluxoDeDados_arch;
