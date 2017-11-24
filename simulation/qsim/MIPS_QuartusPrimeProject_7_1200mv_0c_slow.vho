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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "11/24/2017 20:26:01"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FluxoDeDados IS
    PORT (
	CLK : IN std_logic;
	RST_PC : IN std_logic;
	mux_PC : IN std_logic;
	Mux_RtRd : IN std_logic;
	habEscritaReg : IN std_logic;
	mux_RtIm : IN std_logic;
	ULAOPer : IN std_logic_vector(1 DOWNTO 0);
	mux_ULAMem : IN std_logic;
	BEQ : IN std_logic;
	habLeituraMEM : IN std_logic;
	habEscritaMEM : IN std_logic;
	enderecoDisplay : IN std_logic_vector(31 DOWNTO 0);
	habEscritaDisplay : OUT std_logic;
	A : OUT std_logic_vector(31 DOWNTO 0);
	B : OUT std_logic_vector(31 DOWNTO 0);
	I : OUT std_logic_vector(31 DOWNTO 0);
	J : OUT std_logic_vector(31 DOWNTO 0);
	L : OUT std_logic_vector(31 DOWNTO 0);
	M : OUT std_logic_vector(31 DOWNTO 0);
	N : OUT std_logic_vector(31 DOWNTO 0);
	O : OUT std_logic_vector(31 DOWNTO 0);
	Q : OUT std_logic_vector(31 DOWNTO 0);
	R : OUT std_logic_vector(31 DOWNTO 0);
	S : OUT std_logic_vector(31 DOWNTO 0);
	V : OUT std_logic_vector(31 DOWNTO 0);
	W : OUT std_logic_vector(31 DOWNTO 0);
	D : OUT std_logic_vector(4 DOWNTO 0);
	E : OUT std_logic_vector(4 DOWNTO 0);
	G : OUT std_logic_vector(4 DOWNTO 0);
	C : OUT std_logic_vector(25 DOWNTO 0);
	Y : OUT std_logic_vector(3 DOWNTO 0);
	U : OUT std_logic;
	OpCode : OUT std_logic_vector(5 DOWNTO 0)
	);
END FluxoDeDados;

-- Design Ports Information
-- habEscritaDisplay	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[4]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[6]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[7]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[8]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[9]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[10]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[11]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[12]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[13]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[14]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[15]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[16]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[17]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[18]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[19]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[20]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[21]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[22]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[23]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[24]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[25]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[26]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[27]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[28]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[29]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[30]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[31]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[0]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[4]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[5]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[6]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[8]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[9]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[10]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[11]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[12]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[13]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[14]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[15]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[16]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[17]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[18]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[19]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[20]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[21]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[22]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[23]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[24]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[25]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[26]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[27]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[28]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[29]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[30]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J[31]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[0]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[1]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[5]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[7]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[8]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[9]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[10]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[11]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[12]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[13]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[14]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[15]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[16]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[17]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[18]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[19]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[20]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[21]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[22]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[23]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[24]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[25]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[26]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[27]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[28]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[29]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[30]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L[31]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[4]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[6]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[7]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[8]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[9]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[10]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[11]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[12]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[13]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[14]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[15]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[16]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[17]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[18]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[19]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[20]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[21]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[22]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[23]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[24]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[25]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[26]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[27]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[28]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[29]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[30]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[31]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[0]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[2]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[3]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[4]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[5]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[7]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[8]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[9]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[10]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[11]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[12]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[13]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[14]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[15]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[16]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[17]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[18]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[19]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[20]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[21]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[22]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[23]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[24]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[25]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[26]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[27]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[28]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[29]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[30]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[31]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[0]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[3]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[5]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[8]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[9]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[10]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[11]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[12]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[13]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[14]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[15]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[16]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[17]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[18]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[19]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[20]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[21]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[22]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[23]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[24]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[25]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[26]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[27]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[28]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[29]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[30]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[31]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[10]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[11]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[12]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[13]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[14]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[15]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[16]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[17]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[18]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[19]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[20]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[21]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[22]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[23]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[24]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[25]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[26]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[27]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[28]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[29]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[30]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[31]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[9]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[10]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[11]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[12]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[13]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[14]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[15]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[16]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[17]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[18]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[19]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[20]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[21]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[22]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[23]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[24]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[25]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[26]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[27]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[28]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[29]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[30]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[31]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[3]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[5]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[6]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[8]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[9]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[10]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[11]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[12]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[13]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[14]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[15]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[16]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[17]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[18]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[19]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[20]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[21]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[22]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[23]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[24]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[25]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[26]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[27]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[28]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[29]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[30]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[31]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[2]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[4]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[5]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[7]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[9]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[10]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[11]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[12]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[13]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[14]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[15]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[16]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[17]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[18]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[19]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[20]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[21]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[22]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[23]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[24]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[25]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[26]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[27]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[28]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[29]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[30]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[31]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[1]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[3]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[8]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[9]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[10]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[11]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[13]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[14]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[15]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[16]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[17]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[18]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[19]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[20]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[21]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[22]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[23]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[24]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[25]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[2]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[3]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[4]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[5]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mux_RtRd	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habEscritaReg	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[2]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_RtIm	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOPer[1]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[1]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[3]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[5]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[6]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[8]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[9]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[10]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[11]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[12]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[13]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[14]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[15]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[16]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[17]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[18]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[31]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[19]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[20]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[21]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[22]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[23]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[24]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[25]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[26]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[27]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[28]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[29]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoDisplay[30]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOPer[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habLeituraMEM	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_ULAMem	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BEQ	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_PC	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_PC	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habEscritaMEM	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FluxoDeDados IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST_PC : std_logic;
SIGNAL ww_mux_PC : std_logic;
SIGNAL ww_Mux_RtRd : std_logic;
SIGNAL ww_habEscritaReg : std_logic;
SIGNAL ww_mux_RtIm : std_logic;
SIGNAL ww_ULAOPer : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_mux_ULAMem : std_logic;
SIGNAL ww_BEQ : std_logic;
SIGNAL ww_habLeituraMEM : std_logic;
SIGNAL ww_habEscritaMEM : std_logic;
SIGNAL ww_enderecoDisplay : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_habEscritaDisplay : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_I : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_J : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_L : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_M : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_N : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_O : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_R : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_V : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_W : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_E : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_U : std_logic;
SIGNAL ww_OpCode : std_logic_vector(5 DOWNTO 0);
SIGNAL \RST_PC~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux_RtRd~input_o\ : std_logic;
SIGNAL \habEscritaReg~input_o\ : std_logic;
SIGNAL \habEscritaDisplay~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \A[8]~output_o\ : std_logic;
SIGNAL \A[9]~output_o\ : std_logic;
SIGNAL \A[10]~output_o\ : std_logic;
SIGNAL \A[11]~output_o\ : std_logic;
SIGNAL \A[12]~output_o\ : std_logic;
SIGNAL \A[13]~output_o\ : std_logic;
SIGNAL \A[14]~output_o\ : std_logic;
SIGNAL \A[15]~output_o\ : std_logic;
SIGNAL \A[16]~output_o\ : std_logic;
SIGNAL \A[17]~output_o\ : std_logic;
SIGNAL \A[18]~output_o\ : std_logic;
SIGNAL \A[19]~output_o\ : std_logic;
SIGNAL \A[20]~output_o\ : std_logic;
SIGNAL \A[21]~output_o\ : std_logic;
SIGNAL \A[22]~output_o\ : std_logic;
SIGNAL \A[23]~output_o\ : std_logic;
SIGNAL \A[24]~output_o\ : std_logic;
SIGNAL \A[25]~output_o\ : std_logic;
SIGNAL \A[26]~output_o\ : std_logic;
SIGNAL \A[27]~output_o\ : std_logic;
SIGNAL \A[28]~output_o\ : std_logic;
SIGNAL \A[29]~output_o\ : std_logic;
SIGNAL \A[30]~output_o\ : std_logic;
SIGNAL \A[31]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[7]~output_o\ : std_logic;
SIGNAL \B[8]~output_o\ : std_logic;
SIGNAL \B[9]~output_o\ : std_logic;
SIGNAL \B[10]~output_o\ : std_logic;
SIGNAL \B[11]~output_o\ : std_logic;
SIGNAL \B[12]~output_o\ : std_logic;
SIGNAL \B[13]~output_o\ : std_logic;
SIGNAL \B[14]~output_o\ : std_logic;
SIGNAL \B[15]~output_o\ : std_logic;
SIGNAL \B[16]~output_o\ : std_logic;
SIGNAL \B[17]~output_o\ : std_logic;
SIGNAL \B[18]~output_o\ : std_logic;
SIGNAL \B[19]~output_o\ : std_logic;
SIGNAL \B[20]~output_o\ : std_logic;
SIGNAL \B[21]~output_o\ : std_logic;
SIGNAL \B[22]~output_o\ : std_logic;
SIGNAL \B[23]~output_o\ : std_logic;
SIGNAL \B[24]~output_o\ : std_logic;
SIGNAL \B[25]~output_o\ : std_logic;
SIGNAL \B[26]~output_o\ : std_logic;
SIGNAL \B[27]~output_o\ : std_logic;
SIGNAL \B[28]~output_o\ : std_logic;
SIGNAL \B[29]~output_o\ : std_logic;
SIGNAL \B[30]~output_o\ : std_logic;
SIGNAL \B[31]~output_o\ : std_logic;
SIGNAL \I[0]~output_o\ : std_logic;
SIGNAL \I[1]~output_o\ : std_logic;
SIGNAL \I[2]~output_o\ : std_logic;
SIGNAL \I[3]~output_o\ : std_logic;
SIGNAL \I[4]~output_o\ : std_logic;
SIGNAL \I[5]~output_o\ : std_logic;
SIGNAL \I[6]~output_o\ : std_logic;
SIGNAL \I[7]~output_o\ : std_logic;
SIGNAL \I[8]~output_o\ : std_logic;
SIGNAL \I[9]~output_o\ : std_logic;
SIGNAL \I[10]~output_o\ : std_logic;
SIGNAL \I[11]~output_o\ : std_logic;
SIGNAL \I[12]~output_o\ : std_logic;
SIGNAL \I[13]~output_o\ : std_logic;
SIGNAL \I[14]~output_o\ : std_logic;
SIGNAL \I[15]~output_o\ : std_logic;
SIGNAL \I[16]~output_o\ : std_logic;
SIGNAL \I[17]~output_o\ : std_logic;
SIGNAL \I[18]~output_o\ : std_logic;
SIGNAL \I[19]~output_o\ : std_logic;
SIGNAL \I[20]~output_o\ : std_logic;
SIGNAL \I[21]~output_o\ : std_logic;
SIGNAL \I[22]~output_o\ : std_logic;
SIGNAL \I[23]~output_o\ : std_logic;
SIGNAL \I[24]~output_o\ : std_logic;
SIGNAL \I[25]~output_o\ : std_logic;
SIGNAL \I[26]~output_o\ : std_logic;
SIGNAL \I[27]~output_o\ : std_logic;
SIGNAL \I[28]~output_o\ : std_logic;
SIGNAL \I[29]~output_o\ : std_logic;
SIGNAL \I[30]~output_o\ : std_logic;
SIGNAL \I[31]~output_o\ : std_logic;
SIGNAL \J[0]~output_o\ : std_logic;
SIGNAL \J[1]~output_o\ : std_logic;
SIGNAL \J[2]~output_o\ : std_logic;
SIGNAL \J[3]~output_o\ : std_logic;
SIGNAL \J[4]~output_o\ : std_logic;
SIGNAL \J[5]~output_o\ : std_logic;
SIGNAL \J[6]~output_o\ : std_logic;
SIGNAL \J[7]~output_o\ : std_logic;
SIGNAL \J[8]~output_o\ : std_logic;
SIGNAL \J[9]~output_o\ : std_logic;
SIGNAL \J[10]~output_o\ : std_logic;
SIGNAL \J[11]~output_o\ : std_logic;
SIGNAL \J[12]~output_o\ : std_logic;
SIGNAL \J[13]~output_o\ : std_logic;
SIGNAL \J[14]~output_o\ : std_logic;
SIGNAL \J[15]~output_o\ : std_logic;
SIGNAL \J[16]~output_o\ : std_logic;
SIGNAL \J[17]~output_o\ : std_logic;
SIGNAL \J[18]~output_o\ : std_logic;
SIGNAL \J[19]~output_o\ : std_logic;
SIGNAL \J[20]~output_o\ : std_logic;
SIGNAL \J[21]~output_o\ : std_logic;
SIGNAL \J[22]~output_o\ : std_logic;
SIGNAL \J[23]~output_o\ : std_logic;
SIGNAL \J[24]~output_o\ : std_logic;
SIGNAL \J[25]~output_o\ : std_logic;
SIGNAL \J[26]~output_o\ : std_logic;
SIGNAL \J[27]~output_o\ : std_logic;
SIGNAL \J[28]~output_o\ : std_logic;
SIGNAL \J[29]~output_o\ : std_logic;
SIGNAL \J[30]~output_o\ : std_logic;
SIGNAL \J[31]~output_o\ : std_logic;
SIGNAL \L[0]~output_o\ : std_logic;
SIGNAL \L[1]~output_o\ : std_logic;
SIGNAL \L[2]~output_o\ : std_logic;
SIGNAL \L[3]~output_o\ : std_logic;
SIGNAL \L[4]~output_o\ : std_logic;
SIGNAL \L[5]~output_o\ : std_logic;
SIGNAL \L[6]~output_o\ : std_logic;
SIGNAL \L[7]~output_o\ : std_logic;
SIGNAL \L[8]~output_o\ : std_logic;
SIGNAL \L[9]~output_o\ : std_logic;
SIGNAL \L[10]~output_o\ : std_logic;
SIGNAL \L[11]~output_o\ : std_logic;
SIGNAL \L[12]~output_o\ : std_logic;
SIGNAL \L[13]~output_o\ : std_logic;
SIGNAL \L[14]~output_o\ : std_logic;
SIGNAL \L[15]~output_o\ : std_logic;
SIGNAL \L[16]~output_o\ : std_logic;
SIGNAL \L[17]~output_o\ : std_logic;
SIGNAL \L[18]~output_o\ : std_logic;
SIGNAL \L[19]~output_o\ : std_logic;
SIGNAL \L[20]~output_o\ : std_logic;
SIGNAL \L[21]~output_o\ : std_logic;
SIGNAL \L[22]~output_o\ : std_logic;
SIGNAL \L[23]~output_o\ : std_logic;
SIGNAL \L[24]~output_o\ : std_logic;
SIGNAL \L[25]~output_o\ : std_logic;
SIGNAL \L[26]~output_o\ : std_logic;
SIGNAL \L[27]~output_o\ : std_logic;
SIGNAL \L[28]~output_o\ : std_logic;
SIGNAL \L[29]~output_o\ : std_logic;
SIGNAL \L[30]~output_o\ : std_logic;
SIGNAL \L[31]~output_o\ : std_logic;
SIGNAL \M[0]~output_o\ : std_logic;
SIGNAL \M[1]~output_o\ : std_logic;
SIGNAL \M[2]~output_o\ : std_logic;
SIGNAL \M[3]~output_o\ : std_logic;
SIGNAL \M[4]~output_o\ : std_logic;
SIGNAL \M[5]~output_o\ : std_logic;
SIGNAL \M[6]~output_o\ : std_logic;
SIGNAL \M[7]~output_o\ : std_logic;
SIGNAL \M[8]~output_o\ : std_logic;
SIGNAL \M[9]~output_o\ : std_logic;
SIGNAL \M[10]~output_o\ : std_logic;
SIGNAL \M[11]~output_o\ : std_logic;
SIGNAL \M[12]~output_o\ : std_logic;
SIGNAL \M[13]~output_o\ : std_logic;
SIGNAL \M[14]~output_o\ : std_logic;
SIGNAL \M[15]~output_o\ : std_logic;
SIGNAL \M[16]~output_o\ : std_logic;
SIGNAL \M[17]~output_o\ : std_logic;
SIGNAL \M[18]~output_o\ : std_logic;
SIGNAL \M[19]~output_o\ : std_logic;
SIGNAL \M[20]~output_o\ : std_logic;
SIGNAL \M[21]~output_o\ : std_logic;
SIGNAL \M[22]~output_o\ : std_logic;
SIGNAL \M[23]~output_o\ : std_logic;
SIGNAL \M[24]~output_o\ : std_logic;
SIGNAL \M[25]~output_o\ : std_logic;
SIGNAL \M[26]~output_o\ : std_logic;
SIGNAL \M[27]~output_o\ : std_logic;
SIGNAL \M[28]~output_o\ : std_logic;
SIGNAL \M[29]~output_o\ : std_logic;
SIGNAL \M[30]~output_o\ : std_logic;
SIGNAL \M[31]~output_o\ : std_logic;
SIGNAL \N[0]~output_o\ : std_logic;
SIGNAL \N[1]~output_o\ : std_logic;
SIGNAL \N[2]~output_o\ : std_logic;
SIGNAL \N[3]~output_o\ : std_logic;
SIGNAL \N[4]~output_o\ : std_logic;
SIGNAL \N[5]~output_o\ : std_logic;
SIGNAL \N[6]~output_o\ : std_logic;
SIGNAL \N[7]~output_o\ : std_logic;
SIGNAL \N[8]~output_o\ : std_logic;
SIGNAL \N[9]~output_o\ : std_logic;
SIGNAL \N[10]~output_o\ : std_logic;
SIGNAL \N[11]~output_o\ : std_logic;
SIGNAL \N[12]~output_o\ : std_logic;
SIGNAL \N[13]~output_o\ : std_logic;
SIGNAL \N[14]~output_o\ : std_logic;
SIGNAL \N[15]~output_o\ : std_logic;
SIGNAL \N[16]~output_o\ : std_logic;
SIGNAL \N[17]~output_o\ : std_logic;
SIGNAL \N[18]~output_o\ : std_logic;
SIGNAL \N[19]~output_o\ : std_logic;
SIGNAL \N[20]~output_o\ : std_logic;
SIGNAL \N[21]~output_o\ : std_logic;
SIGNAL \N[22]~output_o\ : std_logic;
SIGNAL \N[23]~output_o\ : std_logic;
SIGNAL \N[24]~output_o\ : std_logic;
SIGNAL \N[25]~output_o\ : std_logic;
SIGNAL \N[26]~output_o\ : std_logic;
SIGNAL \N[27]~output_o\ : std_logic;
SIGNAL \N[28]~output_o\ : std_logic;
SIGNAL \N[29]~output_o\ : std_logic;
SIGNAL \N[30]~output_o\ : std_logic;
SIGNAL \N[31]~output_o\ : std_logic;
SIGNAL \O[0]~output_o\ : std_logic;
SIGNAL \O[1]~output_o\ : std_logic;
SIGNAL \O[2]~output_o\ : std_logic;
SIGNAL \O[3]~output_o\ : std_logic;
SIGNAL \O[4]~output_o\ : std_logic;
SIGNAL \O[5]~output_o\ : std_logic;
SIGNAL \O[6]~output_o\ : std_logic;
SIGNAL \O[7]~output_o\ : std_logic;
SIGNAL \O[8]~output_o\ : std_logic;
SIGNAL \O[9]~output_o\ : std_logic;
SIGNAL \O[10]~output_o\ : std_logic;
SIGNAL \O[11]~output_o\ : std_logic;
SIGNAL \O[12]~output_o\ : std_logic;
SIGNAL \O[13]~output_o\ : std_logic;
SIGNAL \O[14]~output_o\ : std_logic;
SIGNAL \O[15]~output_o\ : std_logic;
SIGNAL \O[16]~output_o\ : std_logic;
SIGNAL \O[17]~output_o\ : std_logic;
SIGNAL \O[18]~output_o\ : std_logic;
SIGNAL \O[19]~output_o\ : std_logic;
SIGNAL \O[20]~output_o\ : std_logic;
SIGNAL \O[21]~output_o\ : std_logic;
SIGNAL \O[22]~output_o\ : std_logic;
SIGNAL \O[23]~output_o\ : std_logic;
SIGNAL \O[24]~output_o\ : std_logic;
SIGNAL \O[25]~output_o\ : std_logic;
SIGNAL \O[26]~output_o\ : std_logic;
SIGNAL \O[27]~output_o\ : std_logic;
SIGNAL \O[28]~output_o\ : std_logic;
SIGNAL \O[29]~output_o\ : std_logic;
SIGNAL \O[30]~output_o\ : std_logic;
SIGNAL \O[31]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[8]~output_o\ : std_logic;
SIGNAL \Q[9]~output_o\ : std_logic;
SIGNAL \Q[10]~output_o\ : std_logic;
SIGNAL \Q[11]~output_o\ : std_logic;
SIGNAL \Q[12]~output_o\ : std_logic;
SIGNAL \Q[13]~output_o\ : std_logic;
SIGNAL \Q[14]~output_o\ : std_logic;
SIGNAL \Q[15]~output_o\ : std_logic;
SIGNAL \Q[16]~output_o\ : std_logic;
SIGNAL \Q[17]~output_o\ : std_logic;
SIGNAL \Q[18]~output_o\ : std_logic;
SIGNAL \Q[19]~output_o\ : std_logic;
SIGNAL \Q[20]~output_o\ : std_logic;
SIGNAL \Q[21]~output_o\ : std_logic;
SIGNAL \Q[22]~output_o\ : std_logic;
SIGNAL \Q[23]~output_o\ : std_logic;
SIGNAL \Q[24]~output_o\ : std_logic;
SIGNAL \Q[25]~output_o\ : std_logic;
SIGNAL \Q[26]~output_o\ : std_logic;
SIGNAL \Q[27]~output_o\ : std_logic;
SIGNAL \Q[28]~output_o\ : std_logic;
SIGNAL \Q[29]~output_o\ : std_logic;
SIGNAL \Q[30]~output_o\ : std_logic;
SIGNAL \Q[31]~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \R[4]~output_o\ : std_logic;
SIGNAL \R[5]~output_o\ : std_logic;
SIGNAL \R[6]~output_o\ : std_logic;
SIGNAL \R[7]~output_o\ : std_logic;
SIGNAL \R[8]~output_o\ : std_logic;
SIGNAL \R[9]~output_o\ : std_logic;
SIGNAL \R[10]~output_o\ : std_logic;
SIGNAL \R[11]~output_o\ : std_logic;
SIGNAL \R[12]~output_o\ : std_logic;
SIGNAL \R[13]~output_o\ : std_logic;
SIGNAL \R[14]~output_o\ : std_logic;
SIGNAL \R[15]~output_o\ : std_logic;
SIGNAL \R[16]~output_o\ : std_logic;
SIGNAL \R[17]~output_o\ : std_logic;
SIGNAL \R[18]~output_o\ : std_logic;
SIGNAL \R[19]~output_o\ : std_logic;
SIGNAL \R[20]~output_o\ : std_logic;
SIGNAL \R[21]~output_o\ : std_logic;
SIGNAL \R[22]~output_o\ : std_logic;
SIGNAL \R[23]~output_o\ : std_logic;
SIGNAL \R[24]~output_o\ : std_logic;
SIGNAL \R[25]~output_o\ : std_logic;
SIGNAL \R[26]~output_o\ : std_logic;
SIGNAL \R[27]~output_o\ : std_logic;
SIGNAL \R[28]~output_o\ : std_logic;
SIGNAL \R[29]~output_o\ : std_logic;
SIGNAL \R[30]~output_o\ : std_logic;
SIGNAL \R[31]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \S[16]~output_o\ : std_logic;
SIGNAL \S[17]~output_o\ : std_logic;
SIGNAL \S[18]~output_o\ : std_logic;
SIGNAL \S[19]~output_o\ : std_logic;
SIGNAL \S[20]~output_o\ : std_logic;
SIGNAL \S[21]~output_o\ : std_logic;
SIGNAL \S[22]~output_o\ : std_logic;
SIGNAL \S[23]~output_o\ : std_logic;
SIGNAL \S[24]~output_o\ : std_logic;
SIGNAL \S[25]~output_o\ : std_logic;
SIGNAL \S[26]~output_o\ : std_logic;
SIGNAL \S[27]~output_o\ : std_logic;
SIGNAL \S[28]~output_o\ : std_logic;
SIGNAL \S[29]~output_o\ : std_logic;
SIGNAL \S[30]~output_o\ : std_logic;
SIGNAL \S[31]~output_o\ : std_logic;
SIGNAL \V[0]~output_o\ : std_logic;
SIGNAL \V[1]~output_o\ : std_logic;
SIGNAL \V[2]~output_o\ : std_logic;
SIGNAL \V[3]~output_o\ : std_logic;
SIGNAL \V[4]~output_o\ : std_logic;
SIGNAL \V[5]~output_o\ : std_logic;
SIGNAL \V[6]~output_o\ : std_logic;
SIGNAL \V[7]~output_o\ : std_logic;
SIGNAL \V[8]~output_o\ : std_logic;
SIGNAL \V[9]~output_o\ : std_logic;
SIGNAL \V[10]~output_o\ : std_logic;
SIGNAL \V[11]~output_o\ : std_logic;
SIGNAL \V[12]~output_o\ : std_logic;
SIGNAL \V[13]~output_o\ : std_logic;
SIGNAL \V[14]~output_o\ : std_logic;
SIGNAL \V[15]~output_o\ : std_logic;
SIGNAL \V[16]~output_o\ : std_logic;
SIGNAL \V[17]~output_o\ : std_logic;
SIGNAL \V[18]~output_o\ : std_logic;
SIGNAL \V[19]~output_o\ : std_logic;
SIGNAL \V[20]~output_o\ : std_logic;
SIGNAL \V[21]~output_o\ : std_logic;
SIGNAL \V[22]~output_o\ : std_logic;
SIGNAL \V[23]~output_o\ : std_logic;
SIGNAL \V[24]~output_o\ : std_logic;
SIGNAL \V[25]~output_o\ : std_logic;
SIGNAL \V[26]~output_o\ : std_logic;
SIGNAL \V[27]~output_o\ : std_logic;
SIGNAL \V[28]~output_o\ : std_logic;
SIGNAL \V[29]~output_o\ : std_logic;
SIGNAL \V[30]~output_o\ : std_logic;
SIGNAL \V[31]~output_o\ : std_logic;
SIGNAL \W[0]~output_o\ : std_logic;
SIGNAL \W[1]~output_o\ : std_logic;
SIGNAL \W[2]~output_o\ : std_logic;
SIGNAL \W[3]~output_o\ : std_logic;
SIGNAL \W[4]~output_o\ : std_logic;
SIGNAL \W[5]~output_o\ : std_logic;
SIGNAL \W[6]~output_o\ : std_logic;
SIGNAL \W[7]~output_o\ : std_logic;
SIGNAL \W[8]~output_o\ : std_logic;
SIGNAL \W[9]~output_o\ : std_logic;
SIGNAL \W[10]~output_o\ : std_logic;
SIGNAL \W[11]~output_o\ : std_logic;
SIGNAL \W[12]~output_o\ : std_logic;
SIGNAL \W[13]~output_o\ : std_logic;
SIGNAL \W[14]~output_o\ : std_logic;
SIGNAL \W[15]~output_o\ : std_logic;
SIGNAL \W[16]~output_o\ : std_logic;
SIGNAL \W[17]~output_o\ : std_logic;
SIGNAL \W[18]~output_o\ : std_logic;
SIGNAL \W[19]~output_o\ : std_logic;
SIGNAL \W[20]~output_o\ : std_logic;
SIGNAL \W[21]~output_o\ : std_logic;
SIGNAL \W[22]~output_o\ : std_logic;
SIGNAL \W[23]~output_o\ : std_logic;
SIGNAL \W[24]~output_o\ : std_logic;
SIGNAL \W[25]~output_o\ : std_logic;
SIGNAL \W[26]~output_o\ : std_logic;
SIGNAL \W[27]~output_o\ : std_logic;
SIGNAL \W[28]~output_o\ : std_logic;
SIGNAL \W[29]~output_o\ : std_logic;
SIGNAL \W[30]~output_o\ : std_logic;
SIGNAL \W[31]~output_o\ : std_logic;
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[2]~output_o\ : std_logic;
SIGNAL \D[3]~output_o\ : std_logic;
SIGNAL \D[4]~output_o\ : std_logic;
SIGNAL \E[0]~output_o\ : std_logic;
SIGNAL \E[1]~output_o\ : std_logic;
SIGNAL \E[2]~output_o\ : std_logic;
SIGNAL \E[3]~output_o\ : std_logic;
SIGNAL \E[4]~output_o\ : std_logic;
SIGNAL \G[0]~output_o\ : std_logic;
SIGNAL \G[1]~output_o\ : std_logic;
SIGNAL \G[2]~output_o\ : std_logic;
SIGNAL \G[3]~output_o\ : std_logic;
SIGNAL \G[4]~output_o\ : std_logic;
SIGNAL \C[0]~output_o\ : std_logic;
SIGNAL \C[1]~output_o\ : std_logic;
SIGNAL \C[2]~output_o\ : std_logic;
SIGNAL \C[3]~output_o\ : std_logic;
SIGNAL \C[4]~output_o\ : std_logic;
SIGNAL \C[5]~output_o\ : std_logic;
SIGNAL \C[6]~output_o\ : std_logic;
SIGNAL \C[7]~output_o\ : std_logic;
SIGNAL \C[8]~output_o\ : std_logic;
SIGNAL \C[9]~output_o\ : std_logic;
SIGNAL \C[10]~output_o\ : std_logic;
SIGNAL \C[11]~output_o\ : std_logic;
SIGNAL \C[12]~output_o\ : std_logic;
SIGNAL \C[13]~output_o\ : std_logic;
SIGNAL \C[14]~output_o\ : std_logic;
SIGNAL \C[15]~output_o\ : std_logic;
SIGNAL \C[16]~output_o\ : std_logic;
SIGNAL \C[17]~output_o\ : std_logic;
SIGNAL \C[18]~output_o\ : std_logic;
SIGNAL \C[19]~output_o\ : std_logic;
SIGNAL \C[20]~output_o\ : std_logic;
SIGNAL \C[21]~output_o\ : std_logic;
SIGNAL \C[22]~output_o\ : std_logic;
SIGNAL \C[23]~output_o\ : std_logic;
SIGNAL \C[24]~output_o\ : std_logic;
SIGNAL \C[25]~output_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \U~output_o\ : std_logic;
SIGNAL \OpCode[0]~output_o\ : std_logic;
SIGNAL \OpCode[1]~output_o\ : std_logic;
SIGNAL \OpCode[2]~output_o\ : std_logic;
SIGNAL \OpCode[3]~output_o\ : std_logic;
SIGNAL \OpCode[4]~output_o\ : std_logic;
SIGNAL \OpCode[5]~output_o\ : std_logic;
SIGNAL \enderecoDisplay[2]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[0]~input_o\ : std_logic;
SIGNAL \ULAOPer[1]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \mux_PC~input_o\ : std_logic;
SIGNAL \add4toPC|Add0~0_combout\ : std_logic;
SIGNAL \MuxProxPC|X[2]~5_combout\ : std_logic;
SIGNAL \RST_PC~input_o\ : std_logic;
SIGNAL \RST_PC~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC|DOUT[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \mux_RtIm~input_o\ : std_logic;
SIGNAL \add4toPC|Add0~1\ : std_logic;
SIGNAL \add4toPC|Add0~2_combout\ : std_logic;
SIGNAL \MuxProxPC|X[3]~2_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~3\ : std_logic;
SIGNAL \add4toPC|Add0~4_combout\ : std_logic;
SIGNAL \BEQ~input_o\ : std_logic;
SIGNAL \Mem_Inst|MemoriaDeInstrucao~1_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~0_combout\ : std_logic;
SIGNAL \MuxBEQ|X[4]~0_combout\ : std_logic;
SIGNAL \MuxProxPC|X[4]~31_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~5\ : std_logic;
SIGNAL \add4toPC|Add0~6_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~1\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~2_combout\ : std_logic;
SIGNAL \AndBEQ~combout\ : std_logic;
SIGNAL \MuxProxPC|X[5]~4_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~7\ : std_logic;
SIGNAL \add4toPC|Add0~8_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~3\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~4_combout\ : std_logic;
SIGNAL \MuxProxPC|X[6]~3_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \Mem_Inst|MemoriaDeInstrucao~0_combout\ : std_logic;
SIGNAL \ALU|opmux|X[2]~0_combout\ : std_logic;
SIGNAL \enderecoDisplay[1]~input_o\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~0_combout\ : std_logic;
SIGNAL \enderecoDisplay[24]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[23]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[25]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[26]~input_o\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~17_combout\ : std_logic;
SIGNAL \enderecoDisplay[21]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[20]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[19]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[22]~input_o\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~16_combout\ : std_logic;
SIGNAL \enderecoDisplay[15]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[18]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[17]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[16]~input_o\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~14_combout\ : std_logic;
SIGNAL \enderecoDisplay[12]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[11]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[14]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[13]~input_o\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~13_combout\ : std_logic;
SIGNAL \enderecoDisplay[3]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[6]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[5]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[4]~input_o\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~11_combout\ : std_logic;
SIGNAL \enderecoDisplay[8]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[9]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[10]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[7]~input_o\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~12_combout\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~15_combout\ : std_logic;
SIGNAL \enderecoDisplay[29]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[28]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[27]~input_o\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~18_combout\ : std_logic;
SIGNAL \enderecoDisplay[30]~input_o\ : std_logic;
SIGNAL \enderecoDisplay[31]~input_o\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~19_combout\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~20_combout\ : std_logic;
SIGNAL \ULAOPer[0]~input_o\ : std_logic;
SIGNAL \UC_ULA|Equal0~0_combout\ : std_logic;
SIGNAL \ALU|opmux|X[31]~1_combout\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~5_combout\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~6_combout\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~7_combout\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~8_combout\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~9_combout\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~4_combout\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~2_combout\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~1_combout\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~3_combout\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~10_combout\ : std_logic;
SIGNAL \comparadorDisplay|Equal0~21_combout\ : std_logic;
SIGNAL \PC|DOUT[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~9\ : std_logic;
SIGNAL \add4toPC|Add0~10_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~5\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~6_combout\ : std_logic;
SIGNAL \MuxProxPC|X[7]~6_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~11\ : std_logic;
SIGNAL \add4toPC|Add0~12_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~7\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~8_combout\ : std_logic;
SIGNAL \MuxProxPC|X[8]~7_combout\ : std_logic;
SIGNAL \PC|DOUT[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~13\ : std_logic;
SIGNAL \add4toPC|Add0~14_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~9\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~10_combout\ : std_logic;
SIGNAL \MuxProxPC|X[9]~8_combout\ : std_logic;
SIGNAL \PC|DOUT[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~15\ : std_logic;
SIGNAL \add4toPC|Add0~16_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~11\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~12_combout\ : std_logic;
SIGNAL \MuxProxPC|X[10]~9_combout\ : std_logic;
SIGNAL \PC|DOUT[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~17\ : std_logic;
SIGNAL \add4toPC|Add0~18_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~13\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~14_combout\ : std_logic;
SIGNAL \MuxProxPC|X[11]~10_combout\ : std_logic;
SIGNAL \PC|DOUT[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~19\ : std_logic;
SIGNAL \add4toPC|Add0~20_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~15\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~16_combout\ : std_logic;
SIGNAL \MuxProxPC|X[12]~11_combout\ : std_logic;
SIGNAL \PC|DOUT[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~21\ : std_logic;
SIGNAL \add4toPC|Add0~22_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~17\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~18_combout\ : std_logic;
SIGNAL \MuxProxPC|X[13]~12_combout\ : std_logic;
SIGNAL \PC|DOUT[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~23\ : std_logic;
SIGNAL \add4toPC|Add0~24_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~19\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~20_combout\ : std_logic;
SIGNAL \MuxProxPC|X[14]~13_combout\ : std_logic;
SIGNAL \PC|DOUT[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~25\ : std_logic;
SIGNAL \add4toPC|Add0~26_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~21\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~22_combout\ : std_logic;
SIGNAL \MuxProxPC|X[15]~14_combout\ : std_logic;
SIGNAL \PC|DOUT[16]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~27\ : std_logic;
SIGNAL \add4toPC|Add0~28_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~23\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~24_combout\ : std_logic;
SIGNAL \MuxProxPC|X[16]~15_combout\ : std_logic;
SIGNAL \PC|DOUT[17]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~29\ : std_logic;
SIGNAL \add4toPC|Add0~30_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~25\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~26_combout\ : std_logic;
SIGNAL \MuxProxPC|X[17]~16_combout\ : std_logic;
SIGNAL \PC|DOUT[18]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \PC|DOUT[18]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~31\ : std_logic;
SIGNAL \add4toPC|Add0~32_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~27\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~28_combout\ : std_logic;
SIGNAL \MuxProxPC|X[18]~17_combout\ : std_logic;
SIGNAL \PC|DOUT[19]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~33\ : std_logic;
SIGNAL \add4toPC|Add0~34_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~29\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~30_combout\ : std_logic;
SIGNAL \MuxProxPC|X[19]~18_combout\ : std_logic;
SIGNAL \PC|DOUT[20]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~35\ : std_logic;
SIGNAL \add4toPC|Add0~36_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~31\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~32_combout\ : std_logic;
SIGNAL \MuxProxPC|X[20]~19_combout\ : std_logic;
SIGNAL \PC|DOUT[21]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~37\ : std_logic;
SIGNAL \add4toPC|Add0~38_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~33\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~34_combout\ : std_logic;
SIGNAL \MuxProxPC|X[21]~20_combout\ : std_logic;
SIGNAL \PC|DOUT[22]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \PC|DOUT[22]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~39\ : std_logic;
SIGNAL \add4toPC|Add0~40_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~35\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~36_combout\ : std_logic;
SIGNAL \MuxProxPC|X[22]~21_combout\ : std_logic;
SIGNAL \PC|DOUT[23]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~41\ : std_logic;
SIGNAL \add4toPC|Add0~42_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~37\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~38_combout\ : std_logic;
SIGNAL \MuxProxPC|X[23]~22_combout\ : std_logic;
SIGNAL \PC|DOUT[24]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~43\ : std_logic;
SIGNAL \add4toPC|Add0~44_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~39\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~40_combout\ : std_logic;
SIGNAL \MuxProxPC|X[24]~23_combout\ : std_logic;
SIGNAL \PC|DOUT[25]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \PC|DOUT[25]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~45\ : std_logic;
SIGNAL \add4toPC|Add0~46_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~41\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~42_combout\ : std_logic;
SIGNAL \MuxProxPC|X[25]~24_combout\ : std_logic;
SIGNAL \PC|DOUT[26]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \PC|DOUT[26]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~47\ : std_logic;
SIGNAL \add4toPC|Add0~48_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~43\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~44_combout\ : std_logic;
SIGNAL \MuxProxPC|X[26]~25_combout\ : std_logic;
SIGNAL \PC|DOUT[27]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \PC|DOUT[27]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~49\ : std_logic;
SIGNAL \add4toPC|Add0~50_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~45\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~46_combout\ : std_logic;
SIGNAL \MuxProxPC|X[27]~26_combout\ : std_logic;
SIGNAL \PC|DOUT[28]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~51\ : std_logic;
SIGNAL \add4toPC|Add0~52_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~47\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~48_combout\ : std_logic;
SIGNAL \MuxProxPC|X[28]~27_combout\ : std_logic;
SIGNAL \PC|DOUT[29]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~53\ : std_logic;
SIGNAL \add4toPC|Add0~54_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~49\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~50_combout\ : std_logic;
SIGNAL \MuxProxPC|X[29]~28_combout\ : std_logic;
SIGNAL \PC|DOUT[30]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \PC|DOUT[30]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~55\ : std_logic;
SIGNAL \add4toPC|Add0~56_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~51\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~52_combout\ : std_logic;
SIGNAL \MuxProxPC|X[30]~29_combout\ : std_logic;
SIGNAL \PC|DOUT[31]~_Duplicate_1_q\ : std_logic;
SIGNAL \add4toPC|Add0~57\ : std_logic;
SIGNAL \add4toPC|Add0~58_combout\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~53\ : std_logic;
SIGNAL \AddPC4andExtSin|Add0~54_combout\ : std_logic;
SIGNAL \MuxProxPC|X[31]~30_combout\ : std_logic;
SIGNAL \muxAntesULA|X[2]~0_combout\ : std_logic;
SIGNAL \habLeituraMEM~input_o\ : std_logic;
SIGNAL \habEscritaMEM~input_o\ : std_logic;
SIGNAL \Mem_dados|Memoria~1062_combout\ : std_logic;
SIGNAL \Mem_dados|Memoria~1063_combout\ : std_logic;
SIGNAL \Mem_dados|Memoria~70_q\ : std_logic;
SIGNAL \Mem_dados|DadoLido[0]~0_combout\ : std_logic;
SIGNAL \Mem_dados|Memoria~1064_combout\ : std_logic;
SIGNAL \Mem_dados|Memoria~42_q\ : std_logic;
SIGNAL \Mem_dados|DadoLido[4]~1_combout\ : std_logic;
SIGNAL \mux_ULAMem~input_o\ : std_logic;
SIGNAL \muxDepoisULA|X[0]~0_combout\ : std_logic;
SIGNAL \muxDepoisULA|X[2]~1_combout\ : std_logic;
SIGNAL \muxDepoisULA|X[9]~2_combout\ : std_logic;
SIGNAL \muxDepoisULA|X[4]~3_combout\ : std_logic;
SIGNAL \MuxBEQ|X[5]~1_combout\ : std_logic;
SIGNAL \MuxBEQ|X[6]~2_combout\ : std_logic;
SIGNAL \MuxBEQ|X[7]~3_combout\ : std_logic;
SIGNAL \MuxBEQ|X[8]~4_combout\ : std_logic;
SIGNAL \MuxBEQ|X[9]~5_combout\ : std_logic;
SIGNAL \MuxBEQ|X[10]~6_combout\ : std_logic;
SIGNAL \MuxBEQ|X[11]~7_combout\ : std_logic;
SIGNAL \MuxBEQ|X[12]~8_combout\ : std_logic;
SIGNAL \MuxBEQ|X[13]~9_combout\ : std_logic;
SIGNAL \MuxBEQ|X[14]~10_combout\ : std_logic;
SIGNAL \MuxBEQ|X[15]~11_combout\ : std_logic;
SIGNAL \MuxBEQ|X[16]~12_combout\ : std_logic;
SIGNAL \MuxBEQ|X[17]~13_combout\ : std_logic;
SIGNAL \MuxBEQ|X[18]~14_combout\ : std_logic;
SIGNAL \MuxBEQ|X[19]~15_combout\ : std_logic;
SIGNAL \MuxBEQ|X[20]~16_combout\ : std_logic;
SIGNAL \MuxBEQ|X[21]~17_combout\ : std_logic;
SIGNAL \MuxBEQ|X[22]~18_combout\ : std_logic;
SIGNAL \MuxBEQ|X[23]~19_combout\ : std_logic;
SIGNAL \MuxBEQ|X[24]~20_combout\ : std_logic;
SIGNAL \MuxBEQ|X[25]~21_combout\ : std_logic;
SIGNAL \MuxBEQ|X[26]~22_combout\ : std_logic;
SIGNAL \MuxBEQ|X[27]~23_combout\ : std_logic;
SIGNAL \MuxBEQ|X[28]~24_combout\ : std_logic;
SIGNAL \MuxBEQ|X[29]~25_combout\ : std_logic;
SIGNAL \MuxBEQ|X[30]~26_combout\ : std_logic;
SIGNAL \MuxBEQ|X[31]~27_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_RST_PC~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ULAOPer[1]~input_o\ : std_logic;
SIGNAL \ALU|opmux|ALT_INV_X[2]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RST_PC <= RST_PC;
ww_mux_PC <= mux_PC;
ww_Mux_RtRd <= Mux_RtRd;
ww_habEscritaReg <= habEscritaReg;
ww_mux_RtIm <= mux_RtIm;
ww_ULAOPer <= ULAOPer;
ww_mux_ULAMem <= mux_ULAMem;
ww_BEQ <= BEQ;
ww_habLeituraMEM <= habLeituraMEM;
ww_habEscritaMEM <= habEscritaMEM;
ww_enderecoDisplay <= enderecoDisplay;
habEscritaDisplay <= ww_habEscritaDisplay;
A <= ww_A;
B <= ww_B;
I <= ww_I;
J <= ww_J;
L <= ww_L;
M <= ww_M;
N <= ww_N;
O <= ww_O;
Q <= ww_Q;
R <= ww_R;
S <= ww_S;
V <= ww_V;
W <= ww_W;
D <= ww_D;
E <= ww_E;
G <= ww_G;
C <= ww_C;
Y <= ww_Y;
U <= ww_U;
OpCode <= ww_OpCode;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST_PC~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST_PC~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST_PC~inputclkctrl_outclk\ <= NOT \RST_PC~inputclkctrl_outclk\;
\ALT_INV_ULAOPer[1]~input_o\ <= NOT \ULAOPer[1]~input_o\;
\ALU|opmux|ALT_INV_X[2]~0_combout\ <= NOT \ALU|opmux|X[2]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y24_N2
\habEscritaDisplay~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comparadorDisplay|Equal0~21_combout\,
	devoe => ww_devoe,
	o => \habEscritaDisplay~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\A[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \A[8]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\A[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => \A[9]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\A[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => \A[10]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\A[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => \A[11]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\A[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => \A[12]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\A[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => \A[13]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\A[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => \A[14]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\A[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => \A[15]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\A[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => \A[16]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\A[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => \A[17]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\A[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => \A[18]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\A[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => \A[19]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\A[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => \A[20]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\A[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => \A[21]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\A[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => \A[22]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\A[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => \A[23]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\A[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => \A[24]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\A[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => \A[25]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\A[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => \A[26]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\A[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => \A[27]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\A[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => \A[28]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\A[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => \A[29]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\A[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => \A[30]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\A[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => \A[31]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[7]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\B[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[8]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\B[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[9]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\B[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[10]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\B[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[11]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\B[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[12]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\B[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[13]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\B[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[14]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\B[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[15]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\B[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[16]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\B[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[17]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\B[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[18]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\B[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[19]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\B[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[20]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\B[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[21]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\B[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[22]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\B[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[23]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\B[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[24]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\B[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[25]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\B[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[26]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\B[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \B[27]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\B[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[28]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\B[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[29]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\B[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[30]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\B[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[31]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\I[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[0]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\I[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\I[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\I[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[3]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\I[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\I[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\I[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[6]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\I[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\I[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[8]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\I[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[9]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\I[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[10]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\I[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[11]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\I[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[12]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\I[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[13]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\I[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[14]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\I[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[15]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\I[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[16]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\I[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[17]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\I[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[18]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\I[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[19]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\I[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[20]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\I[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[21]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\I[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[22]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\I[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[23]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\I[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[24]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\I[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[25]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\I[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[26]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\I[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[27]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\I[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[28]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\I[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[29]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\I[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[30]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\I[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[31]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\J[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\J[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\J[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\J[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[3]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\J[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[4]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\J[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\J[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\J[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[7]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\J[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[8]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\J[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[9]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\J[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[10]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\J[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[11]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\J[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\J[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[13]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\J[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[14]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\J[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[15]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\J[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[16]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\J[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[17]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\J[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[18]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\J[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[19]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\J[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[20]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\J[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[21]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\J[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[22]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\J[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[23]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\J[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[24]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\J[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[25]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\J[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[26]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\J[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[27]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\J[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[28]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\J[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[29]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\J[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[30]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\J[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J[31]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\L[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[0]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\L[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[1]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\L[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxAntesULA|X[2]~0_combout\,
	devoe => ww_devoe,
	o => \L[2]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\L[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[3]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\L[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[4]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\L[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\L[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[6]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\L[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[7]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\L[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[8]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\L[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[9]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\L[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[10]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\L[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[11]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\L[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[12]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\L[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[13]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\L[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[14]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\L[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[15]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\L[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[16]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\L[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[17]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\L[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[18]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\L[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[19]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\L[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[20]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\L[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[21]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\L[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[22]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\L[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[23]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\L[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[24]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\L[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[25]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\L[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[26]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\L[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[27]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\L[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[28]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\L[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[29]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\L[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[30]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\L[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \L[31]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\M[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \M[0]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\M[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \M[1]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\M[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[2]~0_combout\,
	devoe => ww_devoe,
	o => \M[2]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\M[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[3]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\M[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[4]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\M[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[5]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\M[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[6]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\M[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[7]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\M[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[8]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\M[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[9]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\M[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[10]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\M[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[11]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\M[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[12]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\M[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[13]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\M[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[14]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\M[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\M[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[16]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\M[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[17]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\M[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[18]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\M[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[19]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\M[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[20]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\M[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[21]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\M[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[22]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\M[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[23]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\M[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[24]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\M[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[25]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\M[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[26]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\M[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[27]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\M[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[28]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\M[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[29]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\M[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[30]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\M[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|X[31]~1_combout\,
	devoe => ww_devoe,
	o => \M[31]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\N[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mem_dados|DadoLido[0]~0_combout\,
	devoe => ww_devoe,
	o => \N[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\N[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[1]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\N[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[2]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\N[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\N[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mem_dados|DadoLido[4]~1_combout\,
	devoe => ww_devoe,
	o => \N[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\N[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[5]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\N[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\N[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[7]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\N[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[8]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\N[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[9]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\N[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[10]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\N[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[11]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\N[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[12]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\N[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[13]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\N[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[14]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\N[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[15]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\N[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[16]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\N[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[17]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\N[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[18]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\N[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[19]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\N[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[20]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\N[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[21]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\N[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[22]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\N[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[23]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\N[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[24]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\N[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[25]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\N[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[26]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\N[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[27]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\N[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[28]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\N[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[29]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\N[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[30]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\N[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[31]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\O[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[0]~0_combout\,
	devoe => ww_devoe,
	o => \O[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\O[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \O[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\O[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[2]~1_combout\,
	devoe => ww_devoe,
	o => \O[2]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\O[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[3]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\O[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[4]~3_combout\,
	devoe => ww_devoe,
	o => \O[4]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\O[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[5]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\O[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\O[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[7]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\O[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[8]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\O[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[9]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\O[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[10]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\O[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[11]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\O[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[12]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\O[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[13]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\O[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[14]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\O[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[15]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\O[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[16]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\O[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[17]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\O[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[18]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\O[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[19]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\O[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[20]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\O[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[21]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\O[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[22]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\O[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[23]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\O[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[24]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\O[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[25]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\O[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[26]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\O[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[27]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\O[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[28]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\O[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[29]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\O[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[30]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\O[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxDepoisULA|X[9]~2_combout\,
	devoe => ww_devoe,
	o => \O[31]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\Q[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[8]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\Q[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[9]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\Q[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[10]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\Q[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[11]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\Q[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[12]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\Q[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[13]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\Q[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[14]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\Q[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[15]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\Q[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[16]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\Q[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[17]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\Q[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[18]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\Q[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[19]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Q[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[20]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\Q[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[21]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\Q[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[22]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\Q[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[23]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Q[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[24]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Q[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[25]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\Q[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[26]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\Q[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[27]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Q[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[28]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\Q[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[29]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\Q[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[30]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\Q[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[31]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~0_combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~2_combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~4_combout\,
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~6_combout\,
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~8_combout\,
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~10_combout\,
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\R[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~12_combout\,
	devoe => ww_devoe,
	o => \R[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\R[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~14_combout\,
	devoe => ww_devoe,
	o => \R[9]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\R[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~16_combout\,
	devoe => ww_devoe,
	o => \R[10]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\R[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~18_combout\,
	devoe => ww_devoe,
	o => \R[11]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\R[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~20_combout\,
	devoe => ww_devoe,
	o => \R[12]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\R[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~22_combout\,
	devoe => ww_devoe,
	o => \R[13]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\R[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~24_combout\,
	devoe => ww_devoe,
	o => \R[14]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\R[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~26_combout\,
	devoe => ww_devoe,
	o => \R[15]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\R[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~28_combout\,
	devoe => ww_devoe,
	o => \R[16]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\R[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~30_combout\,
	devoe => ww_devoe,
	o => \R[17]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\R[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~32_combout\,
	devoe => ww_devoe,
	o => \R[18]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\R[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~34_combout\,
	devoe => ww_devoe,
	o => \R[19]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\R[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~36_combout\,
	devoe => ww_devoe,
	o => \R[20]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\R[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~38_combout\,
	devoe => ww_devoe,
	o => \R[21]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\R[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~40_combout\,
	devoe => ww_devoe,
	o => \R[22]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\R[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~42_combout\,
	devoe => ww_devoe,
	o => \R[23]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\R[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~44_combout\,
	devoe => ww_devoe,
	o => \R[24]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\R[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~46_combout\,
	devoe => ww_devoe,
	o => \R[25]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\R[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~48_combout\,
	devoe => ww_devoe,
	o => \R[26]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\R[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~50_combout\,
	devoe => ww_devoe,
	o => \R[27]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\R[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~52_combout\,
	devoe => ww_devoe,
	o => \R[28]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\R[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~54_combout\,
	devoe => ww_devoe,
	o => \R[29]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\R[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~56_combout\,
	devoe => ww_devoe,
	o => \R[30]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\R[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~58_combout\,
	devoe => ww_devoe,
	o => \R[31]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~52_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~54_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~56_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~58_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\V[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \V[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\V[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \V[1]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\V[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~0_combout\,
	devoe => ww_devoe,
	o => \V[2]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\V[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~2_combout\,
	devoe => ww_devoe,
	o => \V[3]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\V[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~0_combout\,
	devoe => ww_devoe,
	o => \V[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\V[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~2_combout\,
	devoe => ww_devoe,
	o => \V[5]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\V[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~4_combout\,
	devoe => ww_devoe,
	o => \V[6]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\V[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~6_combout\,
	devoe => ww_devoe,
	o => \V[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\V[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~8_combout\,
	devoe => ww_devoe,
	o => \V[8]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\V[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~10_combout\,
	devoe => ww_devoe,
	o => \V[9]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\V[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~12_combout\,
	devoe => ww_devoe,
	o => \V[10]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\V[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~14_combout\,
	devoe => ww_devoe,
	o => \V[11]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\V[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~16_combout\,
	devoe => ww_devoe,
	o => \V[12]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\V[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~18_combout\,
	devoe => ww_devoe,
	o => \V[13]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\V[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~20_combout\,
	devoe => ww_devoe,
	o => \V[14]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\V[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~22_combout\,
	devoe => ww_devoe,
	o => \V[15]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\V[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~24_combout\,
	devoe => ww_devoe,
	o => \V[16]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\V[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~26_combout\,
	devoe => ww_devoe,
	o => \V[17]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\V[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~28_combout\,
	devoe => ww_devoe,
	o => \V[18]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\V[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~30_combout\,
	devoe => ww_devoe,
	o => \V[19]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\V[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~32_combout\,
	devoe => ww_devoe,
	o => \V[20]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\V[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~34_combout\,
	devoe => ww_devoe,
	o => \V[21]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\V[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~36_combout\,
	devoe => ww_devoe,
	o => \V[22]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\V[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~38_combout\,
	devoe => ww_devoe,
	o => \V[23]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\V[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~40_combout\,
	devoe => ww_devoe,
	o => \V[24]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\V[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~42_combout\,
	devoe => ww_devoe,
	o => \V[25]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\V[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~44_combout\,
	devoe => ww_devoe,
	o => \V[26]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\V[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~46_combout\,
	devoe => ww_devoe,
	o => \V[27]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\V[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~48_combout\,
	devoe => ww_devoe,
	o => \V[28]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\V[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~50_combout\,
	devoe => ww_devoe,
	o => \V[29]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\V[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~52_combout\,
	devoe => ww_devoe,
	o => \V[30]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\V[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AddPC4andExtSin|Add0~54_combout\,
	devoe => ww_devoe,
	o => \V[31]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\W[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \W[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\W[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \W[1]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\W[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~0_combout\,
	devoe => ww_devoe,
	o => \W[2]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\W[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4toPC|Add0~2_combout\,
	devoe => ww_devoe,
	o => \W[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\W[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[4]~0_combout\,
	devoe => ww_devoe,
	o => \W[4]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\W[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[5]~1_combout\,
	devoe => ww_devoe,
	o => \W[5]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\W[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[6]~2_combout\,
	devoe => ww_devoe,
	o => \W[6]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\W[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[7]~3_combout\,
	devoe => ww_devoe,
	o => \W[7]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\W[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[8]~4_combout\,
	devoe => ww_devoe,
	o => \W[8]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\W[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[9]~5_combout\,
	devoe => ww_devoe,
	o => \W[9]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\W[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[10]~6_combout\,
	devoe => ww_devoe,
	o => \W[10]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\W[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[11]~7_combout\,
	devoe => ww_devoe,
	o => \W[11]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\W[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[12]~8_combout\,
	devoe => ww_devoe,
	o => \W[12]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\W[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[13]~9_combout\,
	devoe => ww_devoe,
	o => \W[13]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\W[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[14]~10_combout\,
	devoe => ww_devoe,
	o => \W[14]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\W[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[15]~11_combout\,
	devoe => ww_devoe,
	o => \W[15]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\W[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[16]~12_combout\,
	devoe => ww_devoe,
	o => \W[16]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\W[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[17]~13_combout\,
	devoe => ww_devoe,
	o => \W[17]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\W[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[18]~14_combout\,
	devoe => ww_devoe,
	o => \W[18]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\W[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[19]~15_combout\,
	devoe => ww_devoe,
	o => \W[19]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\W[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[20]~16_combout\,
	devoe => ww_devoe,
	o => \W[20]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\W[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[21]~17_combout\,
	devoe => ww_devoe,
	o => \W[21]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\W[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[22]~18_combout\,
	devoe => ww_devoe,
	o => \W[22]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\W[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[23]~19_combout\,
	devoe => ww_devoe,
	o => \W[23]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\W[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[24]~20_combout\,
	devoe => ww_devoe,
	o => \W[24]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\W[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[25]~21_combout\,
	devoe => ww_devoe,
	o => \W[25]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\W[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[26]~22_combout\,
	devoe => ww_devoe,
	o => \W[26]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\W[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[27]~23_combout\,
	devoe => ww_devoe,
	o => \W[27]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\W[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[28]~24_combout\,
	devoe => ww_devoe,
	o => \W[28]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\W[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[29]~25_combout\,
	devoe => ww_devoe,
	o => \W[29]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\W[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[30]~26_combout\,
	devoe => ww_devoe,
	o => \W[30]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\W[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxBEQ|X[31]~27_combout\,
	devoe => ww_devoe,
	o => \W[31]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[2]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[3]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[4]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\E[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \E[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\E[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \E[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\E[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \E[2]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\E[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \E[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\E[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \E[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[0]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[4]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\C[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[0]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\C[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[1]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\C[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \C[2]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\C[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[3]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\C[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[4]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\C[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[5]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\C[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\C[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[7]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\C[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[8]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\C[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[9]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\C[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[10]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\C[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[11]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\C[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[12]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\C[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[13]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\C[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[14]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\C[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[15]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\C[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[16]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\C[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[17]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\C[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[18]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\C[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[19]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\C[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[20]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\C[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[21]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\C[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[22]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\C[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[23]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\C[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[24]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\C[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[25]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ULAOPer[1]~input_o\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UC_ULA|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\U~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|opmux|ALT_INV_X[2]~0_combout\,
	devoe => ww_devoe,
	o => \U~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\OpCode[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OpCode[0]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\OpCode[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \OpCode[1]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\OpCode[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OpCode[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\OpCode[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OpCode[3]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\OpCode[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OpCode[4]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\OpCode[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OpCode[5]~output_o\);

-- Location: IOIBUF_X115_Y19_N1
\enderecoDisplay[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(2),
	o => \enderecoDisplay[2]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\enderecoDisplay[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(0),
	o => \enderecoDisplay[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\ULAOPer[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULAOPer(1),
	o => \ULAOPer[1]~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X58_Y0_N22
\mux_PC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux_PC,
	o => \mux_PC~input_o\);

-- Location: LCCOMB_X3_Y14_N2
\add4toPC|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~0_combout\ = \PC|DOUT[2]~_Duplicate_1_q\ $ (VCC)
-- \add4toPC|Add0~1\ = CARRY(\PC|DOUT[2]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[2]~_Duplicate_1_q\,
	datad => VCC,
	combout => \add4toPC|Add0~0_combout\,
	cout => \add4toPC|Add0~1\);

-- Location: LCCOMB_X4_Y14_N14
\MuxProxPC|X[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[2]~5_combout\ = (!\mux_PC~input_o\ & \add4toPC|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_PC~input_o\,
	datad => \add4toPC|Add0~0_combout\,
	combout => \MuxProxPC|X[2]~5_combout\);

-- Location: IOIBUF_X0_Y36_N15
\RST_PC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_PC,
	o => \RST_PC~input_o\);

-- Location: CLKCTRL_G4
\RST_PC~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST_PC~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST_PC~inputclkctrl_outclk\);

-- Location: FF_X3_Y14_N3
\PC|DOUT[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[2]~5_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~_Duplicate_1_q\);

-- Location: IOIBUF_X0_Y42_N8
\mux_RtIm~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux_RtIm,
	o => \mux_RtIm~input_o\);

-- Location: LCCOMB_X3_Y14_N4
\add4toPC|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~2_combout\ = (\PC|DOUT[3]~_Duplicate_1_q\ & (!\add4toPC|Add0~1\)) # (!\PC|DOUT[3]~_Duplicate_1_q\ & ((\add4toPC|Add0~1\) # (GND)))
-- \add4toPC|Add0~3\ = CARRY((!\add4toPC|Add0~1\) # (!\PC|DOUT[3]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~1\,
	combout => \add4toPC|Add0~2_combout\,
	cout => \add4toPC|Add0~3\);

-- Location: LCCOMB_X4_Y14_N28
\MuxProxPC|X[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[3]~2_combout\ = (!\mux_PC~input_o\ & \add4toPC|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_PC~input_o\,
	datac => \add4toPC|Add0~2_combout\,
	combout => \MuxProxPC|X[3]~2_combout\);

-- Location: FF_X3_Y14_N1
\PC|DOUT[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[3]~2_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N6
\add4toPC|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~4_combout\ = (\PC|DOUT[4]~_Duplicate_1_q\ & (\add4toPC|Add0~3\ $ (GND))) # (!\PC|DOUT[4]~_Duplicate_1_q\ & (!\add4toPC|Add0~3\ & VCC))
-- \add4toPC|Add0~5\ = CARRY((\PC|DOUT[4]~_Duplicate_1_q\ & !\add4toPC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~3\,
	combout => \add4toPC|Add0~4_combout\,
	cout => \add4toPC|Add0~5\);

-- Location: IOIBUF_X11_Y0_N8
\BEQ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BEQ,
	o => \BEQ~input_o\);

-- Location: LCCOMB_X2_Y14_N0
\Mem_Inst|MemoriaDeInstrucao~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mem_Inst|MemoriaDeInstrucao~1_combout\ = (\Mem_Inst|MemoriaDeInstrucao~0_combout\ & !\PC|DOUT[2]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \PC|DOUT[2]~_Duplicate_1_q\,
	combout => \Mem_Inst|MemoriaDeInstrucao~1_combout\);

-- Location: LCCOMB_X2_Y14_N4
\AddPC4andExtSin|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~0_combout\ = (\add4toPC|Add0~4_combout\ & (\Mem_Inst|MemoriaDeInstrucao~1_combout\ $ (VCC))) # (!\add4toPC|Add0~4_combout\ & (\Mem_Inst|MemoriaDeInstrucao~1_combout\ & VCC))
-- \AddPC4andExtSin|Add0~1\ = CARRY((\add4toPC|Add0~4_combout\ & \Mem_Inst|MemoriaDeInstrucao~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~4_combout\,
	datab => \Mem_Inst|MemoriaDeInstrucao~1_combout\,
	datad => VCC,
	combout => \AddPC4andExtSin|Add0~0_combout\,
	cout => \AddPC4andExtSin|Add0~1\);

-- Location: LCCOMB_X10_Y1_N28
\MuxBEQ|X[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[4]~0_combout\ = (\BEQ~input_o\ & ((\ALU|opmux|X[2]~0_combout\ & (\add4toPC|Add0~4_combout\)) # (!\ALU|opmux|X[2]~0_combout\ & ((\AddPC4andExtSin|Add0~0_combout\))))) # (!\BEQ~input_o\ & (\add4toPC|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~4_combout\,
	datab => \BEQ~input_o\,
	datac => \ALU|opmux|X[2]~0_combout\,
	datad => \AddPC4andExtSin|Add0~0_combout\,
	combout => \MuxBEQ|X[4]~0_combout\);

-- Location: LCCOMB_X10_Y1_N22
\MuxProxPC|X[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[4]~31_combout\ = (\mux_PC~input_o\ & (!\PC|DOUT[2]~_Duplicate_1_q\ & (\Mem_Inst|MemoriaDeInstrucao~0_combout\))) # (!\mux_PC~input_o\ & (((\MuxBEQ|X[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT[2]~_Duplicate_1_q\,
	datab => \mux_PC~input_o\,
	datac => \Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \MuxBEQ|X[4]~0_combout\,
	combout => \MuxProxPC|X[4]~31_combout\);

-- Location: FF_X3_Y14_N7
\PC|DOUT[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[4]~31_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N8
\add4toPC|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~6_combout\ = (\PC|DOUT[5]~_Duplicate_1_q\ & (!\add4toPC|Add0~5\)) # (!\PC|DOUT[5]~_Duplicate_1_q\ & ((\add4toPC|Add0~5\) # (GND)))
-- \add4toPC|Add0~7\ = CARRY((!\add4toPC|Add0~5\) # (!\PC|DOUT[5]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~5\,
	combout => \add4toPC|Add0~6_combout\,
	cout => \add4toPC|Add0~7\);

-- Location: LCCOMB_X2_Y14_N6
\AddPC4andExtSin|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~2_combout\ = (\add4toPC|Add0~6_combout\ & (!\AddPC4andExtSin|Add0~1\)) # (!\add4toPC|Add0~6_combout\ & ((\AddPC4andExtSin|Add0~1\) # (GND)))
-- \AddPC4andExtSin|Add0~3\ = CARRY((!\AddPC4andExtSin|Add0~1\) # (!\add4toPC|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~6_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~1\,
	combout => \AddPC4andExtSin|Add0~2_combout\,
	cout => \AddPC4andExtSin|Add0~3\);

-- Location: LCCOMB_X2_Y14_N2
AndBEQ : cycloneive_lcell_comb
-- Equation(s):
-- \AndBEQ~combout\ = (\BEQ~input_o\ & (((\ULAOPer[1]~input_o\) # (!\Mem_Inst|MemoriaDeInstrucao~1_combout\)) # (!\mux_RtIm~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_RtIm~input_o\,
	datab => \ULAOPer[1]~input_o\,
	datac => \BEQ~input_o\,
	datad => \Mem_Inst|MemoriaDeInstrucao~1_combout\,
	combout => \AndBEQ~combout\);

-- Location: LCCOMB_X3_Y1_N18
\MuxProxPC|X[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[5]~4_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~2_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~6_combout\,
	datab => \mux_PC~input_o\,
	datac => \AddPC4andExtSin|Add0~2_combout\,
	datad => \AndBEQ~combout\,
	combout => \MuxProxPC|X[5]~4_combout\);

-- Location: FF_X3_Y14_N9
\PC|DOUT[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[5]~4_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N10
\add4toPC|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~8_combout\ = (\PC|DOUT[6]~_Duplicate_1_q\ & (\add4toPC|Add0~7\ $ (GND))) # (!\PC|DOUT[6]~_Duplicate_1_q\ & (!\add4toPC|Add0~7\ & VCC))
-- \add4toPC|Add0~9\ = CARRY((\PC|DOUT[6]~_Duplicate_1_q\ & !\add4toPC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~7\,
	combout => \add4toPC|Add0~8_combout\,
	cout => \add4toPC|Add0~9\);

-- Location: LCCOMB_X2_Y14_N8
\AddPC4andExtSin|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~4_combout\ = (\add4toPC|Add0~8_combout\ & (\AddPC4andExtSin|Add0~3\ $ (GND))) # (!\add4toPC|Add0~8_combout\ & (!\AddPC4andExtSin|Add0~3\ & VCC))
-- \AddPC4andExtSin|Add0~5\ = CARRY((\add4toPC|Add0~8_combout\ & !\AddPC4andExtSin|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~8_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~3\,
	combout => \AddPC4andExtSin|Add0~4_combout\,
	cout => \AddPC4andExtSin|Add0~5\);

-- Location: LCCOMB_X1_Y8_N16
\MuxProxPC|X[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[6]~3_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~4_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_PC~input_o\,
	datab => \add4toPC|Add0~8_combout\,
	datac => \AndBEQ~combout\,
	datad => \AddPC4andExtSin|Add0~4_combout\,
	combout => \MuxProxPC|X[6]~3_combout\);

-- Location: FF_X3_Y14_N5
\PC|DOUT[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[6]~3_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N0
\Mem_Inst|MemoriaDeInstrucao~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mem_Inst|MemoriaDeInstrucao~0_combout\ = (!\PC|DOUT[4]~_Duplicate_1_q\ & (!\PC|DOUT[6]~_Duplicate_1_q\ & (\PC|DOUT[3]~_Duplicate_1_q\ & !\PC|DOUT[5]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT[4]~_Duplicate_1_q\,
	datab => \PC|DOUT[6]~_Duplicate_1_q\,
	datac => \PC|DOUT[3]~_Duplicate_1_q\,
	datad => \PC|DOUT[5]~_Duplicate_1_q\,
	combout => \Mem_Inst|MemoriaDeInstrucao~0_combout\);

-- Location: LCCOMB_X10_Y14_N28
\ALU|opmux|X[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|opmux|X[2]~0_combout\ = (!\ULAOPer[1]~input_o\ & (!\PC|DOUT[2]~_Duplicate_1_q\ & (\mux_RtIm~input_o\ & \Mem_Inst|MemoriaDeInstrucao~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAOPer[1]~input_o\,
	datab => \PC|DOUT[2]~_Duplicate_1_q\,
	datac => \mux_RtIm~input_o\,
	datad => \Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \ALU|opmux|X[2]~0_combout\);

-- Location: IOIBUF_X115_Y19_N8
\enderecoDisplay[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(1),
	o => \enderecoDisplay[1]~input_o\);

-- Location: LCCOMB_X114_Y19_N0
\comparadorDisplay|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~0_combout\ = (!\enderecoDisplay[0]~input_o\ & (!\enderecoDisplay[1]~input_o\ & (\enderecoDisplay[2]~input_o\ $ (!\ALU|opmux|X[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[2]~input_o\,
	datab => \enderecoDisplay[0]~input_o\,
	datac => \ALU|opmux|X[2]~0_combout\,
	datad => \enderecoDisplay[1]~input_o\,
	combout => \comparadorDisplay|Equal0~0_combout\);

-- Location: IOIBUF_X115_Y22_N15
\enderecoDisplay[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(24),
	o => \enderecoDisplay[24]~input_o\);

-- Location: IOIBUF_X115_Y23_N1
\enderecoDisplay[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(23),
	o => \enderecoDisplay[23]~input_o\);

-- Location: IOIBUF_X115_Y21_N15
\enderecoDisplay[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(25),
	o => \enderecoDisplay[25]~input_o\);

-- Location: IOIBUF_X115_Y23_N8
\enderecoDisplay[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(26),
	o => \enderecoDisplay[26]~input_o\);

-- Location: LCCOMB_X114_Y20_N10
\comparadorDisplay|Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~17_combout\ = (!\enderecoDisplay[24]~input_o\ & (!\enderecoDisplay[23]~input_o\ & (!\enderecoDisplay[25]~input_o\ & !\enderecoDisplay[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[24]~input_o\,
	datab => \enderecoDisplay[23]~input_o\,
	datac => \enderecoDisplay[25]~input_o\,
	datad => \enderecoDisplay[26]~input_o\,
	combout => \comparadorDisplay|Equal0~17_combout\);

-- Location: IOIBUF_X115_Y17_N1
\enderecoDisplay[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(21),
	o => \enderecoDisplay[21]~input_o\);

-- Location: IOIBUF_X115_Y20_N1
\enderecoDisplay[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(20),
	o => \enderecoDisplay[20]~input_o\);

-- Location: IOIBUF_X115_Y16_N1
\enderecoDisplay[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(19),
	o => \enderecoDisplay[19]~input_o\);

-- Location: IOIBUF_X115_Y22_N22
\enderecoDisplay[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(22),
	o => \enderecoDisplay[22]~input_o\);

-- Location: LCCOMB_X114_Y20_N20
\comparadorDisplay|Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~16_combout\ = (!\enderecoDisplay[21]~input_o\ & (!\enderecoDisplay[20]~input_o\ & (!\enderecoDisplay[19]~input_o\ & !\enderecoDisplay[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[21]~input_o\,
	datab => \enderecoDisplay[20]~input_o\,
	datac => \enderecoDisplay[19]~input_o\,
	datad => \enderecoDisplay[22]~input_o\,
	combout => \comparadorDisplay|Equal0~16_combout\);

-- Location: IOIBUF_X115_Y30_N1
\enderecoDisplay[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(15),
	o => \enderecoDisplay[15]~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\enderecoDisplay[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(18),
	o => \enderecoDisplay[18]~input_o\);

-- Location: IOIBUF_X115_Y31_N8
\enderecoDisplay[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(17),
	o => \enderecoDisplay[17]~input_o\);

-- Location: IOIBUF_X115_Y26_N22
\enderecoDisplay[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(16),
	o => \enderecoDisplay[16]~input_o\);

-- Location: LCCOMB_X114_Y28_N22
\comparadorDisplay|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~14_combout\ = (!\enderecoDisplay[15]~input_o\ & (!\enderecoDisplay[18]~input_o\ & (!\enderecoDisplay[17]~input_o\ & !\enderecoDisplay[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[15]~input_o\,
	datab => \enderecoDisplay[18]~input_o\,
	datac => \enderecoDisplay[17]~input_o\,
	datad => \enderecoDisplay[16]~input_o\,
	combout => \comparadorDisplay|Equal0~14_combout\);

-- Location: IOIBUF_X115_Y28_N8
\enderecoDisplay[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(12),
	o => \enderecoDisplay[12]~input_o\);

-- Location: IOIBUF_X115_Y26_N15
\enderecoDisplay[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(11),
	o => \enderecoDisplay[11]~input_o\);

-- Location: IOIBUF_X115_Y27_N1
\enderecoDisplay[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(14),
	o => \enderecoDisplay[14]~input_o\);

-- Location: IOIBUF_X115_Y25_N15
\enderecoDisplay[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(13),
	o => \enderecoDisplay[13]~input_o\);

-- Location: LCCOMB_X114_Y28_N24
\comparadorDisplay|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~13_combout\ = (!\enderecoDisplay[12]~input_o\ & (!\enderecoDisplay[11]~input_o\ & (!\enderecoDisplay[14]~input_o\ & !\enderecoDisplay[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[12]~input_o\,
	datab => \enderecoDisplay[11]~input_o\,
	datac => \enderecoDisplay[14]~input_o\,
	datad => \enderecoDisplay[13]~input_o\,
	combout => \comparadorDisplay|Equal0~13_combout\);

-- Location: IOIBUF_X115_Y29_N8
\enderecoDisplay[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(3),
	o => \enderecoDisplay[3]~input_o\);

-- Location: IOIBUF_X115_Y25_N22
\enderecoDisplay[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(6),
	o => \enderecoDisplay[6]~input_o\);

-- Location: IOIBUF_X115_Y31_N1
\enderecoDisplay[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(5),
	o => \enderecoDisplay[5]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\enderecoDisplay[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(4),
	o => \enderecoDisplay[4]~input_o\);

-- Location: LCCOMB_X114_Y28_N4
\comparadorDisplay|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~11_combout\ = (!\enderecoDisplay[3]~input_o\ & (!\enderecoDisplay[6]~input_o\ & (!\enderecoDisplay[5]~input_o\ & !\enderecoDisplay[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[3]~input_o\,
	datab => \enderecoDisplay[6]~input_o\,
	datac => \enderecoDisplay[5]~input_o\,
	datad => \enderecoDisplay[4]~input_o\,
	combout => \comparadorDisplay|Equal0~11_combout\);

-- Location: IOIBUF_X115_Y32_N1
\enderecoDisplay[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(8),
	o => \enderecoDisplay[8]~input_o\);

-- Location: IOIBUF_X115_Y30_N8
\enderecoDisplay[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(9),
	o => \enderecoDisplay[9]~input_o\);

-- Location: IOIBUF_X115_Y27_N8
\enderecoDisplay[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(10),
	o => \enderecoDisplay[10]~input_o\);

-- Location: IOIBUF_X115_Y32_N8
\enderecoDisplay[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(7),
	o => \enderecoDisplay[7]~input_o\);

-- Location: LCCOMB_X114_Y28_N18
\comparadorDisplay|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~12_combout\ = (!\enderecoDisplay[8]~input_o\ & (!\enderecoDisplay[9]~input_o\ & (!\enderecoDisplay[10]~input_o\ & !\enderecoDisplay[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[8]~input_o\,
	datab => \enderecoDisplay[9]~input_o\,
	datac => \enderecoDisplay[10]~input_o\,
	datad => \enderecoDisplay[7]~input_o\,
	combout => \comparadorDisplay|Equal0~12_combout\);

-- Location: LCCOMB_X114_Y28_N8
\comparadorDisplay|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~15_combout\ = (\comparadorDisplay|Equal0~14_combout\ & (\comparadorDisplay|Equal0~13_combout\ & (\comparadorDisplay|Equal0~11_combout\ & \comparadorDisplay|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparadorDisplay|Equal0~14_combout\,
	datab => \comparadorDisplay|Equal0~13_combout\,
	datac => \comparadorDisplay|Equal0~11_combout\,
	datad => \comparadorDisplay|Equal0~12_combout\,
	combout => \comparadorDisplay|Equal0~15_combout\);

-- Location: IOIBUF_X115_Y18_N1
\enderecoDisplay[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(29),
	o => \enderecoDisplay[29]~input_o\);

-- Location: IOIBUF_X115_Y17_N8
\enderecoDisplay[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(28),
	o => \enderecoDisplay[28]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\enderecoDisplay[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(27),
	o => \enderecoDisplay[27]~input_o\);

-- Location: LCCOMB_X114_Y20_N28
\comparadorDisplay|Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~18_combout\ = (!\enderecoDisplay[28]~input_o\ & !\enderecoDisplay[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enderecoDisplay[28]~input_o\,
	datac => \enderecoDisplay[27]~input_o\,
	combout => \comparadorDisplay|Equal0~18_combout\);

-- Location: IOIBUF_X115_Y20_N8
\enderecoDisplay[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(30),
	o => \enderecoDisplay[30]~input_o\);

-- Location: IOIBUF_X115_Y22_N1
\enderecoDisplay[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoDisplay(31),
	o => \enderecoDisplay[31]~input_o\);

-- Location: LCCOMB_X114_Y20_N2
\comparadorDisplay|Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~19_combout\ = (!\enderecoDisplay[29]~input_o\ & (\comparadorDisplay|Equal0~18_combout\ & (!\enderecoDisplay[30]~input_o\ & !\enderecoDisplay[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[29]~input_o\,
	datab => \comparadorDisplay|Equal0~18_combout\,
	datac => \enderecoDisplay[30]~input_o\,
	datad => \enderecoDisplay[31]~input_o\,
	combout => \comparadorDisplay|Equal0~19_combout\);

-- Location: LCCOMB_X114_Y20_N4
\comparadorDisplay|Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~20_combout\ = (\comparadorDisplay|Equal0~17_combout\ & (\comparadorDisplay|Equal0~16_combout\ & (\comparadorDisplay|Equal0~15_combout\ & \comparadorDisplay|Equal0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparadorDisplay|Equal0~17_combout\,
	datab => \comparadorDisplay|Equal0~16_combout\,
	datac => \comparadorDisplay|Equal0~15_combout\,
	datad => \comparadorDisplay|Equal0~19_combout\,
	combout => \comparadorDisplay|Equal0~20_combout\);

-- Location: IOIBUF_X18_Y0_N15
\ULAOPer[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULAOPer(0),
	o => \ULAOPer[0]~input_o\);

-- Location: LCCOMB_X10_Y14_N22
\UC_ULA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC_ULA|Equal0~0_combout\ = (\ULAOPer[0]~input_o\ & !\ULAOPer[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULAOPer[0]~input_o\,
	datad => \ULAOPer[1]~input_o\,
	combout => \UC_ULA|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y14_N20
\ALU|opmux|X[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|opmux|X[31]~1_combout\ = (\mux_RtIm~input_o\ & (!\PC|DOUT[2]~_Duplicate_1_q\ & (\UC_ULA|Equal0~0_combout\ & \Mem_Inst|MemoriaDeInstrucao~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_RtIm~input_o\,
	datab => \PC|DOUT[2]~_Duplicate_1_q\,
	datac => \UC_ULA|Equal0~0_combout\,
	datad => \Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \ALU|opmux|X[31]~1_combout\);

-- Location: LCCOMB_X114_Y28_N12
\comparadorDisplay|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~5_combout\ = (\enderecoDisplay[15]~input_o\ & (\enderecoDisplay[18]~input_o\ & (\enderecoDisplay[17]~input_o\ & \enderecoDisplay[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[15]~input_o\,
	datab => \enderecoDisplay[18]~input_o\,
	datac => \enderecoDisplay[17]~input_o\,
	datad => \enderecoDisplay[16]~input_o\,
	combout => \comparadorDisplay|Equal0~5_combout\);

-- Location: LCCOMB_X114_Y20_N12
\comparadorDisplay|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~6_combout\ = (\enderecoDisplay[21]~input_o\ & (\enderecoDisplay[20]~input_o\ & (\enderecoDisplay[19]~input_o\ & \enderecoDisplay[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[21]~input_o\,
	datab => \enderecoDisplay[20]~input_o\,
	datac => \enderecoDisplay[19]~input_o\,
	datad => \enderecoDisplay[22]~input_o\,
	combout => \comparadorDisplay|Equal0~6_combout\);

-- Location: LCCOMB_X114_Y20_N18
\comparadorDisplay|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~7_combout\ = (\enderecoDisplay[24]~input_o\ & (\enderecoDisplay[23]~input_o\ & (\enderecoDisplay[25]~input_o\ & \enderecoDisplay[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[24]~input_o\,
	datab => \enderecoDisplay[23]~input_o\,
	datac => \enderecoDisplay[25]~input_o\,
	datad => \enderecoDisplay[26]~input_o\,
	combout => \comparadorDisplay|Equal0~7_combout\);

-- Location: LCCOMB_X114_Y20_N8
\comparadorDisplay|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~8_combout\ = (\enderecoDisplay[29]~input_o\ & (\enderecoDisplay[28]~input_o\ & (\enderecoDisplay[27]~input_o\ & \enderecoDisplay[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[29]~input_o\,
	datab => \enderecoDisplay[28]~input_o\,
	datac => \enderecoDisplay[27]~input_o\,
	datad => \enderecoDisplay[30]~input_o\,
	combout => \comparadorDisplay|Equal0~8_combout\);

-- Location: LCCOMB_X114_Y20_N22
\comparadorDisplay|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~9_combout\ = (\comparadorDisplay|Equal0~6_combout\ & (\comparadorDisplay|Equal0~7_combout\ & (\comparadorDisplay|Equal0~8_combout\ & \enderecoDisplay[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparadorDisplay|Equal0~6_combout\,
	datab => \comparadorDisplay|Equal0~7_combout\,
	datac => \comparadorDisplay|Equal0~8_combout\,
	datad => \enderecoDisplay[31]~input_o\,
	combout => \comparadorDisplay|Equal0~9_combout\);

-- Location: LCCOMB_X114_Y28_N26
\comparadorDisplay|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~4_combout\ = (\enderecoDisplay[12]~input_o\ & (\enderecoDisplay[11]~input_o\ & (\enderecoDisplay[14]~input_o\ & \enderecoDisplay[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[12]~input_o\,
	datab => \enderecoDisplay[11]~input_o\,
	datac => \enderecoDisplay[14]~input_o\,
	datad => \enderecoDisplay[13]~input_o\,
	combout => \comparadorDisplay|Equal0~4_combout\);

-- Location: LCCOMB_X114_Y28_N10
\comparadorDisplay|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~2_combout\ = (\enderecoDisplay[8]~input_o\ & (\enderecoDisplay[9]~input_o\ & (\enderecoDisplay[10]~input_o\ & \enderecoDisplay[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDisplay[8]~input_o\,
	datab => \enderecoDisplay[9]~input_o\,
	datac => \enderecoDisplay[10]~input_o\,
	datad => \enderecoDisplay[7]~input_o\,
	combout => \comparadorDisplay|Equal0~2_combout\);

-- Location: LCCOMB_X114_Y28_N20
\comparadorDisplay|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~1_combout\ = (\enderecoDisplay[6]~input_o\ & \enderecoDisplay[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enderecoDisplay[6]~input_o\,
	datac => \enderecoDisplay[5]~input_o\,
	combout => \comparadorDisplay|Equal0~1_combout\);

-- Location: LCCOMB_X114_Y28_N28
\comparadorDisplay|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~3_combout\ = (\comparadorDisplay|Equal0~2_combout\ & (\comparadorDisplay|Equal0~1_combout\ & (\enderecoDisplay[3]~input_o\ & \enderecoDisplay[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparadorDisplay|Equal0~2_combout\,
	datab => \comparadorDisplay|Equal0~1_combout\,
	datac => \enderecoDisplay[3]~input_o\,
	datad => \enderecoDisplay[4]~input_o\,
	combout => \comparadorDisplay|Equal0~3_combout\);

-- Location: LCCOMB_X114_Y28_N6
\comparadorDisplay|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~10_combout\ = (\comparadorDisplay|Equal0~5_combout\ & (\comparadorDisplay|Equal0~9_combout\ & (\comparadorDisplay|Equal0~4_combout\ & \comparadorDisplay|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparadorDisplay|Equal0~5_combout\,
	datab => \comparadorDisplay|Equal0~9_combout\,
	datac => \comparadorDisplay|Equal0~4_combout\,
	datad => \comparadorDisplay|Equal0~3_combout\,
	combout => \comparadorDisplay|Equal0~10_combout\);

-- Location: LCCOMB_X114_Y24_N4
\comparadorDisplay|Equal0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparadorDisplay|Equal0~21_combout\ = (\comparadorDisplay|Equal0~0_combout\ & ((\ALU|opmux|X[31]~1_combout\ & ((\comparadorDisplay|Equal0~10_combout\))) # (!\ALU|opmux|X[31]~1_combout\ & (\comparadorDisplay|Equal0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparadorDisplay|Equal0~0_combout\,
	datab => \comparadorDisplay|Equal0~20_combout\,
	datac => \ALU|opmux|X[31]~1_combout\,
	datad => \comparadorDisplay|Equal0~10_combout\,
	combout => \comparadorDisplay|Equal0~21_combout\);

-- Location: DDIOOUTCELL_X7_Y0_N25
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[2]~5_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: DDIOOUTCELL_X11_Y0_N4
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[3]~2_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: DDIOOUTCELL_X11_Y0_N18
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[4]~31_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: DDIOOUTCELL_X3_Y0_N25
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[5]~4_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: DDIOOUTCELL_X0_Y8_N25
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[6]~3_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: FF_X3_Y14_N13
\PC|DOUT[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[7]~6_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N12
\add4toPC|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~10_combout\ = (\PC|DOUT[7]~_Duplicate_1_q\ & (!\add4toPC|Add0~9\)) # (!\PC|DOUT[7]~_Duplicate_1_q\ & ((\add4toPC|Add0~9\) # (GND)))
-- \add4toPC|Add0~11\ = CARRY((!\add4toPC|Add0~9\) # (!\PC|DOUT[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT[7]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~9\,
	combout => \add4toPC|Add0~10_combout\,
	cout => \add4toPC|Add0~11\);

-- Location: LCCOMB_X2_Y14_N10
\AddPC4andExtSin|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~6_combout\ = (\add4toPC|Add0~10_combout\ & (!\AddPC4andExtSin|Add0~5\)) # (!\add4toPC|Add0~10_combout\ & ((\AddPC4andExtSin|Add0~5\) # (GND)))
-- \AddPC4andExtSin|Add0~7\ = CARRY((!\AddPC4andExtSin|Add0~5\) # (!\add4toPC|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~10_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~5\,
	combout => \AddPC4andExtSin|Add0~6_combout\,
	cout => \AddPC4andExtSin|Add0~7\);

-- Location: LCCOMB_X1_Y21_N28
\MuxProxPC|X[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[7]~6_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~6_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~10_combout\,
	datab => \mux_PC~input_o\,
	datac => \AndBEQ~combout\,
	datad => \AddPC4andExtSin|Add0~6_combout\,
	combout => \MuxProxPC|X[7]~6_combout\);

-- Location: DDIOOUTCELL_X0_Y21_N18
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[7]~6_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: FF_X3_Y14_N15
\PC|DOUT[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[8]~7_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N14
\add4toPC|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~12_combout\ = (\PC|DOUT[8]~_Duplicate_1_q\ & (\add4toPC|Add0~11\ $ (GND))) # (!\PC|DOUT[8]~_Duplicate_1_q\ & (!\add4toPC|Add0~11\ & VCC))
-- \add4toPC|Add0~13\ = CARRY((\PC|DOUT[8]~_Duplicate_1_q\ & !\add4toPC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[8]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~11\,
	combout => \add4toPC|Add0~12_combout\,
	cout => \add4toPC|Add0~13\);

-- Location: LCCOMB_X2_Y14_N12
\AddPC4andExtSin|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~8_combout\ = (\add4toPC|Add0~12_combout\ & (\AddPC4andExtSin|Add0~7\ $ (GND))) # (!\add4toPC|Add0~12_combout\ & (!\AddPC4andExtSin|Add0~7\ & VCC))
-- \AddPC4andExtSin|Add0~9\ = CARRY((\add4toPC|Add0~12_combout\ & !\AddPC4andExtSin|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~12_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~7\,
	combout => \AddPC4andExtSin|Add0~8_combout\,
	cout => \AddPC4andExtSin|Add0~9\);

-- Location: LCCOMB_X1_Y19_N28
\MuxProxPC|X[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[8]~7_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~8_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_PC~input_o\,
	datab => \add4toPC|Add0~12_combout\,
	datac => \AndBEQ~combout\,
	datad => \AddPC4andExtSin|Add0~8_combout\,
	combout => \MuxProxPC|X[8]~7_combout\);

-- Location: DDIOOUTCELL_X0_Y19_N11
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[8]~7_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: FF_X3_Y14_N17
\PC|DOUT[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[9]~8_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N16
\add4toPC|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~14_combout\ = (\PC|DOUT[9]~_Duplicate_1_q\ & (!\add4toPC|Add0~13\)) # (!\PC|DOUT[9]~_Duplicate_1_q\ & ((\add4toPC|Add0~13\) # (GND)))
-- \add4toPC|Add0~15\ = CARRY((!\add4toPC|Add0~13\) # (!\PC|DOUT[9]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[9]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~13\,
	combout => \add4toPC|Add0~14_combout\,
	cout => \add4toPC|Add0~15\);

-- Location: LCCOMB_X2_Y14_N14
\AddPC4andExtSin|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~10_combout\ = (\add4toPC|Add0~14_combout\ & (!\AddPC4andExtSin|Add0~9\)) # (!\add4toPC|Add0~14_combout\ & ((\AddPC4andExtSin|Add0~9\) # (GND)))
-- \AddPC4andExtSin|Add0~11\ = CARRY((!\AddPC4andExtSin|Add0~9\) # (!\add4toPC|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~14_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~9\,
	combout => \AddPC4andExtSin|Add0~10_combout\,
	cout => \AddPC4andExtSin|Add0~11\);

-- Location: LCCOMB_X1_Y22_N28
\MuxProxPC|X[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[9]~8_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~10_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~14_combout\,
	datab => \mux_PC~input_o\,
	datac => \AddPC4andExtSin|Add0~10_combout\,
	datad => \AndBEQ~combout\,
	combout => \MuxProxPC|X[9]~8_combout\);

-- Location: DDIOOUTCELL_X0_Y22_N25
\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[9]~8_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

-- Location: FF_X3_Y14_N19
\PC|DOUT[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[10]~9_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N18
\add4toPC|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~16_combout\ = (\PC|DOUT[10]~_Duplicate_1_q\ & (\add4toPC|Add0~15\ $ (GND))) # (!\PC|DOUT[10]~_Duplicate_1_q\ & (!\add4toPC|Add0~15\ & VCC))
-- \add4toPC|Add0~17\ = CARRY((\PC|DOUT[10]~_Duplicate_1_q\ & !\add4toPC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[10]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~15\,
	combout => \add4toPC|Add0~16_combout\,
	cout => \add4toPC|Add0~17\);

-- Location: LCCOMB_X2_Y14_N16
\AddPC4andExtSin|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~12_combout\ = (\add4toPC|Add0~16_combout\ & (\AddPC4andExtSin|Add0~11\ $ (GND))) # (!\add4toPC|Add0~16_combout\ & (!\AddPC4andExtSin|Add0~11\ & VCC))
-- \AddPC4andExtSin|Add0~13\ = CARRY((\add4toPC|Add0~16_combout\ & !\AddPC4andExtSin|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~16_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~11\,
	combout => \AddPC4andExtSin|Add0~12_combout\,
	cout => \AddPC4andExtSin|Add0~13\);

-- Location: LCCOMB_X1_Y19_N30
\MuxProxPC|X[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[10]~9_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~12_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_PC~input_o\,
	datab => \add4toPC|Add0~16_combout\,
	datac => \AndBEQ~combout\,
	datad => \AddPC4andExtSin|Add0~12_combout\,
	combout => \MuxProxPC|X[10]~9_combout\);

-- Location: DDIOOUTCELL_X0_Y19_N4
\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[10]~9_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

-- Location: FF_X3_Y14_N21
\PC|DOUT[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[11]~10_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[11]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N20
\add4toPC|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~18_combout\ = (\PC|DOUT[11]~_Duplicate_1_q\ & (!\add4toPC|Add0~17\)) # (!\PC|DOUT[11]~_Duplicate_1_q\ & ((\add4toPC|Add0~17\) # (GND)))
-- \add4toPC|Add0~19\ = CARRY((!\add4toPC|Add0~17\) # (!\PC|DOUT[11]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[11]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~17\,
	combout => \add4toPC|Add0~18_combout\,
	cout => \add4toPC|Add0~19\);

-- Location: LCCOMB_X2_Y14_N18
\AddPC4andExtSin|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~14_combout\ = (\add4toPC|Add0~18_combout\ & (!\AddPC4andExtSin|Add0~13\)) # (!\add4toPC|Add0~18_combout\ & ((\AddPC4andExtSin|Add0~13\) # (GND)))
-- \AddPC4andExtSin|Add0~15\ = CARRY((!\AddPC4andExtSin|Add0~13\) # (!\add4toPC|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~18_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~13\,
	combout => \AddPC4andExtSin|Add0~14_combout\,
	cout => \AddPC4andExtSin|Add0~15\);

-- Location: LCCOMB_X1_Y18_N28
\MuxProxPC|X[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[11]~10_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & (\AddPC4andExtSin|Add0~14_combout\)) # (!\AndBEQ~combout\ & ((\add4toPC|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AndBEQ~combout\,
	datab => \mux_PC~input_o\,
	datac => \AddPC4andExtSin|Add0~14_combout\,
	datad => \add4toPC|Add0~18_combout\,
	combout => \MuxProxPC|X[11]~10_combout\);

-- Location: DDIOOUTCELL_X0_Y18_N18
\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[11]~10_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

-- Location: FF_X3_Y14_N23
\PC|DOUT[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[12]~11_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[12]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N22
\add4toPC|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~20_combout\ = (\PC|DOUT[12]~_Duplicate_1_q\ & (\add4toPC|Add0~19\ $ (GND))) # (!\PC|DOUT[12]~_Duplicate_1_q\ & (!\add4toPC|Add0~19\ & VCC))
-- \add4toPC|Add0~21\ = CARRY((\PC|DOUT[12]~_Duplicate_1_q\ & !\add4toPC|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT[12]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~19\,
	combout => \add4toPC|Add0~20_combout\,
	cout => \add4toPC|Add0~21\);

-- Location: LCCOMB_X2_Y14_N20
\AddPC4andExtSin|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~16_combout\ = (\add4toPC|Add0~20_combout\ & (\AddPC4andExtSin|Add0~15\ $ (GND))) # (!\add4toPC|Add0~20_combout\ & (!\AddPC4andExtSin|Add0~15\ & VCC))
-- \AddPC4andExtSin|Add0~17\ = CARRY((\add4toPC|Add0~20_combout\ & !\AddPC4andExtSin|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~20_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~15\,
	combout => \AddPC4andExtSin|Add0~16_combout\,
	cout => \AddPC4andExtSin|Add0~17\);

-- Location: LCCOMB_X1_Y18_N30
\MuxProxPC|X[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[12]~11_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~16_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~20_combout\,
	datab => \mux_PC~input_o\,
	datac => \AddPC4andExtSin|Add0~16_combout\,
	datad => \AndBEQ~combout\,
	combout => \MuxProxPC|X[12]~11_combout\);

-- Location: DDIOOUTCELL_X0_Y18_N25
\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[12]~11_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

-- Location: FF_X3_Y14_N25
\PC|DOUT[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[13]~12_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[13]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N24
\add4toPC|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~22_combout\ = (\PC|DOUT[13]~_Duplicate_1_q\ & (!\add4toPC|Add0~21\)) # (!\PC|DOUT[13]~_Duplicate_1_q\ & ((\add4toPC|Add0~21\) # (GND)))
-- \add4toPC|Add0~23\ = CARRY((!\add4toPC|Add0~21\) # (!\PC|DOUT[13]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[13]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~21\,
	combout => \add4toPC|Add0~22_combout\,
	cout => \add4toPC|Add0~23\);

-- Location: LCCOMB_X2_Y14_N22
\AddPC4andExtSin|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~18_combout\ = (\add4toPC|Add0~22_combout\ & (!\AddPC4andExtSin|Add0~17\)) # (!\add4toPC|Add0~22_combout\ & ((\AddPC4andExtSin|Add0~17\) # (GND)))
-- \AddPC4andExtSin|Add0~19\ = CARRY((!\AddPC4andExtSin|Add0~17\) # (!\add4toPC|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~22_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~17\,
	combout => \AddPC4andExtSin|Add0~18_combout\,
	cout => \AddPC4andExtSin|Add0~19\);

-- Location: LCCOMB_X1_Y21_N2
\MuxProxPC|X[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[13]~12_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~18_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~22_combout\,
	datab => \mux_PC~input_o\,
	datac => \AndBEQ~combout\,
	datad => \AddPC4andExtSin|Add0~18_combout\,
	combout => \MuxProxPC|X[13]~12_combout\);

-- Location: DDIOOUTCELL_X0_Y21_N25
\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[13]~12_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

-- Location: FF_X3_Y14_N27
\PC|DOUT[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[14]~13_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[14]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N26
\add4toPC|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~24_combout\ = (\PC|DOUT[14]~_Duplicate_1_q\ & (\add4toPC|Add0~23\ $ (GND))) # (!\PC|DOUT[14]~_Duplicate_1_q\ & (!\add4toPC|Add0~23\ & VCC))
-- \add4toPC|Add0~25\ = CARRY((\PC|DOUT[14]~_Duplicate_1_q\ & !\add4toPC|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT[14]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~23\,
	combout => \add4toPC|Add0~24_combout\,
	cout => \add4toPC|Add0~25\);

-- Location: LCCOMB_X2_Y14_N24
\AddPC4andExtSin|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~20_combout\ = (\add4toPC|Add0~24_combout\ & (\AddPC4andExtSin|Add0~19\ $ (GND))) # (!\add4toPC|Add0~24_combout\ & (!\AddPC4andExtSin|Add0~19\ & VCC))
-- \AddPC4andExtSin|Add0~21\ = CARRY((\add4toPC|Add0~24_combout\ & !\AddPC4andExtSin|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~24_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~19\,
	combout => \AddPC4andExtSin|Add0~20_combout\,
	cout => \AddPC4andExtSin|Add0~21\);

-- Location: LCCOMB_X1_Y14_N6
\MuxProxPC|X[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[14]~13_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~20_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AndBEQ~combout\,
	datab => \add4toPC|Add0~24_combout\,
	datac => \mux_PC~input_o\,
	datad => \AddPC4andExtSin|Add0~20_combout\,
	combout => \MuxProxPC|X[14]~13_combout\);

-- Location: DDIOOUTCELL_X0_Y14_N4
\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[14]~13_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

-- Location: FF_X3_Y14_N29
\PC|DOUT[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[15]~14_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[15]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N28
\add4toPC|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~26_combout\ = (\PC|DOUT[15]~_Duplicate_1_q\ & (!\add4toPC|Add0~25\)) # (!\PC|DOUT[15]~_Duplicate_1_q\ & ((\add4toPC|Add0~25\) # (GND)))
-- \add4toPC|Add0~27\ = CARRY((!\add4toPC|Add0~25\) # (!\PC|DOUT[15]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[15]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~25\,
	combout => \add4toPC|Add0~26_combout\,
	cout => \add4toPC|Add0~27\);

-- Location: LCCOMB_X2_Y14_N26
\AddPC4andExtSin|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~22_combout\ = (\add4toPC|Add0~26_combout\ & (!\AddPC4andExtSin|Add0~21\)) # (!\add4toPC|Add0~26_combout\ & ((\AddPC4andExtSin|Add0~21\) # (GND)))
-- \AddPC4andExtSin|Add0~23\ = CARRY((!\AddPC4andExtSin|Add0~21\) # (!\add4toPC|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~26_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~21\,
	combout => \AddPC4andExtSin|Add0~22_combout\,
	cout => \AddPC4andExtSin|Add0~23\);

-- Location: LCCOMB_X1_Y16_N16
\MuxProxPC|X[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[15]~14_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~22_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_PC~input_o\,
	datab => \add4toPC|Add0~26_combout\,
	datac => \AddPC4andExtSin|Add0~22_combout\,
	datad => \AndBEQ~combout\,
	combout => \MuxProxPC|X[15]~14_combout\);

-- Location: DDIOOUTCELL_X0_Y16_N25
\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[15]~14_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

-- Location: FF_X3_Y14_N31
\PC|DOUT[16]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[16]~15_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[16]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y14_N30
\add4toPC|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~28_combout\ = (\PC|DOUT[16]~_Duplicate_1_q\ & (\add4toPC|Add0~27\ $ (GND))) # (!\PC|DOUT[16]~_Duplicate_1_q\ & (!\add4toPC|Add0~27\ & VCC))
-- \add4toPC|Add0~29\ = CARRY((\PC|DOUT[16]~_Duplicate_1_q\ & !\add4toPC|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT[16]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~27\,
	combout => \add4toPC|Add0~28_combout\,
	cout => \add4toPC|Add0~29\);

-- Location: LCCOMB_X2_Y14_N28
\AddPC4andExtSin|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~24_combout\ = (\add4toPC|Add0~28_combout\ & (\AddPC4andExtSin|Add0~23\ $ (GND))) # (!\add4toPC|Add0~28_combout\ & (!\AddPC4andExtSin|Add0~23\ & VCC))
-- \AddPC4andExtSin|Add0~25\ = CARRY((\add4toPC|Add0~28_combout\ & !\AddPC4andExtSin|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~28_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~23\,
	combout => \AddPC4andExtSin|Add0~24_combout\,
	cout => \AddPC4andExtSin|Add0~25\);

-- Location: LCCOMB_X1_Y20_N4
\MuxProxPC|X[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[16]~15_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~24_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AndBEQ~combout\,
	datab => \mux_PC~input_o\,
	datac => \add4toPC|Add0~28_combout\,
	datad => \AddPC4andExtSin|Add0~24_combout\,
	combout => \MuxProxPC|X[16]~15_combout\);

-- Location: DDIOOUTCELL_X0_Y20_N18
\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[16]~15_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

-- Location: FF_X3_Y13_N1
\PC|DOUT[17]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[17]~16_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[17]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N0
\add4toPC|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~30_combout\ = (\PC|DOUT[17]~_Duplicate_1_q\ & (!\add4toPC|Add0~29\)) # (!\PC|DOUT[17]~_Duplicate_1_q\ & ((\add4toPC|Add0~29\) # (GND)))
-- \add4toPC|Add0~31\ = CARRY((!\add4toPC|Add0~29\) # (!\PC|DOUT[17]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[17]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~29\,
	combout => \add4toPC|Add0~30_combout\,
	cout => \add4toPC|Add0~31\);

-- Location: LCCOMB_X2_Y14_N30
\AddPC4andExtSin|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~26_combout\ = (\add4toPC|Add0~30_combout\ & (!\AddPC4andExtSin|Add0~25\)) # (!\add4toPC|Add0~30_combout\ & ((\AddPC4andExtSin|Add0~25\) # (GND)))
-- \AddPC4andExtSin|Add0~27\ = CARRY((!\AddPC4andExtSin|Add0~25\) # (!\add4toPC|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~30_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~25\,
	combout => \AddPC4andExtSin|Add0~26_combout\,
	cout => \AddPC4andExtSin|Add0~27\);

-- Location: LCCOMB_X1_Y15_N2
\MuxProxPC|X[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[17]~16_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~26_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_PC~input_o\,
	datab => \add4toPC|Add0~30_combout\,
	datac => \AndBEQ~combout\,
	datad => \AddPC4andExtSin|Add0~26_combout\,
	combout => \MuxProxPC|X[17]~16_combout\);

-- Location: DDIOOUTCELL_X0_Y15_N18
\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[17]~16_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

-- Location: LCCOMB_X3_Y13_N30
\PC|DOUT[18]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[18]~_Duplicate_1feeder_combout\ = \MuxProxPC|X[18]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxProxPC|X[18]~17_combout\,
	combout => \PC|DOUT[18]~_Duplicate_1feeder_combout\);

-- Location: FF_X3_Y13_N31
\PC|DOUT[18]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|DOUT[18]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[18]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N2
\add4toPC|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~32_combout\ = (\PC|DOUT[18]~_Duplicate_1_q\ & (\add4toPC|Add0~31\ $ (GND))) # (!\PC|DOUT[18]~_Duplicate_1_q\ & (!\add4toPC|Add0~31\ & VCC))
-- \add4toPC|Add0~33\ = CARRY((\PC|DOUT[18]~_Duplicate_1_q\ & !\add4toPC|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT[18]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~31\,
	combout => \add4toPC|Add0~32_combout\,
	cout => \add4toPC|Add0~33\);

-- Location: LCCOMB_X2_Y13_N0
\AddPC4andExtSin|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~28_combout\ = (\add4toPC|Add0~32_combout\ & (\AddPC4andExtSin|Add0~27\ $ (GND))) # (!\add4toPC|Add0~32_combout\ & (!\AddPC4andExtSin|Add0~27\ & VCC))
-- \AddPC4andExtSin|Add0~29\ = CARRY((\add4toPC|Add0~32_combout\ & !\AddPC4andExtSin|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~32_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~27\,
	combout => \AddPC4andExtSin|Add0~28_combout\,
	cout => \AddPC4andExtSin|Add0~29\);

-- Location: LCCOMB_X1_Y7_N28
\MuxProxPC|X[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[18]~17_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & (\AddPC4andExtSin|Add0~28_combout\)) # (!\AndBEQ~combout\ & ((\add4toPC|Add0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AndBEQ~combout\,
	datab => \mux_PC~input_o\,
	datac => \AddPC4andExtSin|Add0~28_combout\,
	datad => \add4toPC|Add0~32_combout\,
	combout => \MuxProxPC|X[18]~17_combout\);

-- Location: DDIOOUTCELL_X0_Y7_N11
\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[18]~17_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

-- Location: FF_X3_Y13_N27
\PC|DOUT[19]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[19]~18_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[19]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N4
\add4toPC|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~34_combout\ = (\PC|DOUT[19]~_Duplicate_1_q\ & (!\add4toPC|Add0~33\)) # (!\PC|DOUT[19]~_Duplicate_1_q\ & ((\add4toPC|Add0~33\) # (GND)))
-- \add4toPC|Add0~35\ = CARRY((!\add4toPC|Add0~33\) # (!\PC|DOUT[19]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT[19]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~33\,
	combout => \add4toPC|Add0~34_combout\,
	cout => \add4toPC|Add0~35\);

-- Location: LCCOMB_X2_Y13_N2
\AddPC4andExtSin|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~30_combout\ = (\add4toPC|Add0~34_combout\ & (!\AddPC4andExtSin|Add0~29\)) # (!\add4toPC|Add0~34_combout\ & ((\AddPC4andExtSin|Add0~29\) # (GND)))
-- \AddPC4andExtSin|Add0~31\ = CARRY((!\AddPC4andExtSin|Add0~29\) # (!\add4toPC|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~34_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~29\,
	combout => \AddPC4andExtSin|Add0~30_combout\,
	cout => \AddPC4andExtSin|Add0~31\);

-- Location: LCCOMB_X1_Y15_N4
\MuxProxPC|X[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[19]~18_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~30_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_PC~input_o\,
	datab => \AndBEQ~combout\,
	datac => \add4toPC|Add0~34_combout\,
	datad => \AddPC4andExtSin|Add0~30_combout\,
	combout => \MuxProxPC|X[19]~18_combout\);

-- Location: DDIOOUTCELL_X0_Y15_N25
\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[19]~18_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

-- Location: FF_X3_Y13_N7
\PC|DOUT[20]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[20]~19_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[20]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N6
\add4toPC|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~36_combout\ = (\PC|DOUT[20]~_Duplicate_1_q\ & (\add4toPC|Add0~35\ $ (GND))) # (!\PC|DOUT[20]~_Duplicate_1_q\ & (!\add4toPC|Add0~35\ & VCC))
-- \add4toPC|Add0~37\ = CARRY((\PC|DOUT[20]~_Duplicate_1_q\ & !\add4toPC|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT[20]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~35\,
	combout => \add4toPC|Add0~36_combout\,
	cout => \add4toPC|Add0~37\);

-- Location: LCCOMB_X2_Y13_N4
\AddPC4andExtSin|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~32_combout\ = (\add4toPC|Add0~36_combout\ & (\AddPC4andExtSin|Add0~31\ $ (GND))) # (!\add4toPC|Add0~36_combout\ & (!\AddPC4andExtSin|Add0~31\ & VCC))
-- \AddPC4andExtSin|Add0~33\ = CARRY((\add4toPC|Add0~36_combout\ & !\AddPC4andExtSin|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~36_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~31\,
	combout => \AddPC4andExtSin|Add0~32_combout\,
	cout => \AddPC4andExtSin|Add0~33\);

-- Location: LCCOMB_X1_Y12_N0
\MuxProxPC|X[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[20]~19_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & (\AddPC4andExtSin|Add0~32_combout\)) # (!\AndBEQ~combout\ & ((\add4toPC|Add0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_PC~input_o\,
	datab => \AndBEQ~combout\,
	datac => \AddPC4andExtSin|Add0~32_combout\,
	datad => \add4toPC|Add0~36_combout\,
	combout => \MuxProxPC|X[20]~19_combout\);

-- Location: DDIOOUTCELL_X0_Y12_N18
\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[20]~19_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

-- Location: FF_X3_Y13_N9
\PC|DOUT[21]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[21]~20_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[21]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N8
\add4toPC|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~38_combout\ = (\PC|DOUT[21]~_Duplicate_1_q\ & (!\add4toPC|Add0~37\)) # (!\PC|DOUT[21]~_Duplicate_1_q\ & ((\add4toPC|Add0~37\) # (GND)))
-- \add4toPC|Add0~39\ = CARRY((!\add4toPC|Add0~37\) # (!\PC|DOUT[21]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[21]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~37\,
	combout => \add4toPC|Add0~38_combout\,
	cout => \add4toPC|Add0~39\);

-- Location: LCCOMB_X2_Y13_N6
\AddPC4andExtSin|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~34_combout\ = (\add4toPC|Add0~38_combout\ & (!\AddPC4andExtSin|Add0~33\)) # (!\add4toPC|Add0~38_combout\ & ((\AddPC4andExtSin|Add0~33\) # (GND)))
-- \AddPC4andExtSin|Add0~35\ = CARRY((!\AddPC4andExtSin|Add0~33\) # (!\add4toPC|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~38_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~33\,
	combout => \AddPC4andExtSin|Add0~34_combout\,
	cout => \AddPC4andExtSin|Add0~35\);

-- Location: LCCOMB_X1_Y13_N28
\MuxProxPC|X[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[21]~20_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~34_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~38_combout\,
	datab => \mux_PC~input_o\,
	datac => \AndBEQ~combout\,
	datad => \AddPC4andExtSin|Add0~34_combout\,
	combout => \MuxProxPC|X[21]~20_combout\);

-- Location: DDIOOUTCELL_X0_Y13_N11
\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[21]~20_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

-- Location: LCCOMB_X1_Y11_N4
\PC|DOUT[22]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[22]~_Duplicate_1feeder_combout\ = \MuxProxPC|X[22]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxProxPC|X[22]~21_combout\,
	combout => \PC|DOUT[22]~_Duplicate_1feeder_combout\);

-- Location: FF_X1_Y11_N5
\PC|DOUT[22]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|DOUT[22]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[22]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N10
\add4toPC|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~40_combout\ = (\PC|DOUT[22]~_Duplicate_1_q\ & (\add4toPC|Add0~39\ $ (GND))) # (!\PC|DOUT[22]~_Duplicate_1_q\ & (!\add4toPC|Add0~39\ & VCC))
-- \add4toPC|Add0~41\ = CARRY((\PC|DOUT[22]~_Duplicate_1_q\ & !\add4toPC|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT[22]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~39\,
	combout => \add4toPC|Add0~40_combout\,
	cout => \add4toPC|Add0~41\);

-- Location: LCCOMB_X2_Y13_N8
\AddPC4andExtSin|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~36_combout\ = (\add4toPC|Add0~40_combout\ & (\AddPC4andExtSin|Add0~35\ $ (GND))) # (!\add4toPC|Add0~40_combout\ & (!\AddPC4andExtSin|Add0~35\ & VCC))
-- \AddPC4andExtSin|Add0~37\ = CARRY((\add4toPC|Add0~40_combout\ & !\AddPC4andExtSin|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~40_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~35\,
	combout => \AddPC4andExtSin|Add0~36_combout\,
	cout => \AddPC4andExtSin|Add0~37\);

-- Location: LCCOMB_X1_Y11_N16
\MuxProxPC|X[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[22]~21_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~36_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AndBEQ~combout\,
	datab => \mux_PC~input_o\,
	datac => \add4toPC|Add0~40_combout\,
	datad => \AddPC4andExtSin|Add0~36_combout\,
	combout => \MuxProxPC|X[22]~21_combout\);

-- Location: DDIOOUTCELL_X0_Y11_N25
\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[22]~21_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

-- Location: FF_X3_Y13_N11
\PC|DOUT[23]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[23]~22_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[23]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N12
\add4toPC|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~42_combout\ = (\PC|DOUT[23]~_Duplicate_1_q\ & (!\add4toPC|Add0~41\)) # (!\PC|DOUT[23]~_Duplicate_1_q\ & ((\add4toPC|Add0~41\) # (GND)))
-- \add4toPC|Add0~43\ = CARRY((!\add4toPC|Add0~41\) # (!\PC|DOUT[23]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT[23]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~41\,
	combout => \add4toPC|Add0~42_combout\,
	cout => \add4toPC|Add0~43\);

-- Location: LCCOMB_X2_Y13_N10
\AddPC4andExtSin|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~38_combout\ = (\add4toPC|Add0~42_combout\ & (!\AddPC4andExtSin|Add0~37\)) # (!\add4toPC|Add0~42_combout\ & ((\AddPC4andExtSin|Add0~37\) # (GND)))
-- \AddPC4andExtSin|Add0~39\ = CARRY((!\AddPC4andExtSin|Add0~37\) # (!\add4toPC|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~42_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~37\,
	combout => \AddPC4andExtSin|Add0~38_combout\,
	cout => \AddPC4andExtSin|Add0~39\);

-- Location: LCCOMB_X1_Y10_N4
\MuxProxPC|X[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[23]~22_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~38_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AndBEQ~combout\,
	datab => \mux_PC~input_o\,
	datac => \add4toPC|Add0~42_combout\,
	datad => \AddPC4andExtSin|Add0~38_combout\,
	combout => \MuxProxPC|X[23]~22_combout\);

-- Location: DDIOOUTCELL_X0_Y10_N18
\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[23]~22_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

-- Location: FF_X3_Y13_N15
\PC|DOUT[24]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[24]~23_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[24]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N14
\add4toPC|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~44_combout\ = (\PC|DOUT[24]~_Duplicate_1_q\ & (\add4toPC|Add0~43\ $ (GND))) # (!\PC|DOUT[24]~_Duplicate_1_q\ & (!\add4toPC|Add0~43\ & VCC))
-- \add4toPC|Add0~45\ = CARRY((\PC|DOUT[24]~_Duplicate_1_q\ & !\add4toPC|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[24]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~43\,
	combout => \add4toPC|Add0~44_combout\,
	cout => \add4toPC|Add0~45\);

-- Location: LCCOMB_X2_Y13_N12
\AddPC4andExtSin|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~40_combout\ = (\add4toPC|Add0~44_combout\ & (\AddPC4andExtSin|Add0~39\ $ (GND))) # (!\add4toPC|Add0~44_combout\ & (!\AddPC4andExtSin|Add0~39\ & VCC))
-- \AddPC4andExtSin|Add0~41\ = CARRY((\add4toPC|Add0~44_combout\ & !\AddPC4andExtSin|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~44_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~39\,
	combout => \AddPC4andExtSin|Add0~40_combout\,
	cout => \AddPC4andExtSin|Add0~41\);

-- Location: LCCOMB_X1_Y11_N10
\MuxProxPC|X[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[24]~23_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~40_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AndBEQ~combout\,
	datab => \mux_PC~input_o\,
	datac => \add4toPC|Add0~44_combout\,
	datad => \AddPC4andExtSin|Add0~40_combout\,
	combout => \MuxProxPC|X[24]~23_combout\);

-- Location: DDIOOUTCELL_X0_Y11_N18
\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[24]~23_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

-- Location: LCCOMB_X2_Y13_N28
\PC|DOUT[25]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[25]~_Duplicate_1feeder_combout\ = \MuxProxPC|X[25]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxProxPC|X[25]~24_combout\,
	combout => \PC|DOUT[25]~_Duplicate_1feeder_combout\);

-- Location: FF_X2_Y13_N29
\PC|DOUT[25]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|DOUT[25]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[25]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N16
\add4toPC|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~46_combout\ = (\PC|DOUT[25]~_Duplicate_1_q\ & (!\add4toPC|Add0~45\)) # (!\PC|DOUT[25]~_Duplicate_1_q\ & ((\add4toPC|Add0~45\) # (GND)))
-- \add4toPC|Add0~47\ = CARRY((!\add4toPC|Add0~45\) # (!\PC|DOUT[25]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT[25]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~45\,
	combout => \add4toPC|Add0~46_combout\,
	cout => \add4toPC|Add0~47\);

-- Location: LCCOMB_X2_Y13_N14
\AddPC4andExtSin|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~42_combout\ = (\add4toPC|Add0~46_combout\ & (!\AddPC4andExtSin|Add0~41\)) # (!\add4toPC|Add0~46_combout\ & ((\AddPC4andExtSin|Add0~41\) # (GND)))
-- \AddPC4andExtSin|Add0~43\ = CARRY((!\AddPC4andExtSin|Add0~41\) # (!\add4toPC|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~46_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~41\,
	combout => \AddPC4andExtSin|Add0~42_combout\,
	cout => \AddPC4andExtSin|Add0~43\);

-- Location: LCCOMB_X1_Y9_N4
\MuxProxPC|X[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[25]~24_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & (\AddPC4andExtSin|Add0~42_combout\)) # (!\AndBEQ~combout\ & ((\add4toPC|Add0~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AndBEQ~combout\,
	datab => \mux_PC~input_o\,
	datac => \AddPC4andExtSin|Add0~42_combout\,
	datad => \add4toPC|Add0~46_combout\,
	combout => \MuxProxPC|X[25]~24_combout\);

-- Location: DDIOOUTCELL_X0_Y9_N18
\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[25]~24_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

-- Location: LCCOMB_X1_Y14_N28
\PC|DOUT[26]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[26]~_Duplicate_1feeder_combout\ = \MuxProxPC|X[26]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxProxPC|X[26]~25_combout\,
	combout => \PC|DOUT[26]~_Duplicate_1feeder_combout\);

-- Location: FF_X1_Y14_N29
\PC|DOUT[26]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|DOUT[26]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[26]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N18
\add4toPC|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~48_combout\ = (\PC|DOUT[26]~_Duplicate_1_q\ & (\add4toPC|Add0~47\ $ (GND))) # (!\PC|DOUT[26]~_Duplicate_1_q\ & (!\add4toPC|Add0~47\ & VCC))
-- \add4toPC|Add0~49\ = CARRY((\PC|DOUT[26]~_Duplicate_1_q\ & !\add4toPC|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[26]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~47\,
	combout => \add4toPC|Add0~48_combout\,
	cout => \add4toPC|Add0~49\);

-- Location: LCCOMB_X2_Y13_N16
\AddPC4andExtSin|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~44_combout\ = (\add4toPC|Add0~48_combout\ & (\AddPC4andExtSin|Add0~43\ $ (GND))) # (!\add4toPC|Add0~48_combout\ & (!\AddPC4andExtSin|Add0~43\ & VCC))
-- \AddPC4andExtSin|Add0~45\ = CARRY((\add4toPC|Add0~48_combout\ & !\AddPC4andExtSin|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~48_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~43\,
	combout => \AddPC4andExtSin|Add0~44_combout\,
	cout => \AddPC4andExtSin|Add0~45\);

-- Location: LCCOMB_X1_Y14_N12
\MuxProxPC|X[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[26]~25_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~44_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AndBEQ~combout\,
	datab => \mux_PC~input_o\,
	datac => \add4toPC|Add0~48_combout\,
	datad => \AddPC4andExtSin|Add0~44_combout\,
	combout => \MuxProxPC|X[26]~25_combout\);

-- Location: DDIOOUTCELL_X0_Y14_N11
\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[26]~25_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

-- Location: LCCOMB_X1_Y16_N24
\PC|DOUT[27]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[27]~_Duplicate_1feeder_combout\ = \MuxProxPC|X[27]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxProxPC|X[27]~26_combout\,
	combout => \PC|DOUT[27]~_Duplicate_1feeder_combout\);

-- Location: FF_X1_Y16_N25
\PC|DOUT[27]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|DOUT[27]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[27]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N20
\add4toPC|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~50_combout\ = (\PC|DOUT[27]~_Duplicate_1_q\ & (!\add4toPC|Add0~49\)) # (!\PC|DOUT[27]~_Duplicate_1_q\ & ((\add4toPC|Add0~49\) # (GND)))
-- \add4toPC|Add0~51\ = CARRY((!\add4toPC|Add0~49\) # (!\PC|DOUT[27]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[27]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~49\,
	combout => \add4toPC|Add0~50_combout\,
	cout => \add4toPC|Add0~51\);

-- Location: LCCOMB_X2_Y13_N18
\AddPC4andExtSin|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~46_combout\ = (\add4toPC|Add0~50_combout\ & (!\AddPC4andExtSin|Add0~45\)) # (!\add4toPC|Add0~50_combout\ & ((\AddPC4andExtSin|Add0~45\) # (GND)))
-- \AddPC4andExtSin|Add0~47\ = CARRY((!\AddPC4andExtSin|Add0~45\) # (!\add4toPC|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~50_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~45\,
	combout => \AddPC4andExtSin|Add0~46_combout\,
	cout => \AddPC4andExtSin|Add0~47\);

-- Location: LCCOMB_X1_Y16_N14
\MuxProxPC|X[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[27]~26_combout\ = (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~46_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_PC~input_o\,
	datab => \AndBEQ~combout\,
	datac => \add4toPC|Add0~50_combout\,
	datad => \AddPC4andExtSin|Add0~46_combout\,
	combout => \MuxProxPC|X[27]~26_combout\);

-- Location: DDIOOUTCELL_X0_Y16_N18
\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[27]~26_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

-- Location: FF_X1_Y13_N17
\PC|DOUT[28]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[28]~27_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[28]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N22
\add4toPC|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~52_combout\ = (\PC|DOUT[28]~_Duplicate_1_q\ & (\add4toPC|Add0~51\ $ (GND))) # (!\PC|DOUT[28]~_Duplicate_1_q\ & (!\add4toPC|Add0~51\ & VCC))
-- \add4toPC|Add0~53\ = CARRY((\PC|DOUT[28]~_Duplicate_1_q\ & !\add4toPC|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[28]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~51\,
	combout => \add4toPC|Add0~52_combout\,
	cout => \add4toPC|Add0~53\);

-- Location: LCCOMB_X2_Y13_N20
\AddPC4andExtSin|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~48_combout\ = (\add4toPC|Add0~52_combout\ & (\AddPC4andExtSin|Add0~47\ $ (GND))) # (!\add4toPC|Add0~52_combout\ & (!\AddPC4andExtSin|Add0~47\ & VCC))
-- \AddPC4andExtSin|Add0~49\ = CARRY((\add4toPC|Add0~52_combout\ & !\AddPC4andExtSin|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~52_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~47\,
	combout => \AddPC4andExtSin|Add0~48_combout\,
	cout => \AddPC4andExtSin|Add0~49\);

-- Location: LCCOMB_X1_Y13_N30
\MuxProxPC|X[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[28]~27_combout\ = (\AndBEQ~combout\ & ((\mux_PC~input_o\ & ((\add4toPC|Add0~52_combout\))) # (!\mux_PC~input_o\ & (\AddPC4andExtSin|Add0~48_combout\)))) # (!\AndBEQ~combout\ & (((\add4toPC|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AndBEQ~combout\,
	datab => \mux_PC~input_o\,
	datac => \AddPC4andExtSin|Add0~48_combout\,
	datad => \add4toPC|Add0~52_combout\,
	combout => \MuxProxPC|X[28]~27_combout\);

-- Location: DDIOOUTCELL_X0_Y13_N4
\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[28]~27_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

-- Location: FF_X1_Y17_N29
\PC|DOUT[29]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MuxProxPC|X[29]~28_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[29]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N24
\add4toPC|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~54_combout\ = (\PC|DOUT[29]~_Duplicate_1_q\ & (!\add4toPC|Add0~53\)) # (!\PC|DOUT[29]~_Duplicate_1_q\ & ((\add4toPC|Add0~53\) # (GND)))
-- \add4toPC|Add0~55\ = CARRY((!\add4toPC|Add0~53\) # (!\PC|DOUT[29]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[29]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~53\,
	combout => \add4toPC|Add0~54_combout\,
	cout => \add4toPC|Add0~55\);

-- Location: LCCOMB_X2_Y13_N22
\AddPC4andExtSin|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~50_combout\ = (\add4toPC|Add0~54_combout\ & (!\AddPC4andExtSin|Add0~49\)) # (!\add4toPC|Add0~54_combout\ & ((\AddPC4andExtSin|Add0~49\) # (GND)))
-- \AddPC4andExtSin|Add0~51\ = CARRY((!\AddPC4andExtSin|Add0~49\) # (!\add4toPC|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~54_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~49\,
	combout => \AddPC4andExtSin|Add0~50_combout\,
	cout => \AddPC4andExtSin|Add0~51\);

-- Location: LCCOMB_X1_Y17_N14
\MuxProxPC|X[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[29]~28_combout\ = (\mux_PC~input_o\ & (\add4toPC|Add0~54_combout\)) # (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~50_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~54_combout\,
	datab => \mux_PC~input_o\,
	datac => \AndBEQ~combout\,
	datad => \AddPC4andExtSin|Add0~50_combout\,
	combout => \MuxProxPC|X[29]~28_combout\);

-- Location: DDIOOUTCELL_X0_Y17_N18
\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[29]~28_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

-- Location: LCCOMB_X1_Y10_N28
\PC|DOUT[30]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[30]~_Duplicate_1feeder_combout\ = \MuxProxPC|X[30]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxProxPC|X[30]~29_combout\,
	combout => \PC|DOUT[30]~_Duplicate_1feeder_combout\);

-- Location: FF_X1_Y10_N29
\PC|DOUT[30]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|DOUT[30]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[30]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N26
\add4toPC|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~56_combout\ = (\PC|DOUT[30]~_Duplicate_1_q\ & (\add4toPC|Add0~55\ $ (GND))) # (!\PC|DOUT[30]~_Duplicate_1_q\ & (!\add4toPC|Add0~55\ & VCC))
-- \add4toPC|Add0~57\ = CARRY((\PC|DOUT[30]~_Duplicate_1_q\ & !\add4toPC|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[30]~_Duplicate_1_q\,
	datad => VCC,
	cin => \add4toPC|Add0~55\,
	combout => \add4toPC|Add0~56_combout\,
	cout => \add4toPC|Add0~57\);

-- Location: LCCOMB_X2_Y13_N24
\AddPC4andExtSin|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~52_combout\ = (\add4toPC|Add0~56_combout\ & (\AddPC4andExtSin|Add0~51\ $ (GND))) # (!\add4toPC|Add0~56_combout\ & (!\AddPC4andExtSin|Add0~51\ & VCC))
-- \AddPC4andExtSin|Add0~53\ = CARRY((\add4toPC|Add0~56_combout\ & !\AddPC4andExtSin|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~56_combout\,
	datad => VCC,
	cin => \AddPC4andExtSin|Add0~51\,
	combout => \AddPC4andExtSin|Add0~52_combout\,
	cout => \AddPC4andExtSin|Add0~53\);

-- Location: LCCOMB_X1_Y10_N6
\MuxProxPC|X[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[30]~29_combout\ = (\AndBEQ~combout\ & ((\mux_PC~input_o\ & (\add4toPC|Add0~56_combout\)) # (!\mux_PC~input_o\ & ((\AddPC4andExtSin|Add0~52_combout\))))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AndBEQ~combout\,
	datab => \add4toPC|Add0~56_combout\,
	datac => \mux_PC~input_o\,
	datad => \AddPC4andExtSin|Add0~52_combout\,
	combout => \MuxProxPC|X[30]~29_combout\);

-- Location: DDIOOUTCELL_X0_Y10_N25
\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[30]~29_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

-- Location: FF_X1_Y12_N17
\PC|DOUT[31]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[31]~30_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[31]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y13_N28
\add4toPC|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \add4toPC|Add0~58_combout\ = \add4toPC|Add0~57\ $ (\PC|DOUT[31]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT[31]~_Duplicate_1_q\,
	cin => \add4toPC|Add0~57\,
	combout => \add4toPC|Add0~58_combout\);

-- Location: LCCOMB_X2_Y13_N26
\AddPC4andExtSin|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \AddPC4andExtSin|Add0~54_combout\ = \AddPC4andExtSin|Add0~53\ $ (\add4toPC|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \add4toPC|Add0~58_combout\,
	cin => \AddPC4andExtSin|Add0~53\,
	combout => \AddPC4andExtSin|Add0~54_combout\);

-- Location: LCCOMB_X1_Y12_N16
\MuxProxPC|X[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxProxPC|X[31]~30_combout\ = (\mux_PC~input_o\ & (\add4toPC|Add0~58_combout\)) # (!\mux_PC~input_o\ & ((\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~54_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_PC~input_o\,
	datab => \add4toPC|Add0~58_combout\,
	datac => \AndBEQ~combout\,
	datad => \AddPC4andExtSin|Add0~54_combout\,
	combout => \MuxProxPC|X[31]~30_combout\);

-- Location: DDIOOUTCELL_X0_Y12_N25
\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MuxProxPC|X[31]~30_combout\,
	clrn => \ALT_INV_RST_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

-- Location: LCCOMB_X10_Y14_N14
\muxAntesULA|X[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxAntesULA|X[2]~0_combout\ = (!\PC|DOUT[2]~_Duplicate_1_q\ & (\mux_RtIm~input_o\ & \Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT[2]~_Duplicate_1_q\,
	datac => \mux_RtIm~input_o\,
	datad => \Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \muxAntesULA|X[2]~0_combout\);

-- Location: IOIBUF_X0_Y48_N1
\habLeituraMEM~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habLeituraMEM,
	o => \habLeituraMEM~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\habEscritaMEM~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habEscritaMEM,
	o => \habEscritaMEM~input_o\);

-- Location: LCCOMB_X10_Y14_N18
\Mem_dados|Memoria~1062\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mem_dados|Memoria~1062_combout\ = (!\ULAOPer[0]~input_o\ & (\Mem_Inst|MemoriaDeInstrucao~1_combout\ & (\mux_RtIm~input_o\ & !\ULAOPer[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAOPer[0]~input_o\,
	datab => \Mem_Inst|MemoriaDeInstrucao~1_combout\,
	datac => \mux_RtIm~input_o\,
	datad => \ULAOPer[1]~input_o\,
	combout => \Mem_dados|Memoria~1062_combout\);

-- Location: LCCOMB_X10_Y14_N8
\Mem_dados|Memoria~1063\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mem_dados|Memoria~1063_combout\ = (\Mem_dados|Memoria~70_q\) # ((\habEscritaMEM~input_o\ & (\Mem_dados|Memoria~1062_combout\ & !\ALU|opmux|X[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habEscritaMEM~input_o\,
	datab => \Mem_dados|Memoria~1062_combout\,
	datac => \Mem_dados|Memoria~70_q\,
	datad => \ALU|opmux|X[31]~1_combout\,
	combout => \Mem_dados|Memoria~1063_combout\);

-- Location: FF_X10_Y14_N9
\Mem_dados|Memoria~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mem_dados|Memoria~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_dados|Memoria~70_q\);

-- Location: LCCOMB_X10_Y14_N26
\Mem_dados|DadoLido[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mem_dados|DadoLido[0]~0_combout\ = (\habLeituraMEM~input_o\ & (\ALU|opmux|X[2]~0_combout\ & (!\Mem_dados|Memoria~70_q\ & !\ALU|opmux|X[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habLeituraMEM~input_o\,
	datab => \ALU|opmux|X[2]~0_combout\,
	datac => \Mem_dados|Memoria~70_q\,
	datad => \ALU|opmux|X[31]~1_combout\,
	combout => \Mem_dados|DadoLido[0]~0_combout\);

-- Location: LCCOMB_X10_Y14_N4
\Mem_dados|Memoria~1064\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mem_dados|Memoria~1064_combout\ = (\Mem_dados|Memoria~42_q\) # ((\habEscritaMEM~input_o\ & (!\ALU|opmux|X[2]~0_combout\ & !\ALU|opmux|X[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habEscritaMEM~input_o\,
	datab => \ALU|opmux|X[2]~0_combout\,
	datac => \Mem_dados|Memoria~42_q\,
	datad => \ALU|opmux|X[31]~1_combout\,
	combout => \Mem_dados|Memoria~1064_combout\);

-- Location: FF_X10_Y14_N5
\Mem_dados|Memoria~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mem_dados|Memoria~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_dados|Memoria~42_q\);

-- Location: LCCOMB_X10_Y14_N30
\Mem_dados|DadoLido[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mem_dados|DadoLido[4]~1_combout\ = (\habLeituraMEM~input_o\ & (!\ALU|opmux|X[2]~0_combout\ & (!\Mem_dados|Memoria~42_q\ & !\ALU|opmux|X[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habLeituraMEM~input_o\,
	datab => \ALU|opmux|X[2]~0_combout\,
	datac => \Mem_dados|Memoria~42_q\,
	datad => \ALU|opmux|X[31]~1_combout\,
	combout => \Mem_dados|DadoLido[4]~1_combout\);

-- Location: IOIBUF_X7_Y73_N15
\mux_ULAMem~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux_ULAMem,
	o => \mux_ULAMem~input_o\);

-- Location: LCCOMB_X10_Y14_N0
\muxDepoisULA|X[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxDepoisULA|X[0]~0_combout\ = (\Mem_dados|DadoLido[0]~0_combout\ & \mux_ULAMem~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_dados|DadoLido[0]~0_combout\,
	datac => \mux_ULAMem~input_o\,
	combout => \muxDepoisULA|X[0]~0_combout\);

-- Location: LCCOMB_X10_Y14_N2
\muxDepoisULA|X[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxDepoisULA|X[2]~1_combout\ = (!\mux_ULAMem~input_o\ & \ALU|opmux|X[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULAMem~input_o\,
	datad => \ALU|opmux|X[2]~0_combout\,
	combout => \muxDepoisULA|X[2]~1_combout\);

-- Location: LCCOMB_X11_Y72_N12
\muxDepoisULA|X[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxDepoisULA|X[9]~2_combout\ = (!\mux_ULAMem~input_o\ & \ALU|opmux|X[31]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULAMem~input_o\,
	datad => \ALU|opmux|X[31]~1_combout\,
	combout => \muxDepoisULA|X[9]~2_combout\);

-- Location: LCCOMB_X10_Y14_N24
\muxDepoisULA|X[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxDepoisULA|X[4]~3_combout\ = (\mux_ULAMem~input_o\ & (\Mem_dados|DadoLido[4]~1_combout\)) # (!\mux_ULAMem~input_o\ & ((\ALU|opmux|X[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_dados|DadoLido[4]~1_combout\,
	datac => \mux_ULAMem~input_o\,
	datad => \ALU|opmux|X[31]~1_combout\,
	combout => \muxDepoisULA|X[4]~3_combout\);

-- Location: LCCOMB_X3_Y15_N16
\MuxBEQ|X[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[5]~1_combout\ = (\BEQ~input_o\ & ((\ALU|opmux|X[2]~0_combout\ & ((\add4toPC|Add0~6_combout\))) # (!\ALU|opmux|X[2]~0_combout\ & (\AddPC4andExtSin|Add0~2_combout\)))) # (!\BEQ~input_o\ & (((\add4toPC|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddPC4andExtSin|Add0~2_combout\,
	datab => \add4toPC|Add0~6_combout\,
	datac => \BEQ~input_o\,
	datad => \ALU|opmux|X[2]~0_combout\,
	combout => \MuxBEQ|X[5]~1_combout\);

-- Location: LCCOMB_X1_Y15_N20
\MuxBEQ|X[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[6]~2_combout\ = (\ALU|opmux|X[2]~0_combout\ & (\add4toPC|Add0~8_combout\)) # (!\ALU|opmux|X[2]~0_combout\ & ((\BEQ~input_o\ & ((\AddPC4andExtSin|Add0~4_combout\))) # (!\BEQ~input_o\ & (\add4toPC|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~8_combout\,
	datab => \ALU|opmux|X[2]~0_combout\,
	datac => \BEQ~input_o\,
	datad => \AddPC4andExtSin|Add0~4_combout\,
	combout => \MuxBEQ|X[6]~2_combout\);

-- Location: LCCOMB_X3_Y15_N10
\MuxBEQ|X[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[7]~3_combout\ = (\BEQ~input_o\ & ((\ALU|opmux|X[2]~0_combout\ & (\add4toPC|Add0~10_combout\)) # (!\ALU|opmux|X[2]~0_combout\ & ((\AddPC4andExtSin|Add0~6_combout\))))) # (!\BEQ~input_o\ & (\add4toPC|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~10_combout\,
	datab => \AddPC4andExtSin|Add0~6_combout\,
	datac => \BEQ~input_o\,
	datad => \ALU|opmux|X[2]~0_combout\,
	combout => \MuxBEQ|X[7]~3_combout\);

-- Location: LCCOMB_X3_Y15_N8
\MuxBEQ|X[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[8]~4_combout\ = (\BEQ~input_o\ & ((\ALU|opmux|X[2]~0_combout\ & (\add4toPC|Add0~12_combout\)) # (!\ALU|opmux|X[2]~0_combout\ & ((\AddPC4andExtSin|Add0~8_combout\))))) # (!\BEQ~input_o\ & (\add4toPC|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~12_combout\,
	datab => \AddPC4andExtSin|Add0~8_combout\,
	datac => \BEQ~input_o\,
	datad => \ALU|opmux|X[2]~0_combout\,
	combout => \MuxBEQ|X[8]~4_combout\);

-- Location: LCCOMB_X3_Y15_N18
\MuxBEQ|X[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[9]~5_combout\ = (\BEQ~input_o\ & ((\ALU|opmux|X[2]~0_combout\ & (\add4toPC|Add0~14_combout\)) # (!\ALU|opmux|X[2]~0_combout\ & ((\AddPC4andExtSin|Add0~10_combout\))))) # (!\BEQ~input_o\ & (\add4toPC|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~14_combout\,
	datab => \AddPC4andExtSin|Add0~10_combout\,
	datac => \BEQ~input_o\,
	datad => \ALU|opmux|X[2]~0_combout\,
	combout => \MuxBEQ|X[9]~5_combout\);

-- Location: LCCOMB_X1_Y14_N2
\MuxBEQ|X[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[10]~6_combout\ = (\BEQ~input_o\ & ((\ALU|opmux|X[2]~0_combout\ & (\add4toPC|Add0~16_combout\)) # (!\ALU|opmux|X[2]~0_combout\ & ((\AddPC4andExtSin|Add0~12_combout\))))) # (!\BEQ~input_o\ & (\add4toPC|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~16_combout\,
	datab => \AddPC4andExtSin|Add0~12_combout\,
	datac => \BEQ~input_o\,
	datad => \ALU|opmux|X[2]~0_combout\,
	combout => \MuxBEQ|X[10]~6_combout\);

-- Location: LCCOMB_X1_Y15_N22
\MuxBEQ|X[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[11]~7_combout\ = (\ALU|opmux|X[2]~0_combout\ & (\add4toPC|Add0~18_combout\)) # (!\ALU|opmux|X[2]~0_combout\ & ((\BEQ~input_o\ & ((\AddPC4andExtSin|Add0~14_combout\))) # (!\BEQ~input_o\ & (\add4toPC|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~18_combout\,
	datab => \ALU|opmux|X[2]~0_combout\,
	datac => \BEQ~input_o\,
	datad => \AddPC4andExtSin|Add0~14_combout\,
	combout => \MuxBEQ|X[11]~7_combout\);

-- Location: LCCOMB_X1_Y15_N12
\MuxBEQ|X[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[12]~8_combout\ = (\ALU|opmux|X[2]~0_combout\ & (((\add4toPC|Add0~20_combout\)))) # (!\ALU|opmux|X[2]~0_combout\ & ((\BEQ~input_o\ & (\AddPC4andExtSin|Add0~16_combout\)) # (!\BEQ~input_o\ & ((\add4toPC|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddPC4andExtSin|Add0~16_combout\,
	datab => \ALU|opmux|X[2]~0_combout\,
	datac => \BEQ~input_o\,
	datad => \add4toPC|Add0~20_combout\,
	combout => \MuxBEQ|X[12]~8_combout\);

-- Location: LCCOMB_X1_Y15_N26
\MuxBEQ|X[13]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[13]~9_combout\ = (\ALU|opmux|X[2]~0_combout\ & (\add4toPC|Add0~22_combout\)) # (!\ALU|opmux|X[2]~0_combout\ & ((\BEQ~input_o\ & ((\AddPC4andExtSin|Add0~18_combout\))) # (!\BEQ~input_o\ & (\add4toPC|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~22_combout\,
	datab => \ALU|opmux|X[2]~0_combout\,
	datac => \BEQ~input_o\,
	datad => \AddPC4andExtSin|Add0~18_combout\,
	combout => \MuxBEQ|X[13]~9_combout\);

-- Location: LCCOMB_X1_Y14_N4
\MuxBEQ|X[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[14]~10_combout\ = (\ALU|opmux|X[2]~0_combout\ & (\add4toPC|Add0~24_combout\)) # (!\ALU|opmux|X[2]~0_combout\ & ((\BEQ~input_o\ & ((\AddPC4andExtSin|Add0~20_combout\))) # (!\BEQ~input_o\ & (\add4toPC|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|opmux|X[2]~0_combout\,
	datab => \add4toPC|Add0~24_combout\,
	datac => \BEQ~input_o\,
	datad => \AddPC4andExtSin|Add0~20_combout\,
	combout => \MuxBEQ|X[14]~10_combout\);

-- Location: LCCOMB_X1_Y15_N24
\MuxBEQ|X[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[15]~11_combout\ = (\ALU|opmux|X[2]~0_combout\ & (\add4toPC|Add0~26_combout\)) # (!\ALU|opmux|X[2]~0_combout\ & ((\BEQ~input_o\ & ((\AddPC4andExtSin|Add0~22_combout\))) # (!\BEQ~input_o\ & (\add4toPC|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~26_combout\,
	datab => \ALU|opmux|X[2]~0_combout\,
	datac => \BEQ~input_o\,
	datad => \AddPC4andExtSin|Add0~22_combout\,
	combout => \MuxBEQ|X[15]~11_combout\);

-- Location: LCCOMB_X3_Y15_N4
\MuxBEQ|X[16]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[16]~12_combout\ = (\BEQ~input_o\ & ((\ALU|opmux|X[2]~0_combout\ & ((\add4toPC|Add0~28_combout\))) # (!\ALU|opmux|X[2]~0_combout\ & (\AddPC4andExtSin|Add0~24_combout\)))) # (!\BEQ~input_o\ & (((\add4toPC|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddPC4andExtSin|Add0~24_combout\,
	datab => \add4toPC|Add0~28_combout\,
	datac => \BEQ~input_o\,
	datad => \ALU|opmux|X[2]~0_combout\,
	combout => \MuxBEQ|X[16]~12_combout\);

-- Location: LCCOMB_X1_Y15_N10
\MuxBEQ|X[17]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[17]~13_combout\ = (\ALU|opmux|X[2]~0_combout\ & (((\add4toPC|Add0~30_combout\)))) # (!\ALU|opmux|X[2]~0_combout\ & ((\BEQ~input_o\ & (\AddPC4andExtSin|Add0~26_combout\)) # (!\BEQ~input_o\ & ((\add4toPC|Add0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddPC4andExtSin|Add0~26_combout\,
	datab => \ALU|opmux|X[2]~0_combout\,
	datac => \BEQ~input_o\,
	datad => \add4toPC|Add0~30_combout\,
	combout => \MuxBEQ|X[17]~13_combout\);

-- Location: LCCOMB_X1_Y14_N10
\MuxBEQ|X[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[18]~14_combout\ = (\BEQ~input_o\ & ((\ALU|opmux|X[2]~0_combout\ & (\add4toPC|Add0~32_combout\)) # (!\ALU|opmux|X[2]~0_combout\ & ((\AddPC4andExtSin|Add0~28_combout\))))) # (!\BEQ~input_o\ & (\add4toPC|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~32_combout\,
	datab => \AddPC4andExtSin|Add0~28_combout\,
	datac => \BEQ~input_o\,
	datad => \ALU|opmux|X[2]~0_combout\,
	combout => \MuxBEQ|X[18]~14_combout\);

-- Location: LCCOMB_X1_Y15_N8
\MuxBEQ|X[19]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[19]~15_combout\ = (\BEQ~input_o\ & ((\ALU|opmux|X[2]~0_combout\ & ((\add4toPC|Add0~34_combout\))) # (!\ALU|opmux|X[2]~0_combout\ & (\AddPC4andExtSin|Add0~30_combout\)))) # (!\BEQ~input_o\ & (((\add4toPC|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddPC4andExtSin|Add0~30_combout\,
	datab => \add4toPC|Add0~34_combout\,
	datac => \BEQ~input_o\,
	datad => \ALU|opmux|X[2]~0_combout\,
	combout => \MuxBEQ|X[19]~15_combout\);

-- Location: LCCOMB_X1_Y13_N26
\MuxBEQ|X[20]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[20]~16_combout\ = (\BEQ~input_o\ & ((\ALU|opmux|X[2]~0_combout\ & ((\add4toPC|Add0~36_combout\))) # (!\ALU|opmux|X[2]~0_combout\ & (\AddPC4andExtSin|Add0~32_combout\)))) # (!\BEQ~input_o\ & (((\add4toPC|Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddPC4andExtSin|Add0~32_combout\,
	datab => \BEQ~input_o\,
	datac => \add4toPC|Add0~36_combout\,
	datad => \ALU|opmux|X[2]~0_combout\,
	combout => \MuxBEQ|X[20]~16_combout\);

-- Location: LCCOMB_X1_Y13_N20
\MuxBEQ|X[21]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[21]~17_combout\ = (\BEQ~input_o\ & ((\ALU|opmux|X[2]~0_combout\ & ((\add4toPC|Add0~38_combout\))) # (!\ALU|opmux|X[2]~0_combout\ & (\AddPC4andExtSin|Add0~34_combout\)))) # (!\BEQ~input_o\ & (((\add4toPC|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddPC4andExtSin|Add0~34_combout\,
	datab => \BEQ~input_o\,
	datac => \add4toPC|Add0~38_combout\,
	datad => \ALU|opmux|X[2]~0_combout\,
	combout => \MuxBEQ|X[21]~17_combout\);

-- Location: LCCOMB_X1_Y13_N6
\MuxBEQ|X[22]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[22]~18_combout\ = (\ALU|opmux|X[2]~0_combout\ & (\add4toPC|Add0~40_combout\)) # (!\ALU|opmux|X[2]~0_combout\ & ((\BEQ~input_o\ & ((\AddPC4andExtSin|Add0~36_combout\))) # (!\BEQ~input_o\ & (\add4toPC|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|opmux|X[2]~0_combout\,
	datab => \add4toPC|Add0~40_combout\,
	datac => \AddPC4andExtSin|Add0~36_combout\,
	datad => \BEQ~input_o\,
	combout => \MuxBEQ|X[22]~18_combout\);

-- Location: LCCOMB_X3_Y15_N22
\MuxBEQ|X[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[23]~19_combout\ = (\ALU|opmux|X[2]~0_combout\ & (((\add4toPC|Add0~42_combout\)))) # (!\ALU|opmux|X[2]~0_combout\ & ((\BEQ~input_o\ & (\AddPC4andExtSin|Add0~38_combout\)) # (!\BEQ~input_o\ & ((\add4toPC|Add0~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddPC4andExtSin|Add0~38_combout\,
	datab => \ALU|opmux|X[2]~0_combout\,
	datac => \BEQ~input_o\,
	datad => \add4toPC|Add0~42_combout\,
	combout => \MuxBEQ|X[23]~19_combout\);

-- Location: LCCOMB_X1_Y11_N18
\MuxBEQ|X[24]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[24]~20_combout\ = (\AndBEQ~combout\ & (\AddPC4andExtSin|Add0~40_combout\)) # (!\AndBEQ~combout\ & ((\add4toPC|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddPC4andExtSin|Add0~40_combout\,
	datac => \add4toPC|Add0~44_combout\,
	datad => \AndBEQ~combout\,
	combout => \MuxBEQ|X[24]~20_combout\);

-- Location: LCCOMB_X3_Y1_N28
\MuxBEQ|X[25]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[25]~21_combout\ = (\AndBEQ~combout\ & (\AddPC4andExtSin|Add0~42_combout\)) # (!\AndBEQ~combout\ & ((\add4toPC|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddPC4andExtSin|Add0~42_combout\,
	datab => \add4toPC|Add0~46_combout\,
	datad => \AndBEQ~combout\,
	combout => \MuxBEQ|X[25]~21_combout\);

-- Location: LCCOMB_X1_Y14_N0
\MuxBEQ|X[26]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[26]~22_combout\ = (\AndBEQ~combout\ & (\AddPC4andExtSin|Add0~44_combout\)) # (!\AndBEQ~combout\ & ((\add4toPC|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddPC4andExtSin|Add0~44_combout\,
	datac => \add4toPC|Add0~48_combout\,
	datad => \AndBEQ~combout\,
	combout => \MuxBEQ|X[26]~22_combout\);

-- Location: LCCOMB_X1_Y16_N18
\MuxBEQ|X[27]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[27]~23_combout\ = (\AndBEQ~combout\ & (\AddPC4andExtSin|Add0~46_combout\)) # (!\AndBEQ~combout\ & ((\add4toPC|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddPC4andExtSin|Add0~46_combout\,
	datac => \add4toPC|Add0~50_combout\,
	datad => \AndBEQ~combout\,
	combout => \MuxBEQ|X[27]~23_combout\);

-- Location: LCCOMB_X1_Y13_N16
\MuxBEQ|X[28]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[28]~24_combout\ = (\AndBEQ~combout\ & (\AddPC4andExtSin|Add0~48_combout\)) # (!\AndBEQ~combout\ & ((\add4toPC|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AndBEQ~combout\,
	datab => \AddPC4andExtSin|Add0~48_combout\,
	datad => \add4toPC|Add0~52_combout\,
	combout => \MuxBEQ|X[28]~24_combout\);

-- Location: LCCOMB_X1_Y17_N28
\MuxBEQ|X[29]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[29]~25_combout\ = (\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~50_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4toPC|Add0~54_combout\,
	datab => \AndBEQ~combout\,
	datad => \AddPC4andExtSin|Add0~50_combout\,
	combout => \MuxBEQ|X[29]~25_combout\);

-- Location: LCCOMB_X1_Y10_N22
\MuxBEQ|X[30]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[30]~26_combout\ = (\AndBEQ~combout\ & (\AddPC4andExtSin|Add0~52_combout\)) # (!\AndBEQ~combout\ & ((\add4toPC|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AndBEQ~combout\,
	datab => \AddPC4andExtSin|Add0~52_combout\,
	datad => \add4toPC|Add0~56_combout\,
	combout => \MuxBEQ|X[30]~26_combout\);

-- Location: LCCOMB_X1_Y12_N26
\MuxBEQ|X[31]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxBEQ|X[31]~27_combout\ = (\AndBEQ~combout\ & ((\AddPC4andExtSin|Add0~54_combout\))) # (!\AndBEQ~combout\ & (\add4toPC|Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add4toPC|Add0~58_combout\,
	datac => \AndBEQ~combout\,
	datad => \AddPC4andExtSin|Add0~54_combout\,
	combout => \MuxBEQ|X[31]~27_combout\);

-- Location: IOIBUF_X0_Y60_N15
\Mux_RtRd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mux_RtRd,
	o => \Mux_RtRd~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\habEscritaReg~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habEscritaReg,
	o => \habEscritaReg~input_o\);

ww_habEscritaDisplay <= \habEscritaDisplay~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_A(8) <= \A[8]~output_o\;

ww_A(9) <= \A[9]~output_o\;

ww_A(10) <= \A[10]~output_o\;

ww_A(11) <= \A[11]~output_o\;

ww_A(12) <= \A[12]~output_o\;

ww_A(13) <= \A[13]~output_o\;

ww_A(14) <= \A[14]~output_o\;

ww_A(15) <= \A[15]~output_o\;

ww_A(16) <= \A[16]~output_o\;

ww_A(17) <= \A[17]~output_o\;

ww_A(18) <= \A[18]~output_o\;

ww_A(19) <= \A[19]~output_o\;

ww_A(20) <= \A[20]~output_o\;

ww_A(21) <= \A[21]~output_o\;

ww_A(22) <= \A[22]~output_o\;

ww_A(23) <= \A[23]~output_o\;

ww_A(24) <= \A[24]~output_o\;

ww_A(25) <= \A[25]~output_o\;

ww_A(26) <= \A[26]~output_o\;

ww_A(27) <= \A[27]~output_o\;

ww_A(28) <= \A[28]~output_o\;

ww_A(29) <= \A[29]~output_o\;

ww_A(30) <= \A[30]~output_o\;

ww_A(31) <= \A[31]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_B(4) <= \B[4]~output_o\;

ww_B(5) <= \B[5]~output_o\;

ww_B(6) <= \B[6]~output_o\;

ww_B(7) <= \B[7]~output_o\;

ww_B(8) <= \B[8]~output_o\;

ww_B(9) <= \B[9]~output_o\;

ww_B(10) <= \B[10]~output_o\;

ww_B(11) <= \B[11]~output_o\;

ww_B(12) <= \B[12]~output_o\;

ww_B(13) <= \B[13]~output_o\;

ww_B(14) <= \B[14]~output_o\;

ww_B(15) <= \B[15]~output_o\;

ww_B(16) <= \B[16]~output_o\;

ww_B(17) <= \B[17]~output_o\;

ww_B(18) <= \B[18]~output_o\;

ww_B(19) <= \B[19]~output_o\;

ww_B(20) <= \B[20]~output_o\;

ww_B(21) <= \B[21]~output_o\;

ww_B(22) <= \B[22]~output_o\;

ww_B(23) <= \B[23]~output_o\;

ww_B(24) <= \B[24]~output_o\;

ww_B(25) <= \B[25]~output_o\;

ww_B(26) <= \B[26]~output_o\;

ww_B(27) <= \B[27]~output_o\;

ww_B(28) <= \B[28]~output_o\;

ww_B(29) <= \B[29]~output_o\;

ww_B(30) <= \B[30]~output_o\;

ww_B(31) <= \B[31]~output_o\;

ww_I(0) <= \I[0]~output_o\;

ww_I(1) <= \I[1]~output_o\;

ww_I(2) <= \I[2]~output_o\;

ww_I(3) <= \I[3]~output_o\;

ww_I(4) <= \I[4]~output_o\;

ww_I(5) <= \I[5]~output_o\;

ww_I(6) <= \I[6]~output_o\;

ww_I(7) <= \I[7]~output_o\;

ww_I(8) <= \I[8]~output_o\;

ww_I(9) <= \I[9]~output_o\;

ww_I(10) <= \I[10]~output_o\;

ww_I(11) <= \I[11]~output_o\;

ww_I(12) <= \I[12]~output_o\;

ww_I(13) <= \I[13]~output_o\;

ww_I(14) <= \I[14]~output_o\;

ww_I(15) <= \I[15]~output_o\;

ww_I(16) <= \I[16]~output_o\;

ww_I(17) <= \I[17]~output_o\;

ww_I(18) <= \I[18]~output_o\;

ww_I(19) <= \I[19]~output_o\;

ww_I(20) <= \I[20]~output_o\;

ww_I(21) <= \I[21]~output_o\;

ww_I(22) <= \I[22]~output_o\;

ww_I(23) <= \I[23]~output_o\;

ww_I(24) <= \I[24]~output_o\;

ww_I(25) <= \I[25]~output_o\;

ww_I(26) <= \I[26]~output_o\;

ww_I(27) <= \I[27]~output_o\;

ww_I(28) <= \I[28]~output_o\;

ww_I(29) <= \I[29]~output_o\;

ww_I(30) <= \I[30]~output_o\;

ww_I(31) <= \I[31]~output_o\;

ww_J(0) <= \J[0]~output_o\;

ww_J(1) <= \J[1]~output_o\;

ww_J(2) <= \J[2]~output_o\;

ww_J(3) <= \J[3]~output_o\;

ww_J(4) <= \J[4]~output_o\;

ww_J(5) <= \J[5]~output_o\;

ww_J(6) <= \J[6]~output_o\;

ww_J(7) <= \J[7]~output_o\;

ww_J(8) <= \J[8]~output_o\;

ww_J(9) <= \J[9]~output_o\;

ww_J(10) <= \J[10]~output_o\;

ww_J(11) <= \J[11]~output_o\;

ww_J(12) <= \J[12]~output_o\;

ww_J(13) <= \J[13]~output_o\;

ww_J(14) <= \J[14]~output_o\;

ww_J(15) <= \J[15]~output_o\;

ww_J(16) <= \J[16]~output_o\;

ww_J(17) <= \J[17]~output_o\;

ww_J(18) <= \J[18]~output_o\;

ww_J(19) <= \J[19]~output_o\;

ww_J(20) <= \J[20]~output_o\;

ww_J(21) <= \J[21]~output_o\;

ww_J(22) <= \J[22]~output_o\;

ww_J(23) <= \J[23]~output_o\;

ww_J(24) <= \J[24]~output_o\;

ww_J(25) <= \J[25]~output_o\;

ww_J(26) <= \J[26]~output_o\;

ww_J(27) <= \J[27]~output_o\;

ww_J(28) <= \J[28]~output_o\;

ww_J(29) <= \J[29]~output_o\;

ww_J(30) <= \J[30]~output_o\;

ww_J(31) <= \J[31]~output_o\;

ww_L(0) <= \L[0]~output_o\;

ww_L(1) <= \L[1]~output_o\;

ww_L(2) <= \L[2]~output_o\;

ww_L(3) <= \L[3]~output_o\;

ww_L(4) <= \L[4]~output_o\;

ww_L(5) <= \L[5]~output_o\;

ww_L(6) <= \L[6]~output_o\;

ww_L(7) <= \L[7]~output_o\;

ww_L(8) <= \L[8]~output_o\;

ww_L(9) <= \L[9]~output_o\;

ww_L(10) <= \L[10]~output_o\;

ww_L(11) <= \L[11]~output_o\;

ww_L(12) <= \L[12]~output_o\;

ww_L(13) <= \L[13]~output_o\;

ww_L(14) <= \L[14]~output_o\;

ww_L(15) <= \L[15]~output_o\;

ww_L(16) <= \L[16]~output_o\;

ww_L(17) <= \L[17]~output_o\;

ww_L(18) <= \L[18]~output_o\;

ww_L(19) <= \L[19]~output_o\;

ww_L(20) <= \L[20]~output_o\;

ww_L(21) <= \L[21]~output_o\;

ww_L(22) <= \L[22]~output_o\;

ww_L(23) <= \L[23]~output_o\;

ww_L(24) <= \L[24]~output_o\;

ww_L(25) <= \L[25]~output_o\;

ww_L(26) <= \L[26]~output_o\;

ww_L(27) <= \L[27]~output_o\;

ww_L(28) <= \L[28]~output_o\;

ww_L(29) <= \L[29]~output_o\;

ww_L(30) <= \L[30]~output_o\;

ww_L(31) <= \L[31]~output_o\;

ww_M(0) <= \M[0]~output_o\;

ww_M(1) <= \M[1]~output_o\;

ww_M(2) <= \M[2]~output_o\;

ww_M(3) <= \M[3]~output_o\;

ww_M(4) <= \M[4]~output_o\;

ww_M(5) <= \M[5]~output_o\;

ww_M(6) <= \M[6]~output_o\;

ww_M(7) <= \M[7]~output_o\;

ww_M(8) <= \M[8]~output_o\;

ww_M(9) <= \M[9]~output_o\;

ww_M(10) <= \M[10]~output_o\;

ww_M(11) <= \M[11]~output_o\;

ww_M(12) <= \M[12]~output_o\;

ww_M(13) <= \M[13]~output_o\;

ww_M(14) <= \M[14]~output_o\;

ww_M(15) <= \M[15]~output_o\;

ww_M(16) <= \M[16]~output_o\;

ww_M(17) <= \M[17]~output_o\;

ww_M(18) <= \M[18]~output_o\;

ww_M(19) <= \M[19]~output_o\;

ww_M(20) <= \M[20]~output_o\;

ww_M(21) <= \M[21]~output_o\;

ww_M(22) <= \M[22]~output_o\;

ww_M(23) <= \M[23]~output_o\;

ww_M(24) <= \M[24]~output_o\;

ww_M(25) <= \M[25]~output_o\;

ww_M(26) <= \M[26]~output_o\;

ww_M(27) <= \M[27]~output_o\;

ww_M(28) <= \M[28]~output_o\;

ww_M(29) <= \M[29]~output_o\;

ww_M(30) <= \M[30]~output_o\;

ww_M(31) <= \M[31]~output_o\;

ww_N(0) <= \N[0]~output_o\;

ww_N(1) <= \N[1]~output_o\;

ww_N(2) <= \N[2]~output_o\;

ww_N(3) <= \N[3]~output_o\;

ww_N(4) <= \N[4]~output_o\;

ww_N(5) <= \N[5]~output_o\;

ww_N(6) <= \N[6]~output_o\;

ww_N(7) <= \N[7]~output_o\;

ww_N(8) <= \N[8]~output_o\;

ww_N(9) <= \N[9]~output_o\;

ww_N(10) <= \N[10]~output_o\;

ww_N(11) <= \N[11]~output_o\;

ww_N(12) <= \N[12]~output_o\;

ww_N(13) <= \N[13]~output_o\;

ww_N(14) <= \N[14]~output_o\;

ww_N(15) <= \N[15]~output_o\;

ww_N(16) <= \N[16]~output_o\;

ww_N(17) <= \N[17]~output_o\;

ww_N(18) <= \N[18]~output_o\;

ww_N(19) <= \N[19]~output_o\;

ww_N(20) <= \N[20]~output_o\;

ww_N(21) <= \N[21]~output_o\;

ww_N(22) <= \N[22]~output_o\;

ww_N(23) <= \N[23]~output_o\;

ww_N(24) <= \N[24]~output_o\;

ww_N(25) <= \N[25]~output_o\;

ww_N(26) <= \N[26]~output_o\;

ww_N(27) <= \N[27]~output_o\;

ww_N(28) <= \N[28]~output_o\;

ww_N(29) <= \N[29]~output_o\;

ww_N(30) <= \N[30]~output_o\;

ww_N(31) <= \N[31]~output_o\;

ww_O(0) <= \O[0]~output_o\;

ww_O(1) <= \O[1]~output_o\;

ww_O(2) <= \O[2]~output_o\;

ww_O(3) <= \O[3]~output_o\;

ww_O(4) <= \O[4]~output_o\;

ww_O(5) <= \O[5]~output_o\;

ww_O(6) <= \O[6]~output_o\;

ww_O(7) <= \O[7]~output_o\;

ww_O(8) <= \O[8]~output_o\;

ww_O(9) <= \O[9]~output_o\;

ww_O(10) <= \O[10]~output_o\;

ww_O(11) <= \O[11]~output_o\;

ww_O(12) <= \O[12]~output_o\;

ww_O(13) <= \O[13]~output_o\;

ww_O(14) <= \O[14]~output_o\;

ww_O(15) <= \O[15]~output_o\;

ww_O(16) <= \O[16]~output_o\;

ww_O(17) <= \O[17]~output_o\;

ww_O(18) <= \O[18]~output_o\;

ww_O(19) <= \O[19]~output_o\;

ww_O(20) <= \O[20]~output_o\;

ww_O(21) <= \O[21]~output_o\;

ww_O(22) <= \O[22]~output_o\;

ww_O(23) <= \O[23]~output_o\;

ww_O(24) <= \O[24]~output_o\;

ww_O(25) <= \O[25]~output_o\;

ww_O(26) <= \O[26]~output_o\;

ww_O(27) <= \O[27]~output_o\;

ww_O(28) <= \O[28]~output_o\;

ww_O(29) <= \O[29]~output_o\;

ww_O(30) <= \O[30]~output_o\;

ww_O(31) <= \O[31]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(8) <= \Q[8]~output_o\;

ww_Q(9) <= \Q[9]~output_o\;

ww_Q(10) <= \Q[10]~output_o\;

ww_Q(11) <= \Q[11]~output_o\;

ww_Q(12) <= \Q[12]~output_o\;

ww_Q(13) <= \Q[13]~output_o\;

ww_Q(14) <= \Q[14]~output_o\;

ww_Q(15) <= \Q[15]~output_o\;

ww_Q(16) <= \Q[16]~output_o\;

ww_Q(17) <= \Q[17]~output_o\;

ww_Q(18) <= \Q[18]~output_o\;

ww_Q(19) <= \Q[19]~output_o\;

ww_Q(20) <= \Q[20]~output_o\;

ww_Q(21) <= \Q[21]~output_o\;

ww_Q(22) <= \Q[22]~output_o\;

ww_Q(23) <= \Q[23]~output_o\;

ww_Q(24) <= \Q[24]~output_o\;

ww_Q(25) <= \Q[25]~output_o\;

ww_Q(26) <= \Q[26]~output_o\;

ww_Q(27) <= \Q[27]~output_o\;

ww_Q(28) <= \Q[28]~output_o\;

ww_Q(29) <= \Q[29]~output_o\;

ww_Q(30) <= \Q[30]~output_o\;

ww_Q(31) <= \Q[31]~output_o\;

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_R(4) <= \R[4]~output_o\;

ww_R(5) <= \R[5]~output_o\;

ww_R(6) <= \R[6]~output_o\;

ww_R(7) <= \R[7]~output_o\;

ww_R(8) <= \R[8]~output_o\;

ww_R(9) <= \R[9]~output_o\;

ww_R(10) <= \R[10]~output_o\;

ww_R(11) <= \R[11]~output_o\;

ww_R(12) <= \R[12]~output_o\;

ww_R(13) <= \R[13]~output_o\;

ww_R(14) <= \R[14]~output_o\;

ww_R(15) <= \R[15]~output_o\;

ww_R(16) <= \R[16]~output_o\;

ww_R(17) <= \R[17]~output_o\;

ww_R(18) <= \R[18]~output_o\;

ww_R(19) <= \R[19]~output_o\;

ww_R(20) <= \R[20]~output_o\;

ww_R(21) <= \R[21]~output_o\;

ww_R(22) <= \R[22]~output_o\;

ww_R(23) <= \R[23]~output_o\;

ww_R(24) <= \R[24]~output_o\;

ww_R(25) <= \R[25]~output_o\;

ww_R(26) <= \R[26]~output_o\;

ww_R(27) <= \R[27]~output_o\;

ww_R(28) <= \R[28]~output_o\;

ww_R(29) <= \R[29]~output_o\;

ww_R(30) <= \R[30]~output_o\;

ww_R(31) <= \R[31]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_S(16) <= \S[16]~output_o\;

ww_S(17) <= \S[17]~output_o\;

ww_S(18) <= \S[18]~output_o\;

ww_S(19) <= \S[19]~output_o\;

ww_S(20) <= \S[20]~output_o\;

ww_S(21) <= \S[21]~output_o\;

ww_S(22) <= \S[22]~output_o\;

ww_S(23) <= \S[23]~output_o\;

ww_S(24) <= \S[24]~output_o\;

ww_S(25) <= \S[25]~output_o\;

ww_S(26) <= \S[26]~output_o\;

ww_S(27) <= \S[27]~output_o\;

ww_S(28) <= \S[28]~output_o\;

ww_S(29) <= \S[29]~output_o\;

ww_S(30) <= \S[30]~output_o\;

ww_S(31) <= \S[31]~output_o\;

ww_V(0) <= \V[0]~output_o\;

ww_V(1) <= \V[1]~output_o\;

ww_V(2) <= \V[2]~output_o\;

ww_V(3) <= \V[3]~output_o\;

ww_V(4) <= \V[4]~output_o\;

ww_V(5) <= \V[5]~output_o\;

ww_V(6) <= \V[6]~output_o\;

ww_V(7) <= \V[7]~output_o\;

ww_V(8) <= \V[8]~output_o\;

ww_V(9) <= \V[9]~output_o\;

ww_V(10) <= \V[10]~output_o\;

ww_V(11) <= \V[11]~output_o\;

ww_V(12) <= \V[12]~output_o\;

ww_V(13) <= \V[13]~output_o\;

ww_V(14) <= \V[14]~output_o\;

ww_V(15) <= \V[15]~output_o\;

ww_V(16) <= \V[16]~output_o\;

ww_V(17) <= \V[17]~output_o\;

ww_V(18) <= \V[18]~output_o\;

ww_V(19) <= \V[19]~output_o\;

ww_V(20) <= \V[20]~output_o\;

ww_V(21) <= \V[21]~output_o\;

ww_V(22) <= \V[22]~output_o\;

ww_V(23) <= \V[23]~output_o\;

ww_V(24) <= \V[24]~output_o\;

ww_V(25) <= \V[25]~output_o\;

ww_V(26) <= \V[26]~output_o\;

ww_V(27) <= \V[27]~output_o\;

ww_V(28) <= \V[28]~output_o\;

ww_V(29) <= \V[29]~output_o\;

ww_V(30) <= \V[30]~output_o\;

ww_V(31) <= \V[31]~output_o\;

ww_W(0) <= \W[0]~output_o\;

ww_W(1) <= \W[1]~output_o\;

ww_W(2) <= \W[2]~output_o\;

ww_W(3) <= \W[3]~output_o\;

ww_W(4) <= \W[4]~output_o\;

ww_W(5) <= \W[5]~output_o\;

ww_W(6) <= \W[6]~output_o\;

ww_W(7) <= \W[7]~output_o\;

ww_W(8) <= \W[8]~output_o\;

ww_W(9) <= \W[9]~output_o\;

ww_W(10) <= \W[10]~output_o\;

ww_W(11) <= \W[11]~output_o\;

ww_W(12) <= \W[12]~output_o\;

ww_W(13) <= \W[13]~output_o\;

ww_W(14) <= \W[14]~output_o\;

ww_W(15) <= \W[15]~output_o\;

ww_W(16) <= \W[16]~output_o\;

ww_W(17) <= \W[17]~output_o\;

ww_W(18) <= \W[18]~output_o\;

ww_W(19) <= \W[19]~output_o\;

ww_W(20) <= \W[20]~output_o\;

ww_W(21) <= \W[21]~output_o\;

ww_W(22) <= \W[22]~output_o\;

ww_W(23) <= \W[23]~output_o\;

ww_W(24) <= \W[24]~output_o\;

ww_W(25) <= \W[25]~output_o\;

ww_W(26) <= \W[26]~output_o\;

ww_W(27) <= \W[27]~output_o\;

ww_W(28) <= \W[28]~output_o\;

ww_W(29) <= \W[29]~output_o\;

ww_W(30) <= \W[30]~output_o\;

ww_W(31) <= \W[31]~output_o\;

ww_D(0) <= \D[0]~output_o\;

ww_D(1) <= \D[1]~output_o\;

ww_D(2) <= \D[2]~output_o\;

ww_D(3) <= \D[3]~output_o\;

ww_D(4) <= \D[4]~output_o\;

ww_E(0) <= \E[0]~output_o\;

ww_E(1) <= \E[1]~output_o\;

ww_E(2) <= \E[2]~output_o\;

ww_E(3) <= \E[3]~output_o\;

ww_E(4) <= \E[4]~output_o\;

ww_G(0) <= \G[0]~output_o\;

ww_G(1) <= \G[1]~output_o\;

ww_G(2) <= \G[2]~output_o\;

ww_G(3) <= \G[3]~output_o\;

ww_G(4) <= \G[4]~output_o\;

ww_C(0) <= \C[0]~output_o\;

ww_C(1) <= \C[1]~output_o\;

ww_C(2) <= \C[2]~output_o\;

ww_C(3) <= \C[3]~output_o\;

ww_C(4) <= \C[4]~output_o\;

ww_C(5) <= \C[5]~output_o\;

ww_C(6) <= \C[6]~output_o\;

ww_C(7) <= \C[7]~output_o\;

ww_C(8) <= \C[8]~output_o\;

ww_C(9) <= \C[9]~output_o\;

ww_C(10) <= \C[10]~output_o\;

ww_C(11) <= \C[11]~output_o\;

ww_C(12) <= \C[12]~output_o\;

ww_C(13) <= \C[13]~output_o\;

ww_C(14) <= \C[14]~output_o\;

ww_C(15) <= \C[15]~output_o\;

ww_C(16) <= \C[16]~output_o\;

ww_C(17) <= \C[17]~output_o\;

ww_C(18) <= \C[18]~output_o\;

ww_C(19) <= \C[19]~output_o\;

ww_C(20) <= \C[20]~output_o\;

ww_C(21) <= \C[21]~output_o\;

ww_C(22) <= \C[22]~output_o\;

ww_C(23) <= \C[23]~output_o\;

ww_C(24) <= \C[24]~output_o\;

ww_C(25) <= \C[25]~output_o\;

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_U <= \U~output_o\;

ww_OpCode(0) <= \OpCode[0]~output_o\;

ww_OpCode(1) <= \OpCode[1]~output_o\;

ww_OpCode(2) <= \OpCode[2]~output_o\;

ww_OpCode(3) <= \OpCode[3]~output_o\;

ww_OpCode(4) <= \OpCode[4]~output_o\;

ww_OpCode(5) <= \OpCode[5]~output_o\;
END structure;


