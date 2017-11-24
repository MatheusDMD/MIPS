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

-- DATE "11/24/2017 16:13:55"

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

ENTITY 	MIPS IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(8 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0);
	enderecoReg1Test : BUFFER std_logic_vector(4 DOWNTO 0);
	enderecoReg2Test : BUFFER std_logic_vector(4 DOWNTO 0);
	instrucaoTest : BUFFER std_logic_vector(31 DOWNTO 0);
	entraAULATest : BUFFER std_logic_vector(31 DOWNTO 0);
	entraBULATest : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END MIPS;

-- Design Ports Information
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- enderecoReg1Test[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg1Test[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg1Test[2]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg1Test[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg1Test[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg2Test[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg2Test[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg2Test[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg2Test[3]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg2Test[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[0]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[1]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[2]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[3]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[5]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[7]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[8]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[9]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[10]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[11]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[12]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[13]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[14]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[15]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[16]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[17]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[18]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[19]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[20]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[21]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[22]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[23]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[24]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[25]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[26]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[27]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[28]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[29]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[30]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[31]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[0]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[7]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[8]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[9]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[10]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[11]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[12]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[13]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[14]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[15]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[16]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[17]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[18]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[19]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[20]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[21]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[22]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[23]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[24]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[25]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[26]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[27]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[28]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[29]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[30]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[31]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[1]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[2]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[3]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[6]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[7]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[8]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[10]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[11]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[12]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[13]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[14]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[15]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[16]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[17]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[18]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[19]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[20]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[21]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[22]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[23]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[24]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[25]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[26]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[27]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[28]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[29]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[30]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[31]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MIPS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_enderecoReg1Test : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_enderecoReg2Test : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_instrucaoTest : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entraAULATest : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entraBULATest : std_logic_vector(31 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BTN_CLK|output[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \enderecoReg1Test[0]~output_o\ : std_logic;
SIGNAL \enderecoReg1Test[1]~output_o\ : std_logic;
SIGNAL \enderecoReg1Test[2]~output_o\ : std_logic;
SIGNAL \enderecoReg1Test[3]~output_o\ : std_logic;
SIGNAL \enderecoReg1Test[4]~output_o\ : std_logic;
SIGNAL \enderecoReg2Test[0]~output_o\ : std_logic;
SIGNAL \enderecoReg2Test[1]~output_o\ : std_logic;
SIGNAL \enderecoReg2Test[2]~output_o\ : std_logic;
SIGNAL \enderecoReg2Test[3]~output_o\ : std_logic;
SIGNAL \enderecoReg2Test[4]~output_o\ : std_logic;
SIGNAL \instrucaoTest[0]~output_o\ : std_logic;
SIGNAL \instrucaoTest[1]~output_o\ : std_logic;
SIGNAL \instrucaoTest[2]~output_o\ : std_logic;
SIGNAL \instrucaoTest[3]~output_o\ : std_logic;
SIGNAL \instrucaoTest[4]~output_o\ : std_logic;
SIGNAL \instrucaoTest[5]~output_o\ : std_logic;
SIGNAL \instrucaoTest[6]~output_o\ : std_logic;
SIGNAL \instrucaoTest[7]~output_o\ : std_logic;
SIGNAL \instrucaoTest[8]~output_o\ : std_logic;
SIGNAL \instrucaoTest[9]~output_o\ : std_logic;
SIGNAL \instrucaoTest[10]~output_o\ : std_logic;
SIGNAL \instrucaoTest[11]~output_o\ : std_logic;
SIGNAL \instrucaoTest[12]~output_o\ : std_logic;
SIGNAL \instrucaoTest[13]~output_o\ : std_logic;
SIGNAL \instrucaoTest[14]~output_o\ : std_logic;
SIGNAL \instrucaoTest[15]~output_o\ : std_logic;
SIGNAL \instrucaoTest[16]~output_o\ : std_logic;
SIGNAL \instrucaoTest[17]~output_o\ : std_logic;
SIGNAL \instrucaoTest[18]~output_o\ : std_logic;
SIGNAL \instrucaoTest[19]~output_o\ : std_logic;
SIGNAL \instrucaoTest[20]~output_o\ : std_logic;
SIGNAL \instrucaoTest[21]~output_o\ : std_logic;
SIGNAL \instrucaoTest[22]~output_o\ : std_logic;
SIGNAL \instrucaoTest[23]~output_o\ : std_logic;
SIGNAL \instrucaoTest[24]~output_o\ : std_logic;
SIGNAL \instrucaoTest[25]~output_o\ : std_logic;
SIGNAL \instrucaoTest[26]~output_o\ : std_logic;
SIGNAL \instrucaoTest[27]~output_o\ : std_logic;
SIGNAL \instrucaoTest[28]~output_o\ : std_logic;
SIGNAL \instrucaoTest[29]~output_o\ : std_logic;
SIGNAL \instrucaoTest[30]~output_o\ : std_logic;
SIGNAL \instrucaoTest[31]~output_o\ : std_logic;
SIGNAL \entraAULATest[0]~output_o\ : std_logic;
SIGNAL \entraAULATest[1]~output_o\ : std_logic;
SIGNAL \entraAULATest[2]~output_o\ : std_logic;
SIGNAL \entraAULATest[3]~output_o\ : std_logic;
SIGNAL \entraAULATest[4]~output_o\ : std_logic;
SIGNAL \entraAULATest[5]~output_o\ : std_logic;
SIGNAL \entraAULATest[6]~output_o\ : std_logic;
SIGNAL \entraAULATest[7]~output_o\ : std_logic;
SIGNAL \entraAULATest[8]~output_o\ : std_logic;
SIGNAL \entraAULATest[9]~output_o\ : std_logic;
SIGNAL \entraAULATest[10]~output_o\ : std_logic;
SIGNAL \entraAULATest[11]~output_o\ : std_logic;
SIGNAL \entraAULATest[12]~output_o\ : std_logic;
SIGNAL \entraAULATest[13]~output_o\ : std_logic;
SIGNAL \entraAULATest[14]~output_o\ : std_logic;
SIGNAL \entraAULATest[15]~output_o\ : std_logic;
SIGNAL \entraAULATest[16]~output_o\ : std_logic;
SIGNAL \entraAULATest[17]~output_o\ : std_logic;
SIGNAL \entraAULATest[18]~output_o\ : std_logic;
SIGNAL \entraAULATest[19]~output_o\ : std_logic;
SIGNAL \entraAULATest[20]~output_o\ : std_logic;
SIGNAL \entraAULATest[21]~output_o\ : std_logic;
SIGNAL \entraAULATest[22]~output_o\ : std_logic;
SIGNAL \entraAULATest[23]~output_o\ : std_logic;
SIGNAL \entraAULATest[24]~output_o\ : std_logic;
SIGNAL \entraAULATest[25]~output_o\ : std_logic;
SIGNAL \entraAULATest[26]~output_o\ : std_logic;
SIGNAL \entraAULATest[27]~output_o\ : std_logic;
SIGNAL \entraAULATest[28]~output_o\ : std_logic;
SIGNAL \entraAULATest[29]~output_o\ : std_logic;
SIGNAL \entraAULATest[30]~output_o\ : std_logic;
SIGNAL \entraAULATest[31]~output_o\ : std_logic;
SIGNAL \entraBULATest[0]~output_o\ : std_logic;
SIGNAL \entraBULATest[1]~output_o\ : std_logic;
SIGNAL \entraBULATest[2]~output_o\ : std_logic;
SIGNAL \entraBULATest[3]~output_o\ : std_logic;
SIGNAL \entraBULATest[4]~output_o\ : std_logic;
SIGNAL \entraBULATest[5]~output_o\ : std_logic;
SIGNAL \entraBULATest[6]~output_o\ : std_logic;
SIGNAL \entraBULATest[7]~output_o\ : std_logic;
SIGNAL \entraBULATest[8]~output_o\ : std_logic;
SIGNAL \entraBULATest[9]~output_o\ : std_logic;
SIGNAL \entraBULATest[10]~output_o\ : std_logic;
SIGNAL \entraBULATest[11]~output_o\ : std_logic;
SIGNAL \entraBULATest[12]~output_o\ : std_logic;
SIGNAL \entraBULATest[13]~output_o\ : std_logic;
SIGNAL \entraBULATest[14]~output_o\ : std_logic;
SIGNAL \entraBULATest[15]~output_o\ : std_logic;
SIGNAL \entraBULATest[16]~output_o\ : std_logic;
SIGNAL \entraBULATest[17]~output_o\ : std_logic;
SIGNAL \entraBULATest[18]~output_o\ : std_logic;
SIGNAL \entraBULATest[19]~output_o\ : std_logic;
SIGNAL \entraBULATest[20]~output_o\ : std_logic;
SIGNAL \entraBULATest[21]~output_o\ : std_logic;
SIGNAL \entraBULATest[22]~output_o\ : std_logic;
SIGNAL \entraBULATest[23]~output_o\ : std_logic;
SIGNAL \entraBULATest[24]~output_o\ : std_logic;
SIGNAL \entraBULATest[25]~output_o\ : std_logic;
SIGNAL \entraBULATest[26]~output_o\ : std_logic;
SIGNAL \entraBULATest[27]~output_o\ : std_logic;
SIGNAL \entraBULATest[28]~output_o\ : std_logic;
SIGNAL \entraBULATest[29]~output_o\ : std_logic;
SIGNAL \entraBULATest[30]~output_o\ : std_logic;
SIGNAL \entraBULATest[31]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \BTN_RST|Add0~0_combout\ : std_logic;
SIGNAL \BTN_RST|temp~8_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \BTN_RST|Add0~1\ : std_logic;
SIGNAL \BTN_RST|Add0~2_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~3\ : std_logic;
SIGNAL \BTN_RST|Add0~4_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~5\ : std_logic;
SIGNAL \BTN_RST|Add0~6_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~7\ : std_logic;
SIGNAL \BTN_RST|Add0~8_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~9\ : std_logic;
SIGNAL \BTN_RST|Add0~10_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~11\ : std_logic;
SIGNAL \BTN_RST|Add0~12_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~13\ : std_logic;
SIGNAL \BTN_RST|Add0~15\ : std_logic;
SIGNAL \BTN_RST|Add0~16_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~17\ : std_logic;
SIGNAL \BTN_RST|Add0~18_combout\ : std_logic;
SIGNAL \BTN_RST|temp~1_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~19\ : std_logic;
SIGNAL \BTN_RST|Add0~21\ : std_logic;
SIGNAL \BTN_RST|Add0~22_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~23\ : std_logic;
SIGNAL \BTN_RST|Add0~24_combout\ : std_logic;
SIGNAL \BTN_RST|temp~3_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~25\ : std_logic;
SIGNAL \BTN_RST|Add0~26_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~27\ : std_logic;
SIGNAL \BTN_RST|Add0~28_combout\ : std_logic;
SIGNAL \BTN_RST|temp[11]~feeder_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~29\ : std_logic;
SIGNAL \BTN_RST|Add0~30_combout\ : std_logic;
SIGNAL \BTN_RST|temp~4_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~31\ : std_logic;
SIGNAL \BTN_RST|Add0~32_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~33\ : std_logic;
SIGNAL \BTN_RST|Add0~34_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~35\ : std_logic;
SIGNAL \BTN_RST|Add0~36_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~37\ : std_logic;
SIGNAL \BTN_RST|Add0~38_combout\ : std_logic;
SIGNAL \BTN_RST|temp~5_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~39\ : std_logic;
SIGNAL \BTN_RST|Add0~41\ : std_logic;
SIGNAL \BTN_RST|Add0~42_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~43\ : std_logic;
SIGNAL \BTN_RST|Add0~44_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~45\ : std_logic;
SIGNAL \BTN_RST|Add0~46_combout\ : std_logic;
SIGNAL \BTN_RST|temp~7_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~47\ : std_logic;
SIGNAL \BTN_RST|Add0~48_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~49\ : std_logic;
SIGNAL \BTN_RST|Add0~50_combout\ : std_logic;
SIGNAL \BTN_RST|Equal0~3_combout\ : std_logic;
SIGNAL \BTN_RST|Equal0~2_combout\ : std_logic;
SIGNAL \BTN_RST|Equal0~1_combout\ : std_logic;
SIGNAL \BTN_RST|Equal0~0_combout\ : std_logic;
SIGNAL \BTN_RST|Equal0~4_combout\ : std_logic;
SIGNAL \BTN_RST|Equal0~5_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~14_combout\ : std_logic;
SIGNAL \BTN_RST|temp~0_combout\ : std_logic;
SIGNAL \BTN_RST|Equal0~6_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~40_combout\ : std_logic;
SIGNAL \BTN_RST|temp~6_combout\ : std_logic;
SIGNAL \BTN_RST|Equal0~7_combout\ : std_logic;
SIGNAL \BTN_RST|Add0~20_combout\ : std_logic;
SIGNAL \BTN_RST|temp~2_combout\ : std_logic;
SIGNAL \BTN_RST|Equal1~0_combout\ : std_logic;
SIGNAL \BTN_RST|Equal1~1_combout\ : std_logic;
SIGNAL \BTN_RST|output[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \BTN_RST|output~0_combout\ : std_logic;
SIGNAL \BTN_RST|output~1_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~0_combout\ : std_logic;
SIGNAL \BTN_CLK|temp~2_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \BTN_CLK|Add0~1\ : std_logic;
SIGNAL \BTN_CLK|Add0~2_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~3\ : std_logic;
SIGNAL \BTN_CLK|Add0~4_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~5\ : std_logic;
SIGNAL \BTN_CLK|Add0~6_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~7\ : std_logic;
SIGNAL \BTN_CLK|Add0~8_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~9\ : std_logic;
SIGNAL \BTN_CLK|Add0~10_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~11\ : std_logic;
SIGNAL \BTN_CLK|Add0~12_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~13\ : std_logic;
SIGNAL \BTN_CLK|Add0~14_combout\ : std_logic;
SIGNAL \BTN_CLK|temp~3_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~15\ : std_logic;
SIGNAL \BTN_CLK|Add0~16_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~17\ : std_logic;
SIGNAL \BTN_CLK|Add0~19\ : std_logic;
SIGNAL \BTN_CLK|Add0~20_combout\ : std_logic;
SIGNAL \BTN_CLK|temp~5_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~21\ : std_logic;
SIGNAL \BTN_CLK|Add0~22_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~23\ : std_logic;
SIGNAL \BTN_CLK|Add0~24_combout\ : std_logic;
SIGNAL \BTN_CLK|temp~6_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~25\ : std_logic;
SIGNAL \BTN_CLK|Add0~26_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~27\ : std_logic;
SIGNAL \BTN_CLK|Add0~28_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~29\ : std_logic;
SIGNAL \BTN_CLK|Add0~30_combout\ : std_logic;
SIGNAL \BTN_CLK|temp~7_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~31\ : std_logic;
SIGNAL \BTN_CLK|Add0~32_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~33\ : std_logic;
SIGNAL \BTN_CLK|Add0~34_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~35\ : std_logic;
SIGNAL \BTN_CLK|Add0~36_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~37\ : std_logic;
SIGNAL \BTN_CLK|Add0~38_combout\ : std_logic;
SIGNAL \BTN_CLK|temp~8_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~39\ : std_logic;
SIGNAL \BTN_CLK|Add0~40_combout\ : std_logic;
SIGNAL \BTN_CLK|temp~9_combout\ : std_logic;
SIGNAL \BTN_CLK|Equal0~7_combout\ : std_logic;
SIGNAL \BTN_CLK|Equal0~6_combout\ : std_logic;
SIGNAL \BTN_CLK|Equal0~0_combout\ : std_logic;
SIGNAL \BTN_CLK|Equal0~1_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~41\ : std_logic;
SIGNAL \BTN_CLK|Add0~42_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~43\ : std_logic;
SIGNAL \BTN_CLK|Add0~44_combout\ : std_logic;
SIGNAL \BTN_CLK|Equal0~3_combout\ : std_logic;
SIGNAL \BTN_CLK|Equal0~2_combout\ : std_logic;
SIGNAL \BTN_CLK|Equal0~4_combout\ : std_logic;
SIGNAL \BTN_CLK|Equal0~5_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~45\ : std_logic;
SIGNAL \BTN_CLK|Add0~46_combout\ : std_logic;
SIGNAL \BTN_CLK|temp~10_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~47\ : std_logic;
SIGNAL \BTN_CLK|Add0~48_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~49\ : std_logic;
SIGNAL \BTN_CLK|Add0~50_combout\ : std_logic;
SIGNAL \BTN_CLK|Equal0~8_combout\ : std_logic;
SIGNAL \BTN_CLK|Equal0~9_combout\ : std_logic;
SIGNAL \BTN_CLK|Add0~18_combout\ : std_logic;
SIGNAL \BTN_CLK|temp~4_combout\ : std_logic;
SIGNAL \BTN_CLK|Equal1~0_combout\ : std_logic;
SIGNAL \BTN_CLK|Equal1~1_combout\ : std_logic;
SIGNAL \BTN_CLK|Equal1~2_combout\ : std_logic;
SIGNAL \BTN_CLK|output~0_combout\ : std_logic;
SIGNAL \BTN_CLK|output[0]~feeder_combout\ : std_logic;
SIGNAL \BTN_CLK|output[0]~clkctrl_outclk\ : std_logic;
SIGNAL \FD|PC|DOUT[2]~6_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[2]~7\ : std_logic;
SIGNAL \FD|PC|DOUT[3]~8_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[3]~9\ : std_logic;
SIGNAL \FD|PC|DOUT[4]~10_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[4]~11\ : std_logic;
SIGNAL \FD|PC|DOUT[5]~12_combout\ : std_logic;
SIGNAL \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ : std_logic;
SIGNAL \FD|UC_ULA|ULActrl[1]~4_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1067_combout\ : std_logic;
SIGNAL \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~0_combout\ : std_logic;
SIGNAL \FD|UC_ULA|Equal0~0_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~1_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[0]~0_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~1_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1096_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~358_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1095_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~31_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~389_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1094_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1066_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~2\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~3_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[0]~1\ : std_logic;
SIGNAL \FD|ALU|somaSub[1]~2_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~2_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~359_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1062_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~4\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~5_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[1]~3\ : std_logic;
SIGNAL \FD|ALU|somaSub[2]~4_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~3_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~360_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1065_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~6\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~7_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[2]~5\ : std_logic;
SIGNAL \FD|ALU|somaSub[3]~6_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~4_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~361_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1064_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~8\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~9_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[3]~7\ : std_logic;
SIGNAL \FD|ALU|somaSub[4]~8_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~0_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~362_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1063_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~10\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~11_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[4]~9\ : std_logic;
SIGNAL \FD|ALU|somaSub[5]~10_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~5_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~363_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1068_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~12\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~13_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[5]~11\ : std_logic;
SIGNAL \FD|ALU|somaSub[6]~12_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~6_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~364feeder_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~364_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1069_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~14\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~15_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[6]~13\ : std_logic;
SIGNAL \FD|ALU|somaSub[7]~14_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~7_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~365feeder_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~365_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1070_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~16\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~17_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[7]~15\ : std_logic;
SIGNAL \FD|ALU|somaSub[8]~16_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~8_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~366feeder_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~366_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1071_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~18\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~19_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[8]~17\ : std_logic;
SIGNAL \FD|ALU|somaSub[9]~18_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~9_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~367feeder_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~367_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1072_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~20\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~21_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[9]~19\ : std_logic;
SIGNAL \FD|ALU|somaSub[10]~20_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~10_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~368_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1073_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~22\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~23_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[10]~21\ : std_logic;
SIGNAL \FD|ALU|somaSub[11]~22_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~11_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~369_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1074_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~24\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~25_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[11]~23\ : std_logic;
SIGNAL \FD|ALU|somaSub[12]~24_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~12_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~370_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1075_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~26\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~27_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[12]~25\ : std_logic;
SIGNAL \FD|ALU|somaSub[13]~26_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~13_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~371_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1076_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~28\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~29_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[13]~27\ : std_logic;
SIGNAL \FD|ALU|somaSub[14]~28_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~18_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~372_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1093_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~30\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~31_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[14]~29\ : std_logic;
SIGNAL \FD|ALU|somaSub[15]~30_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~19_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~373_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1092_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~32\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~33_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[15]~31\ : std_logic;
SIGNAL \FD|ALU|somaSub[16]~32_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~20_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~374feeder_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~374_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1091_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~34\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~35_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[16]~33\ : std_logic;
SIGNAL \FD|ALU|somaSub[17]~34_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~21_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~375feeder_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~375_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1090_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~36\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~37_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[17]~35\ : std_logic;
SIGNAL \FD|ALU|somaSub[18]~36_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~17_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~376_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1089_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~38\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~39_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[18]~37\ : std_logic;
SIGNAL \FD|ALU|somaSub[19]~38_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~14_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~377feeder_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~377_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1088_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~40\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~41_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[19]~39\ : std_logic;
SIGNAL \FD|ALU|somaSub[20]~40_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~15_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~378feeder_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~378_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1087_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~42\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~43_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[20]~41\ : std_logic;
SIGNAL \FD|ALU|somaSub[21]~42_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~16_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~379feeder_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~379_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1086_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~44\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~45_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[21]~43\ : std_logic;
SIGNAL \FD|ALU|somaSub[22]~44_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~24_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~380_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1085_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~46\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~47_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[22]~45\ : std_logic;
SIGNAL \FD|ALU|somaSub[23]~46_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~25_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~381_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1084_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~48\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~49_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[23]~47\ : std_logic;
SIGNAL \FD|ALU|somaSub[24]~48_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~26_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~382_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1083_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~50\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~51_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[24]~49\ : std_logic;
SIGNAL \FD|ALU|somaSub[25]~50_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~23_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~383feeder_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~383_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1082_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~52\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~53_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[25]~51\ : std_logic;
SIGNAL \FD|ALU|somaSub[26]~52_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~30_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~384_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1081_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~54\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~55_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[26]~53\ : std_logic;
SIGNAL \FD|ALU|somaSub[27]~54_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~29_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~385_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1080_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~56\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~57_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[27]~55\ : std_logic;
SIGNAL \FD|ALU|somaSub[28]~56_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~22_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~386feeder_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~386_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1079_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~58\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~59_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[28]~57\ : std_logic;
SIGNAL \FD|ALU|somaSub[29]~58_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~28_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~387_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1078_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~60\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~61_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[29]~59\ : std_logic;
SIGNAL \FD|ALU|somaSub[30]~60_combout\ : std_logic;
SIGNAL \FD|ALU|Add0~27_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~388_q\ : std_logic;
SIGNAL \FD|Banco_Regis|registers~1077_combout\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~62\ : std_logic;
SIGNAL \FD|ALU|Bnot|Add0~63_combout\ : std_logic;
SIGNAL \FD|ALU|somaSub[30]~61\ : std_logic;
SIGNAL \FD|ALU|somaSub[31]~62_combout\ : std_logic;
SIGNAL \FD|comparadorDisplay|Equal0~37_combout\ : std_logic;
SIGNAL \FD|comparadorDisplay|Equal0~32_combout\ : std_logic;
SIGNAL \FD|comparadorDisplay|Equal0~34_combout\ : std_logic;
SIGNAL \FD|comparadorDisplay|Equal0~35_combout\ : std_logic;
SIGNAL \FD|comparadorDisplay|Equal0~33_combout\ : std_logic;
SIGNAL \FD|comparadorDisplay|Equal0~36_combout\ : std_logic;
SIGNAL \FD|comparadorDisplay|Equal0~44_combout\ : std_logic;
SIGNAL \FD|comparadorDisplay|Equal0~40_combout\ : std_logic;
SIGNAL \FD|comparadorDisplay|Equal0~41_combout\ : std_logic;
SIGNAL \FD|comparadorDisplay|Equal0~38_combout\ : std_logic;
SIGNAL \FD|comparadorDisplay|Equal0~43_combout\ : std_logic;
SIGNAL \FD|comparadorDisplay|Equal0~39_combout\ : std_logic;
SIGNAL \FD|comparadorDisplay|Equal0~42_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[0]~1_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[1]~2_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[1]~3_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[2]~4_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[3]~7_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[4]~8_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[4]~9_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[5]~10_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[5]~11_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[6]~12_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[6]~13_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~1_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[1]~2_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[1]~3_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[2]~4_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[3]~7_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[4]~8_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[4]~9_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[5]~10_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[5]~11_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[6]~12_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[6]~13_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[0]~1_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[1]~2_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[1]~3_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[2]~4_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[3]~7_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[4]~8_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[4]~9_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[5]~10_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[5]~11_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[6]~12_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[6]~13_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[0]~1_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[1]~2_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[1]~3_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[2]~4_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[3]~7_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[4]~8_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[4]~9_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[5]~10_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[5]~11_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[6]~12_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[6]~13_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[0]~1_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[1]~2_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[1]~3_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[2]~4_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[3]~7_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[4]~8_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[4]~9_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[5]~10_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[5]~11_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[6]~12_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[6]~13_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[0]~1_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[1]~2_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[1]~3_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[2]~4_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[3]~7_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[4]~8_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[4]~9_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[5]~10_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[5]~11_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[6]~12_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[6]~13_combout\ : std_logic;
SIGNAL \display6|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display6|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display6|rascSaida7seg[6]~2_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[5]~13\ : std_logic;
SIGNAL \FD|PC|DOUT[6]~14_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[6]~15\ : std_logic;
SIGNAL \FD|PC|DOUT[7]~16_combout\ : std_logic;
SIGNAL \display7|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display7|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display7|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display7|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display7|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display7|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display7|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \BTN_RST|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BTN_CLK|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BTN_RST|temp\ : std_logic_vector(0 TO 25);
SIGNAL \registradosDisplay|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \BTN_CLK|temp\ : std_logic_vector(0 TO 25);
SIGNAL \FD|PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \BTN_RST|ALT_INV_output[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \display6|ALT_INV_rascSaida7seg[6]~2_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
enderecoReg1Test <= ww_enderecoReg1Test;
enderecoReg2Test <= ww_enderecoReg2Test;
instrucaoTest <= ww_instrucaoTest;
entraAULATest <= ww_entraAULATest;
entraBULATest <= ww_entraBULATest;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\BTN_CLK|output[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \BTN_CLK|output\(0));
\BTN_RST|ALT_INV_output[0]~_Duplicate_1_q\ <= NOT \BTN_RST|output[0]~_Duplicate_1_q\;
\display6|ALT_INV_rascSaida7seg[6]~2_combout\ <= NOT \display6|rascSaida7seg[6]~2_combout\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BTN_RST|output\(0),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[0]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[1]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[4]~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[5]~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[6]~13_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[0]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[1]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[4]~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[5]~11_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[6]~13_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[0]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[1]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[4]~9_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[5]~11_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[6]~13_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[0]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[1]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[4]~9_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[5]~11_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[6]~13_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[0]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[1]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[4]~9_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[5]~11_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[6]~13_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[0]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[1]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[4]~9_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[5]~11_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[6]~13_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display6|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display6|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display6|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display6|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display6|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display6|ALT_INV_rascSaida7seg[6]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display7|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\enderecoReg1Test[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecoReg1Test[0]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\enderecoReg1Test[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecoReg1Test[1]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\enderecoReg1Test[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecoReg1Test[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\enderecoReg1Test[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecoReg1Test[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\enderecoReg1Test[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecoReg1Test[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\enderecoReg2Test[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecoReg2Test[0]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\enderecoReg2Test[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecoReg2Test[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\enderecoReg2Test[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecoReg2Test[2]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\enderecoReg2Test[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecoReg2Test[3]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\enderecoReg2Test[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecoReg2Test[4]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\instrucaoTest[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[0]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\instrucaoTest[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\instrucaoTest[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[2]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\instrucaoTest[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\instrucaoTest[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[4]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\instrucaoTest[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[5]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\instrucaoTest[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[6]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\instrucaoTest[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[7]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\instrucaoTest[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[8]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\instrucaoTest[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[9]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\instrucaoTest[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[10]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\instrucaoTest[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[11]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\instrucaoTest[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[12]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\instrucaoTest[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[13]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\instrucaoTest[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[14]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\instrucaoTest[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[15]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\instrucaoTest[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[16]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\instrucaoTest[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[17]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\instrucaoTest[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[18]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\instrucaoTest[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[19]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\instrucaoTest[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[20]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\instrucaoTest[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[21]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\instrucaoTest[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[22]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\instrucaoTest[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[23]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\instrucaoTest[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[24]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\instrucaoTest[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[25]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\instrucaoTest[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[26]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\instrucaoTest[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[27]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\instrucaoTest[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[28]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\instrucaoTest[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[29]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\instrucaoTest[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[30]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\instrucaoTest[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucaoTest[31]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\entraAULATest[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\entraAULATest[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\entraAULATest[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\entraAULATest[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[3]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\entraAULATest[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[4]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\entraAULATest[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[5]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\entraAULATest[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[6]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\entraAULATest[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[7]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\entraAULATest[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[8]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\entraAULATest[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[9]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\entraAULATest[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[10]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\entraAULATest[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[11]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\entraAULATest[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[12]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\entraAULATest[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[13]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\entraAULATest[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[14]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\entraAULATest[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[15]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\entraAULATest[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[16]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\entraAULATest[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[17]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\entraAULATest[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[18]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\entraAULATest[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[19]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\entraAULATest[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[20]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\entraAULATest[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[21]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\entraAULATest[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[22]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\entraAULATest[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[23]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\entraAULATest[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[24]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\entraAULATest[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[25]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\entraAULATest[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[26]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\entraAULATest[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[27]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\entraAULATest[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[28]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\entraAULATest[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[29]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\entraAULATest[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[30]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\entraAULATest[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraAULATest[31]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\entraBULATest[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[0]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\entraBULATest[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[1]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\entraBULATest[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[2]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\entraBULATest[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\entraBULATest[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[4]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\entraBULATest[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[5]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\entraBULATest[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\entraBULATest[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[7]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\entraBULATest[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[8]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\entraBULATest[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[9]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\entraBULATest[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[10]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\entraBULATest[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\entraBULATest[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[12]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\entraBULATest[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[13]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\entraBULATest[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[14]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\entraBULATest[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[15]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\entraBULATest[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[16]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\entraBULATest[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[17]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\entraBULATest[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[18]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\entraBULATest[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[19]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\entraBULATest[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[20]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\entraBULATest[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[21]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\entraBULATest[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[22]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\entraBULATest[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[23]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\entraBULATest[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[24]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\entraBULATest[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[25]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\entraBULATest[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[26]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\entraBULATest[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[27]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\entraBULATest[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[28]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\entraBULATest[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[29]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\entraBULATest[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[30]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\entraBULATest[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entraBULATest[31]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X87_Y27_N6
\BTN_RST|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~0_combout\ = \BTN_RST|temp\(25) $ (VCC)
-- \BTN_RST|Add0~1\ = CARRY(\BTN_RST|temp\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(25),
	datad => VCC,
	combout => \BTN_RST|Add0~0_combout\,
	cout => \BTN_RST|Add0~1\);

-- Location: LCCOMB_X87_Y27_N4
\BTN_RST|temp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|temp~8_combout\ = (\BTN_RST|Add0~0_combout\ & (((!\BTN_RST|Equal0~6_combout\) # (!\BTN_RST|Equal0~7_combout\)) # (!\BTN_RST|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|Add0~0_combout\,
	datab => \BTN_RST|Equal0~5_combout\,
	datac => \BTN_RST|Equal0~7_combout\,
	datad => \BTN_RST|Equal0~6_combout\,
	combout => \BTN_RST|temp~8_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X87_Y27_N5
\BTN_RST|temp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|temp~8_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(25));

-- Location: LCCOMB_X87_Y27_N8
\BTN_RST|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~2_combout\ = (\BTN_RST|temp\(24) & (!\BTN_RST|Add0~1\)) # (!\BTN_RST|temp\(24) & ((\BTN_RST|Add0~1\) # (GND)))
-- \BTN_RST|Add0~3\ = CARRY((!\BTN_RST|Add0~1\) # (!\BTN_RST|temp\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(24),
	datad => VCC,
	cin => \BTN_RST|Add0~1\,
	combout => \BTN_RST|Add0~2_combout\,
	cout => \BTN_RST|Add0~3\);

-- Location: FF_X87_Y27_N9
\BTN_RST|temp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|Add0~2_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(24));

-- Location: LCCOMB_X87_Y27_N10
\BTN_RST|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~4_combout\ = (\BTN_RST|temp\(23) & (\BTN_RST|Add0~3\ $ (GND))) # (!\BTN_RST|temp\(23) & (!\BTN_RST|Add0~3\ & VCC))
-- \BTN_RST|Add0~5\ = CARRY((\BTN_RST|temp\(23) & !\BTN_RST|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(23),
	datad => VCC,
	cin => \BTN_RST|Add0~3\,
	combout => \BTN_RST|Add0~4_combout\,
	cout => \BTN_RST|Add0~5\);

-- Location: FF_X87_Y27_N11
\BTN_RST|temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|Add0~4_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(23));

-- Location: LCCOMB_X87_Y27_N12
\BTN_RST|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~6_combout\ = (\BTN_RST|temp\(22) & (!\BTN_RST|Add0~5\)) # (!\BTN_RST|temp\(22) & ((\BTN_RST|Add0~5\) # (GND)))
-- \BTN_RST|Add0~7\ = CARRY((!\BTN_RST|Add0~5\) # (!\BTN_RST|temp\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(22),
	datad => VCC,
	cin => \BTN_RST|Add0~5\,
	combout => \BTN_RST|Add0~6_combout\,
	cout => \BTN_RST|Add0~7\);

-- Location: FF_X87_Y27_N13
\BTN_RST|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|Add0~6_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(22));

-- Location: LCCOMB_X87_Y27_N14
\BTN_RST|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~8_combout\ = (\BTN_RST|temp\(21) & (\BTN_RST|Add0~7\ $ (GND))) # (!\BTN_RST|temp\(21) & (!\BTN_RST|Add0~7\ & VCC))
-- \BTN_RST|Add0~9\ = CARRY((\BTN_RST|temp\(21) & !\BTN_RST|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(21),
	datad => VCC,
	cin => \BTN_RST|Add0~7\,
	combout => \BTN_RST|Add0~8_combout\,
	cout => \BTN_RST|Add0~9\);

-- Location: FF_X87_Y27_N15
\BTN_RST|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|Add0~8_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(21));

-- Location: LCCOMB_X87_Y27_N16
\BTN_RST|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~10_combout\ = (\BTN_RST|temp\(20) & (!\BTN_RST|Add0~9\)) # (!\BTN_RST|temp\(20) & ((\BTN_RST|Add0~9\) # (GND)))
-- \BTN_RST|Add0~11\ = CARRY((!\BTN_RST|Add0~9\) # (!\BTN_RST|temp\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(20),
	datad => VCC,
	cin => \BTN_RST|Add0~9\,
	combout => \BTN_RST|Add0~10_combout\,
	cout => \BTN_RST|Add0~11\);

-- Location: FF_X87_Y27_N17
\BTN_RST|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|Add0~10_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(20));

-- Location: LCCOMB_X87_Y27_N18
\BTN_RST|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~12_combout\ = (\BTN_RST|temp\(19) & (\BTN_RST|Add0~11\ $ (GND))) # (!\BTN_RST|temp\(19) & (!\BTN_RST|Add0~11\ & VCC))
-- \BTN_RST|Add0~13\ = CARRY((\BTN_RST|temp\(19) & !\BTN_RST|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(19),
	datad => VCC,
	cin => \BTN_RST|Add0~11\,
	combout => \BTN_RST|Add0~12_combout\,
	cout => \BTN_RST|Add0~13\);

-- Location: FF_X87_Y27_N19
\BTN_RST|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|Add0~12_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(19));

-- Location: LCCOMB_X87_Y27_N20
\BTN_RST|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~14_combout\ = (\BTN_RST|temp\(18) & (!\BTN_RST|Add0~13\)) # (!\BTN_RST|temp\(18) & ((\BTN_RST|Add0~13\) # (GND)))
-- \BTN_RST|Add0~15\ = CARRY((!\BTN_RST|Add0~13\) # (!\BTN_RST|temp\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(18),
	datad => VCC,
	cin => \BTN_RST|Add0~13\,
	combout => \BTN_RST|Add0~14_combout\,
	cout => \BTN_RST|Add0~15\);

-- Location: LCCOMB_X87_Y27_N22
\BTN_RST|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~16_combout\ = (\BTN_RST|temp\(17) & (\BTN_RST|Add0~15\ $ (GND))) # (!\BTN_RST|temp\(17) & (!\BTN_RST|Add0~15\ & VCC))
-- \BTN_RST|Add0~17\ = CARRY((\BTN_RST|temp\(17) & !\BTN_RST|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(17),
	datad => VCC,
	cin => \BTN_RST|Add0~15\,
	combout => \BTN_RST|Add0~16_combout\,
	cout => \BTN_RST|Add0~17\);

-- Location: FF_X87_Y27_N23
\BTN_RST|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|Add0~16_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(17));

-- Location: LCCOMB_X87_Y27_N24
\BTN_RST|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~18_combout\ = (\BTN_RST|temp\(16) & (!\BTN_RST|Add0~17\)) # (!\BTN_RST|temp\(16) & ((\BTN_RST|Add0~17\) # (GND)))
-- \BTN_RST|Add0~19\ = CARRY((!\BTN_RST|Add0~17\) # (!\BTN_RST|temp\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(16),
	datad => VCC,
	cin => \BTN_RST|Add0~17\,
	combout => \BTN_RST|Add0~18_combout\,
	cout => \BTN_RST|Add0~19\);

-- Location: LCCOMB_X86_Y27_N0
\BTN_RST|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|temp~1_combout\ = (\BTN_RST|Add0~18_combout\ & (((!\BTN_RST|Equal0~6_combout\) # (!\BTN_RST|Equal0~5_combout\)) # (!\BTN_RST|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|Equal0~7_combout\,
	datab => \BTN_RST|Add0~18_combout\,
	datac => \BTN_RST|Equal0~5_combout\,
	datad => \BTN_RST|Equal0~6_combout\,
	combout => \BTN_RST|temp~1_combout\);

-- Location: FF_X86_Y27_N1
\BTN_RST|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|temp~1_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(16));

-- Location: LCCOMB_X87_Y27_N26
\BTN_RST|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~20_combout\ = (\BTN_RST|temp\(15) & (\BTN_RST|Add0~19\ $ (GND))) # (!\BTN_RST|temp\(15) & (!\BTN_RST|Add0~19\ & VCC))
-- \BTN_RST|Add0~21\ = CARRY((\BTN_RST|temp\(15) & !\BTN_RST|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(15),
	datad => VCC,
	cin => \BTN_RST|Add0~19\,
	combout => \BTN_RST|Add0~20_combout\,
	cout => \BTN_RST|Add0~21\);

-- Location: LCCOMB_X87_Y27_N28
\BTN_RST|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~22_combout\ = (\BTN_RST|temp\(14) & (!\BTN_RST|Add0~21\)) # (!\BTN_RST|temp\(14) & ((\BTN_RST|Add0~21\) # (GND)))
-- \BTN_RST|Add0~23\ = CARRY((!\BTN_RST|Add0~21\) # (!\BTN_RST|temp\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(14),
	datad => VCC,
	cin => \BTN_RST|Add0~21\,
	combout => \BTN_RST|Add0~22_combout\,
	cout => \BTN_RST|Add0~23\);

-- Location: FF_X87_Y27_N29
\BTN_RST|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|Add0~22_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(14));

-- Location: LCCOMB_X87_Y27_N30
\BTN_RST|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~24_combout\ = (\BTN_RST|temp\(13) & (\BTN_RST|Add0~23\ $ (GND))) # (!\BTN_RST|temp\(13) & (!\BTN_RST|Add0~23\ & VCC))
-- \BTN_RST|Add0~25\ = CARRY((\BTN_RST|temp\(13) & !\BTN_RST|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(13),
	datad => VCC,
	cin => \BTN_RST|Add0~23\,
	combout => \BTN_RST|Add0~24_combout\,
	cout => \BTN_RST|Add0~25\);

-- Location: LCCOMB_X86_Y27_N16
\BTN_RST|temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|temp~3_combout\ = (\BTN_RST|Add0~24_combout\ & (((!\BTN_RST|Equal0~5_combout\) # (!\BTN_RST|Equal0~6_combout\)) # (!\BTN_RST|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|Equal0~7_combout\,
	datab => \BTN_RST|Equal0~6_combout\,
	datac => \BTN_RST|Add0~24_combout\,
	datad => \BTN_RST|Equal0~5_combout\,
	combout => \BTN_RST|temp~3_combout\);

-- Location: FF_X86_Y27_N17
\BTN_RST|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|temp~3_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(13));

-- Location: LCCOMB_X87_Y26_N0
\BTN_RST|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~26_combout\ = (\BTN_RST|temp\(12) & (!\BTN_RST|Add0~25\)) # (!\BTN_RST|temp\(12) & ((\BTN_RST|Add0~25\) # (GND)))
-- \BTN_RST|Add0~27\ = CARRY((!\BTN_RST|Add0~25\) # (!\BTN_RST|temp\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(12),
	datad => VCC,
	cin => \BTN_RST|Add0~25\,
	combout => \BTN_RST|Add0~26_combout\,
	cout => \BTN_RST|Add0~27\);

-- Location: FF_X86_Y27_N25
\BTN_RST|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BTN_RST|Add0~26_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(12));

-- Location: LCCOMB_X87_Y26_N2
\BTN_RST|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~28_combout\ = (\BTN_RST|temp\(11) & (\BTN_RST|Add0~27\ $ (GND))) # (!\BTN_RST|temp\(11) & (!\BTN_RST|Add0~27\ & VCC))
-- \BTN_RST|Add0~29\ = CARRY((\BTN_RST|temp\(11) & !\BTN_RST|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(11),
	datad => VCC,
	cin => \BTN_RST|Add0~27\,
	combout => \BTN_RST|Add0~28_combout\,
	cout => \BTN_RST|Add0~29\);

-- Location: LCCOMB_X86_Y27_N30
\BTN_RST|temp[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|temp[11]~feeder_combout\ = \BTN_RST|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BTN_RST|Add0~28_combout\,
	combout => \BTN_RST|temp[11]~feeder_combout\);

-- Location: FF_X86_Y27_N31
\BTN_RST|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|temp[11]~feeder_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(11));

-- Location: LCCOMB_X87_Y26_N4
\BTN_RST|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~30_combout\ = (\BTN_RST|temp\(10) & (!\BTN_RST|Add0~29\)) # (!\BTN_RST|temp\(10) & ((\BTN_RST|Add0~29\) # (GND)))
-- \BTN_RST|Add0~31\ = CARRY((!\BTN_RST|Add0~29\) # (!\BTN_RST|temp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(10),
	datad => VCC,
	cin => \BTN_RST|Add0~29\,
	combout => \BTN_RST|Add0~30_combout\,
	cout => \BTN_RST|Add0~31\);

-- Location: LCCOMB_X86_Y27_N12
\BTN_RST|temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|temp~4_combout\ = (\BTN_RST|Add0~30_combout\ & (((!\BTN_RST|Equal0~5_combout\) # (!\BTN_RST|Equal0~6_combout\)) # (!\BTN_RST|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|Equal0~7_combout\,
	datab => \BTN_RST|Equal0~6_combout\,
	datac => \BTN_RST|Add0~30_combout\,
	datad => \BTN_RST|Equal0~5_combout\,
	combout => \BTN_RST|temp~4_combout\);

-- Location: FF_X86_Y27_N13
\BTN_RST|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|temp~4_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(10));

-- Location: LCCOMB_X87_Y26_N6
\BTN_RST|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~32_combout\ = (\BTN_RST|temp\(9) & (\BTN_RST|Add0~31\ $ (GND))) # (!\BTN_RST|temp\(9) & (!\BTN_RST|Add0~31\ & VCC))
-- \BTN_RST|Add0~33\ = CARRY((\BTN_RST|temp\(9) & !\BTN_RST|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(9),
	datad => VCC,
	cin => \BTN_RST|Add0~31\,
	combout => \BTN_RST|Add0~32_combout\,
	cout => \BTN_RST|Add0~33\);

-- Location: FF_X86_Y27_N29
\BTN_RST|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BTN_RST|Add0~32_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(9));

-- Location: LCCOMB_X87_Y26_N8
\BTN_RST|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~34_combout\ = (\BTN_RST|temp\(8) & (!\BTN_RST|Add0~33\)) # (!\BTN_RST|temp\(8) & ((\BTN_RST|Add0~33\) # (GND)))
-- \BTN_RST|Add0~35\ = CARRY((!\BTN_RST|Add0~33\) # (!\BTN_RST|temp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(8),
	datad => VCC,
	cin => \BTN_RST|Add0~33\,
	combout => \BTN_RST|Add0~34_combout\,
	cout => \BTN_RST|Add0~35\);

-- Location: FF_X86_Y27_N11
\BTN_RST|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BTN_RST|Add0~34_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(8));

-- Location: LCCOMB_X87_Y26_N10
\BTN_RST|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~36_combout\ = (\BTN_RST|temp\(7) & (\BTN_RST|Add0~35\ $ (GND))) # (!\BTN_RST|temp\(7) & (!\BTN_RST|Add0~35\ & VCC))
-- \BTN_RST|Add0~37\ = CARRY((\BTN_RST|temp\(7) & !\BTN_RST|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(7),
	datad => VCC,
	cin => \BTN_RST|Add0~35\,
	combout => \BTN_RST|Add0~36_combout\,
	cout => \BTN_RST|Add0~37\);

-- Location: FF_X87_Y27_N7
\BTN_RST|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BTN_RST|Add0~36_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(7));

-- Location: LCCOMB_X87_Y26_N12
\BTN_RST|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~38_combout\ = (\BTN_RST|temp\(6) & (!\BTN_RST|Add0~37\)) # (!\BTN_RST|temp\(6) & ((\BTN_RST|Add0~37\) # (GND)))
-- \BTN_RST|Add0~39\ = CARRY((!\BTN_RST|Add0~37\) # (!\BTN_RST|temp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(6),
	datad => VCC,
	cin => \BTN_RST|Add0~37\,
	combout => \BTN_RST|Add0~38_combout\,
	cout => \BTN_RST|Add0~39\);

-- Location: LCCOMB_X87_Y26_N30
\BTN_RST|temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|temp~5_combout\ = (\BTN_RST|Add0~38_combout\ & (((!\BTN_RST|Equal0~6_combout\) # (!\BTN_RST|Equal0~5_combout\)) # (!\BTN_RST|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|Equal0~7_combout\,
	datab => \BTN_RST|Equal0~5_combout\,
	datac => \BTN_RST|Equal0~6_combout\,
	datad => \BTN_RST|Add0~38_combout\,
	combout => \BTN_RST|temp~5_combout\);

-- Location: FF_X87_Y26_N31
\BTN_RST|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|temp~5_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(6));

-- Location: LCCOMB_X87_Y26_N14
\BTN_RST|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~40_combout\ = (\BTN_RST|temp\(5) & (\BTN_RST|Add0~39\ $ (GND))) # (!\BTN_RST|temp\(5) & (!\BTN_RST|Add0~39\ & VCC))
-- \BTN_RST|Add0~41\ = CARRY((\BTN_RST|temp\(5) & !\BTN_RST|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(5),
	datad => VCC,
	cin => \BTN_RST|Add0~39\,
	combout => \BTN_RST|Add0~40_combout\,
	cout => \BTN_RST|Add0~41\);

-- Location: LCCOMB_X87_Y26_N16
\BTN_RST|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~42_combout\ = (\BTN_RST|temp\(4) & (!\BTN_RST|Add0~41\)) # (!\BTN_RST|temp\(4) & ((\BTN_RST|Add0~41\) # (GND)))
-- \BTN_RST|Add0~43\ = CARRY((!\BTN_RST|Add0~41\) # (!\BTN_RST|temp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(4),
	datad => VCC,
	cin => \BTN_RST|Add0~41\,
	combout => \BTN_RST|Add0~42_combout\,
	cout => \BTN_RST|Add0~43\);

-- Location: FF_X87_Y27_N31
\BTN_RST|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BTN_RST|Add0~42_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(4));

-- Location: LCCOMB_X87_Y26_N18
\BTN_RST|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~44_combout\ = (\BTN_RST|temp\(3) & (\BTN_RST|Add0~43\ $ (GND))) # (!\BTN_RST|temp\(3) & (!\BTN_RST|Add0~43\ & VCC))
-- \BTN_RST|Add0~45\ = CARRY((\BTN_RST|temp\(3) & !\BTN_RST|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(3),
	datad => VCC,
	cin => \BTN_RST|Add0~43\,
	combout => \BTN_RST|Add0~44_combout\,
	cout => \BTN_RST|Add0~45\);

-- Location: FF_X86_Y27_N9
\BTN_RST|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BTN_RST|Add0~44_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(3));

-- Location: LCCOMB_X87_Y26_N20
\BTN_RST|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~46_combout\ = (\BTN_RST|temp\(2) & (!\BTN_RST|Add0~45\)) # (!\BTN_RST|temp\(2) & ((\BTN_RST|Add0~45\) # (GND)))
-- \BTN_RST|Add0~47\ = CARRY((!\BTN_RST|Add0~45\) # (!\BTN_RST|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|temp\(2),
	datad => VCC,
	cin => \BTN_RST|Add0~45\,
	combout => \BTN_RST|Add0~46_combout\,
	cout => \BTN_RST|Add0~47\);

-- Location: LCCOMB_X87_Y26_N28
\BTN_RST|temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|temp~7_combout\ = (\BTN_RST|Add0~46_combout\ & (((!\BTN_RST|Equal0~6_combout\) # (!\BTN_RST|Equal0~5_combout\)) # (!\BTN_RST|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|Equal0~7_combout\,
	datab => \BTN_RST|Equal0~5_combout\,
	datac => \BTN_RST|Equal0~6_combout\,
	datad => \BTN_RST|Add0~46_combout\,
	combout => \BTN_RST|temp~7_combout\);

-- Location: FF_X87_Y26_N29
\BTN_RST|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|temp~7_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(2));

-- Location: LCCOMB_X87_Y26_N22
\BTN_RST|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~48_combout\ = (\BTN_RST|temp\(1) & (\BTN_RST|Add0~47\ $ (GND))) # (!\BTN_RST|temp\(1) & (!\BTN_RST|Add0~47\ & VCC))
-- \BTN_RST|Add0~49\ = CARRY((\BTN_RST|temp\(1) & !\BTN_RST|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(1),
	datad => VCC,
	cin => \BTN_RST|Add0~47\,
	combout => \BTN_RST|Add0~48_combout\,
	cout => \BTN_RST|Add0~49\);

-- Location: FF_X87_Y26_N23
\BTN_RST|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|Add0~48_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(1));

-- Location: LCCOMB_X87_Y26_N24
\BTN_RST|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Add0~50_combout\ = \BTN_RST|Add0~49\ $ (\BTN_RST|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BTN_RST|temp\(0),
	cin => \BTN_RST|Add0~49\,
	combout => \BTN_RST|Add0~50_combout\);

-- Location: FF_X87_Y26_N25
\BTN_RST|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|Add0~50_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(0));

-- Location: LCCOMB_X86_Y27_N10
\BTN_RST|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Equal0~3_combout\ = (!\BTN_RST|temp\(7) & (!\BTN_RST|temp\(3) & (!\BTN_RST|temp\(8) & !\BTN_RST|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(7),
	datab => \BTN_RST|temp\(3),
	datac => \BTN_RST|temp\(8),
	datad => \BTN_RST|temp\(4),
	combout => \BTN_RST|Equal0~3_combout\);

-- Location: LCCOMB_X86_Y27_N24
\BTN_RST|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Equal0~2_combout\ = (!\BTN_RST|temp\(11) & (!\BTN_RST|temp\(9) & (!\BTN_RST|temp\(12) & !\BTN_RST|temp\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(11),
	datab => \BTN_RST|temp\(9),
	datac => \BTN_RST|temp\(12),
	datad => \BTN_RST|temp\(14),
	combout => \BTN_RST|Equal0~2_combout\);

-- Location: LCCOMB_X87_Y27_N0
\BTN_RST|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Equal0~1_combout\ = (!\BTN_RST|temp\(17) & (!\BTN_RST|temp\(20) & (!\BTN_RST|temp\(21) & !\BTN_RST|temp\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(17),
	datab => \BTN_RST|temp\(20),
	datac => \BTN_RST|temp\(21),
	datad => \BTN_RST|temp\(19),
	combout => \BTN_RST|Equal0~1_combout\);

-- Location: LCCOMB_X87_Y27_N2
\BTN_RST|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Equal0~0_combout\ = (!\BTN_RST|temp\(22) & (!\BTN_RST|temp\(25) & (!\BTN_RST|temp\(24) & !\BTN_RST|temp\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(22),
	datab => \BTN_RST|temp\(25),
	datac => \BTN_RST|temp\(24),
	datad => \BTN_RST|temp\(23),
	combout => \BTN_RST|Equal0~0_combout\);

-- Location: LCCOMB_X86_Y27_N6
\BTN_RST|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Equal0~4_combout\ = (\BTN_RST|Equal0~3_combout\ & (\BTN_RST|Equal0~2_combout\ & (\BTN_RST|Equal0~1_combout\ & \BTN_RST|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|Equal0~3_combout\,
	datab => \BTN_RST|Equal0~2_combout\,
	datac => \BTN_RST|Equal0~1_combout\,
	datad => \BTN_RST|Equal0~0_combout\,
	combout => \BTN_RST|Equal0~4_combout\);

-- Location: LCCOMB_X86_Y27_N8
\BTN_RST|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Equal0~5_combout\ = (!\BTN_RST|temp\(0) & (!\BTN_RST|temp\(1) & \BTN_RST|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(0),
	datab => \BTN_RST|temp\(1),
	datad => \BTN_RST|Equal0~4_combout\,
	combout => \BTN_RST|Equal0~5_combout\);

-- Location: LCCOMB_X86_Y27_N22
\BTN_RST|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|temp~0_combout\ = (\BTN_RST|Add0~14_combout\ & (((!\BTN_RST|Equal0~5_combout\) # (!\BTN_RST|Equal0~6_combout\)) # (!\BTN_RST|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|Equal0~7_combout\,
	datab => \BTN_RST|Equal0~6_combout\,
	datac => \BTN_RST|Equal0~5_combout\,
	datad => \BTN_RST|Add0~14_combout\,
	combout => \BTN_RST|temp~0_combout\);

-- Location: FF_X86_Y27_N23
\BTN_RST|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|temp~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(18));

-- Location: LCCOMB_X86_Y27_N4
\BTN_RST|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Equal0~6_combout\ = (\BTN_RST|temp\(18) & (\BTN_RST|temp\(16) & (\BTN_RST|temp\(15) & \BTN_RST|temp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(18),
	datab => \BTN_RST|temp\(16),
	datac => \BTN_RST|temp\(15),
	datad => \BTN_RST|temp\(13),
	combout => \BTN_RST|Equal0~6_combout\);

-- Location: LCCOMB_X87_Y26_N26
\BTN_RST|temp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|temp~6_combout\ = (\BTN_RST|Add0~40_combout\ & (((!\BTN_RST|Equal0~7_combout\) # (!\BTN_RST|Equal0~5_combout\)) # (!\BTN_RST|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|Equal0~6_combout\,
	datab => \BTN_RST|Equal0~5_combout\,
	datac => \BTN_RST|Add0~40_combout\,
	datad => \BTN_RST|Equal0~7_combout\,
	combout => \BTN_RST|temp~6_combout\);

-- Location: FF_X86_Y27_N3
\BTN_RST|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BTN_RST|temp~6_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(5));

-- Location: LCCOMB_X86_Y27_N18
\BTN_RST|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Equal0~7_combout\ = (\BTN_RST|temp\(5) & (\BTN_RST|temp\(10) & (\BTN_RST|temp\(2) & \BTN_RST|temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(5),
	datab => \BTN_RST|temp\(10),
	datac => \BTN_RST|temp\(2),
	datad => \BTN_RST|temp\(6),
	combout => \BTN_RST|Equal0~7_combout\);

-- Location: LCCOMB_X86_Y27_N14
\BTN_RST|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|temp~2_combout\ = (\BTN_RST|Add0~20_combout\ & (((!\BTN_RST|Equal0~5_combout\) # (!\BTN_RST|Equal0~6_combout\)) # (!\BTN_RST|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|Equal0~7_combout\,
	datab => \BTN_RST|Equal0~6_combout\,
	datac => \BTN_RST|Add0~20_combout\,
	datad => \BTN_RST|Equal0~5_combout\,
	combout => \BTN_RST|temp~2_combout\);

-- Location: FF_X86_Y27_N15
\BTN_RST|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|temp~2_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|temp\(15));

-- Location: LCCOMB_X86_Y27_N26
\BTN_RST|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Equal1~0_combout\ = (!\BTN_RST|temp\(15) & (!\BTN_RST|temp\(16) & (!\BTN_RST|temp\(18) & !\BTN_RST|temp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(15),
	datab => \BTN_RST|temp\(16),
	datac => \BTN_RST|temp\(18),
	datad => \BTN_RST|temp\(13),
	combout => \BTN_RST|Equal1~0_combout\);

-- Location: LCCOMB_X86_Y27_N2
\BTN_RST|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|Equal1~1_combout\ = (!\BTN_RST|temp\(6) & (!\BTN_RST|temp\(10) & (!\BTN_RST|temp\(5) & !\BTN_RST|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|temp\(6),
	datab => \BTN_RST|temp\(10),
	datac => \BTN_RST|temp\(5),
	datad => \BTN_RST|temp\(2),
	combout => \BTN_RST|Equal1~1_combout\);

-- Location: FF_X86_Y27_N21
\BTN_RST|output[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|output~1_combout\,
	ena => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|output[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X86_Y27_N28
\BTN_RST|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|output~0_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\ & (\BTN_RST|Equal0~6_combout\ & \BTN_RST|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|output[0]~_Duplicate_1_q\,
	datab => \BTN_RST|Equal0~6_combout\,
	datad => \BTN_RST|Equal0~7_combout\,
	combout => \BTN_RST|output~0_combout\);

-- Location: LCCOMB_X86_Y27_N20
\BTN_RST|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_RST|output~1_combout\ = (\BTN_RST|Equal0~5_combout\ & ((\BTN_RST|output~0_combout\) # ((\BTN_RST|Equal1~0_combout\ & \BTN_RST|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|Equal1~0_combout\,
	datab => \BTN_RST|Equal1~1_combout\,
	datac => \BTN_RST|Equal0~5_combout\,
	datad => \BTN_RST|output~0_combout\,
	combout => \BTN_RST|output~1_combout\);

-- Location: DDIOOUTCELL_X83_Y73_N4
\BTN_RST|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_RST|output~1_combout\,
	ena => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_RST|output\(0));

-- Location: LCCOMB_X107_Y50_N6
\BTN_CLK|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~0_combout\ = \BTN_CLK|temp\(25) $ (VCC)
-- \BTN_CLK|Add0~1\ = CARRY(\BTN_CLK|temp\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(25),
	datad => VCC,
	combout => \BTN_CLK|Add0~0_combout\,
	cout => \BTN_CLK|Add0~1\);

-- Location: LCCOMB_X107_Y50_N0
\BTN_CLK|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|temp~2_combout\ = (\BTN_CLK|Add0~0_combout\ & !\BTN_CLK|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|Add0~0_combout\,
	datad => \BTN_CLK|Equal0~9_combout\,
	combout => \BTN_CLK|temp~2_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X107_Y50_N1
\BTN_CLK|temp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|temp~2_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(25));

-- Location: LCCOMB_X107_Y50_N8
\BTN_CLK|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~2_combout\ = (\BTN_CLK|temp\(24) & (!\BTN_CLK|Add0~1\)) # (!\BTN_CLK|temp\(24) & ((\BTN_CLK|Add0~1\) # (GND)))
-- \BTN_CLK|Add0~3\ = CARRY((!\BTN_CLK|Add0~1\) # (!\BTN_CLK|temp\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(24),
	datad => VCC,
	cin => \BTN_CLK|Add0~1\,
	combout => \BTN_CLK|Add0~2_combout\,
	cout => \BTN_CLK|Add0~3\);

-- Location: FF_X107_Y50_N9
\BTN_CLK|temp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~2_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(24));

-- Location: LCCOMB_X107_Y50_N10
\BTN_CLK|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~4_combout\ = (\BTN_CLK|temp\(23) & (\BTN_CLK|Add0~3\ $ (GND))) # (!\BTN_CLK|temp\(23) & (!\BTN_CLK|Add0~3\ & VCC))
-- \BTN_CLK|Add0~5\ = CARRY((\BTN_CLK|temp\(23) & !\BTN_CLK|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(23),
	datad => VCC,
	cin => \BTN_CLK|Add0~3\,
	combout => \BTN_CLK|Add0~4_combout\,
	cout => \BTN_CLK|Add0~5\);

-- Location: FF_X107_Y50_N11
\BTN_CLK|temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~4_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(23));

-- Location: LCCOMB_X107_Y50_N12
\BTN_CLK|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~6_combout\ = (\BTN_CLK|temp\(22) & (!\BTN_CLK|Add0~5\)) # (!\BTN_CLK|temp\(22) & ((\BTN_CLK|Add0~5\) # (GND)))
-- \BTN_CLK|Add0~7\ = CARRY((!\BTN_CLK|Add0~5\) # (!\BTN_CLK|temp\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(22),
	datad => VCC,
	cin => \BTN_CLK|Add0~5\,
	combout => \BTN_CLK|Add0~6_combout\,
	cout => \BTN_CLK|Add0~7\);

-- Location: FF_X107_Y50_N13
\BTN_CLK|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~6_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(22));

-- Location: LCCOMB_X107_Y50_N14
\BTN_CLK|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~8_combout\ = (\BTN_CLK|temp\(21) & (\BTN_CLK|Add0~7\ $ (GND))) # (!\BTN_CLK|temp\(21) & (!\BTN_CLK|Add0~7\ & VCC))
-- \BTN_CLK|Add0~9\ = CARRY((\BTN_CLK|temp\(21) & !\BTN_CLK|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(21),
	datad => VCC,
	cin => \BTN_CLK|Add0~7\,
	combout => \BTN_CLK|Add0~8_combout\,
	cout => \BTN_CLK|Add0~9\);

-- Location: FF_X107_Y50_N15
\BTN_CLK|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~8_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(21));

-- Location: LCCOMB_X107_Y50_N16
\BTN_CLK|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~10_combout\ = (\BTN_CLK|temp\(20) & (!\BTN_CLK|Add0~9\)) # (!\BTN_CLK|temp\(20) & ((\BTN_CLK|Add0~9\) # (GND)))
-- \BTN_CLK|Add0~11\ = CARRY((!\BTN_CLK|Add0~9\) # (!\BTN_CLK|temp\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(20),
	datad => VCC,
	cin => \BTN_CLK|Add0~9\,
	combout => \BTN_CLK|Add0~10_combout\,
	cout => \BTN_CLK|Add0~11\);

-- Location: FF_X107_Y50_N17
\BTN_CLK|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~10_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(20));

-- Location: LCCOMB_X107_Y50_N18
\BTN_CLK|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~12_combout\ = (\BTN_CLK|temp\(19) & (\BTN_CLK|Add0~11\ $ (GND))) # (!\BTN_CLK|temp\(19) & (!\BTN_CLK|Add0~11\ & VCC))
-- \BTN_CLK|Add0~13\ = CARRY((\BTN_CLK|temp\(19) & !\BTN_CLK|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(19),
	datad => VCC,
	cin => \BTN_CLK|Add0~11\,
	combout => \BTN_CLK|Add0~12_combout\,
	cout => \BTN_CLK|Add0~13\);

-- Location: FF_X107_Y50_N19
\BTN_CLK|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~12_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(19));

-- Location: LCCOMB_X107_Y50_N20
\BTN_CLK|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~14_combout\ = (\BTN_CLK|temp\(18) & (!\BTN_CLK|Add0~13\)) # (!\BTN_CLK|temp\(18) & ((\BTN_CLK|Add0~13\) # (GND)))
-- \BTN_CLK|Add0~15\ = CARRY((!\BTN_CLK|Add0~13\) # (!\BTN_CLK|temp\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(18),
	datad => VCC,
	cin => \BTN_CLK|Add0~13\,
	combout => \BTN_CLK|Add0~14_combout\,
	cout => \BTN_CLK|Add0~15\);

-- Location: LCCOMB_X108_Y50_N4
\BTN_CLK|temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|temp~3_combout\ = (!\BTN_CLK|Equal0~9_combout\ & \BTN_CLK|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|Equal0~9_combout\,
	datad => \BTN_CLK|Add0~14_combout\,
	combout => \BTN_CLK|temp~3_combout\);

-- Location: FF_X108_Y50_N5
\BTN_CLK|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|temp~3_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(18));

-- Location: LCCOMB_X107_Y50_N22
\BTN_CLK|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~16_combout\ = (\BTN_CLK|temp\(17) & (\BTN_CLK|Add0~15\ $ (GND))) # (!\BTN_CLK|temp\(17) & (!\BTN_CLK|Add0~15\ & VCC))
-- \BTN_CLK|Add0~17\ = CARRY((\BTN_CLK|temp\(17) & !\BTN_CLK|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(17),
	datad => VCC,
	cin => \BTN_CLK|Add0~15\,
	combout => \BTN_CLK|Add0~16_combout\,
	cout => \BTN_CLK|Add0~17\);

-- Location: FF_X107_Y50_N23
\BTN_CLK|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~16_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(17));

-- Location: LCCOMB_X107_Y50_N24
\BTN_CLK|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~18_combout\ = (\BTN_CLK|temp\(16) & (!\BTN_CLK|Add0~17\)) # (!\BTN_CLK|temp\(16) & ((\BTN_CLK|Add0~17\) # (GND)))
-- \BTN_CLK|Add0~19\ = CARRY((!\BTN_CLK|Add0~17\) # (!\BTN_CLK|temp\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(16),
	datad => VCC,
	cin => \BTN_CLK|Add0~17\,
	combout => \BTN_CLK|Add0~18_combout\,
	cout => \BTN_CLK|Add0~19\);

-- Location: LCCOMB_X107_Y50_N26
\BTN_CLK|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~20_combout\ = (\BTN_CLK|temp\(15) & (\BTN_CLK|Add0~19\ $ (GND))) # (!\BTN_CLK|temp\(15) & (!\BTN_CLK|Add0~19\ & VCC))
-- \BTN_CLK|Add0~21\ = CARRY((\BTN_CLK|temp\(15) & !\BTN_CLK|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(15),
	datad => VCC,
	cin => \BTN_CLK|Add0~19\,
	combout => \BTN_CLK|Add0~20_combout\,
	cout => \BTN_CLK|Add0~21\);

-- Location: LCCOMB_X107_Y50_N4
\BTN_CLK|temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|temp~5_combout\ = (\BTN_CLK|Add0~20_combout\ & !\BTN_CLK|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_CLK|Add0~20_combout\,
	datad => \BTN_CLK|Equal0~9_combout\,
	combout => \BTN_CLK|temp~5_combout\);

-- Location: FF_X107_Y50_N5
\BTN_CLK|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|temp~5_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(15));

-- Location: LCCOMB_X107_Y50_N28
\BTN_CLK|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~22_combout\ = (\BTN_CLK|temp\(14) & (!\BTN_CLK|Add0~21\)) # (!\BTN_CLK|temp\(14) & ((\BTN_CLK|Add0~21\) # (GND)))
-- \BTN_CLK|Add0~23\ = CARRY((!\BTN_CLK|Add0~21\) # (!\BTN_CLK|temp\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(14),
	datad => VCC,
	cin => \BTN_CLK|Add0~21\,
	combout => \BTN_CLK|Add0~22_combout\,
	cout => \BTN_CLK|Add0~23\);

-- Location: FF_X107_Y50_N29
\BTN_CLK|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~22_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(14));

-- Location: LCCOMB_X107_Y50_N30
\BTN_CLK|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~24_combout\ = (\BTN_CLK|temp\(13) & (\BTN_CLK|Add0~23\ $ (GND))) # (!\BTN_CLK|temp\(13) & (!\BTN_CLK|Add0~23\ & VCC))
-- \BTN_CLK|Add0~25\ = CARRY((\BTN_CLK|temp\(13) & !\BTN_CLK|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(13),
	datad => VCC,
	cin => \BTN_CLK|Add0~23\,
	combout => \BTN_CLK|Add0~24_combout\,
	cout => \BTN_CLK|Add0~25\);

-- Location: LCCOMB_X108_Y50_N20
\BTN_CLK|temp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|temp~6_combout\ = (!\BTN_CLK|Equal0~9_combout\ & \BTN_CLK|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|Equal0~9_combout\,
	datad => \BTN_CLK|Add0~24_combout\,
	combout => \BTN_CLK|temp~6_combout\);

-- Location: FF_X108_Y50_N21
\BTN_CLK|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|temp~6_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(13));

-- Location: LCCOMB_X107_Y49_N0
\BTN_CLK|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~26_combout\ = (\BTN_CLK|temp\(12) & (!\BTN_CLK|Add0~25\)) # (!\BTN_CLK|temp\(12) & ((\BTN_CLK|Add0~25\) # (GND)))
-- \BTN_CLK|Add0~27\ = CARRY((!\BTN_CLK|Add0~25\) # (!\BTN_CLK|temp\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(12),
	datad => VCC,
	cin => \BTN_CLK|Add0~25\,
	combout => \BTN_CLK|Add0~26_combout\,
	cout => \BTN_CLK|Add0~27\);

-- Location: FF_X107_Y49_N1
\BTN_CLK|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~26_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(12));

-- Location: LCCOMB_X107_Y49_N2
\BTN_CLK|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~28_combout\ = (\BTN_CLK|temp\(11) & (\BTN_CLK|Add0~27\ $ (GND))) # (!\BTN_CLK|temp\(11) & (!\BTN_CLK|Add0~27\ & VCC))
-- \BTN_CLK|Add0~29\ = CARRY((\BTN_CLK|temp\(11) & !\BTN_CLK|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(11),
	datad => VCC,
	cin => \BTN_CLK|Add0~27\,
	combout => \BTN_CLK|Add0~28_combout\,
	cout => \BTN_CLK|Add0~29\);

-- Location: FF_X107_Y49_N3
\BTN_CLK|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~28_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(11));

-- Location: LCCOMB_X107_Y49_N4
\BTN_CLK|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~30_combout\ = (\BTN_CLK|temp\(10) & (!\BTN_CLK|Add0~29\)) # (!\BTN_CLK|temp\(10) & ((\BTN_CLK|Add0~29\) # (GND)))
-- \BTN_CLK|Add0~31\ = CARRY((!\BTN_CLK|Add0~29\) # (!\BTN_CLK|temp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(10),
	datad => VCC,
	cin => \BTN_CLK|Add0~29\,
	combout => \BTN_CLK|Add0~30_combout\,
	cout => \BTN_CLK|Add0~31\);

-- Location: LCCOMB_X108_Y49_N12
\BTN_CLK|temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|temp~7_combout\ = (\BTN_CLK|Add0~30_combout\ & !\BTN_CLK|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_CLK|Add0~30_combout\,
	datad => \BTN_CLK|Equal0~9_combout\,
	combout => \BTN_CLK|temp~7_combout\);

-- Location: FF_X108_Y49_N13
\BTN_CLK|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|temp~7_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(10));

-- Location: LCCOMB_X107_Y49_N6
\BTN_CLK|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~32_combout\ = (\BTN_CLK|temp\(9) & (\BTN_CLK|Add0~31\ $ (GND))) # (!\BTN_CLK|temp\(9) & (!\BTN_CLK|Add0~31\ & VCC))
-- \BTN_CLK|Add0~33\ = CARRY((\BTN_CLK|temp\(9) & !\BTN_CLK|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(9),
	datad => VCC,
	cin => \BTN_CLK|Add0~31\,
	combout => \BTN_CLK|Add0~32_combout\,
	cout => \BTN_CLK|Add0~33\);

-- Location: FF_X107_Y49_N7
\BTN_CLK|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~32_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(9));

-- Location: LCCOMB_X107_Y49_N8
\BTN_CLK|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~34_combout\ = (\BTN_CLK|temp\(8) & (!\BTN_CLK|Add0~33\)) # (!\BTN_CLK|temp\(8) & ((\BTN_CLK|Add0~33\) # (GND)))
-- \BTN_CLK|Add0~35\ = CARRY((!\BTN_CLK|Add0~33\) # (!\BTN_CLK|temp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(8),
	datad => VCC,
	cin => \BTN_CLK|Add0~33\,
	combout => \BTN_CLK|Add0~34_combout\,
	cout => \BTN_CLK|Add0~35\);

-- Location: FF_X107_Y49_N9
\BTN_CLK|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~34_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(8));

-- Location: LCCOMB_X107_Y49_N10
\BTN_CLK|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~36_combout\ = (\BTN_CLK|temp\(7) & (\BTN_CLK|Add0~35\ $ (GND))) # (!\BTN_CLK|temp\(7) & (!\BTN_CLK|Add0~35\ & VCC))
-- \BTN_CLK|Add0~37\ = CARRY((\BTN_CLK|temp\(7) & !\BTN_CLK|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(7),
	datad => VCC,
	cin => \BTN_CLK|Add0~35\,
	combout => \BTN_CLK|Add0~36_combout\,
	cout => \BTN_CLK|Add0~37\);

-- Location: FF_X107_Y49_N11
\BTN_CLK|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~36_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(7));

-- Location: LCCOMB_X107_Y49_N12
\BTN_CLK|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~38_combout\ = (\BTN_CLK|temp\(6) & (!\BTN_CLK|Add0~37\)) # (!\BTN_CLK|temp\(6) & ((\BTN_CLK|Add0~37\) # (GND)))
-- \BTN_CLK|Add0~39\ = CARRY((!\BTN_CLK|Add0~37\) # (!\BTN_CLK|temp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(6),
	datad => VCC,
	cin => \BTN_CLK|Add0~37\,
	combout => \BTN_CLK|Add0~38_combout\,
	cout => \BTN_CLK|Add0~39\);

-- Location: LCCOMB_X107_Y49_N28
\BTN_CLK|temp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|temp~8_combout\ = (!\BTN_CLK|Equal0~9_combout\ & \BTN_CLK|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_CLK|Equal0~9_combout\,
	datad => \BTN_CLK|Add0~38_combout\,
	combout => \BTN_CLK|temp~8_combout\);

-- Location: FF_X107_Y49_N29
\BTN_CLK|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|temp~8_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(6));

-- Location: LCCOMB_X107_Y49_N14
\BTN_CLK|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~40_combout\ = (\BTN_CLK|temp\(5) & (\BTN_CLK|Add0~39\ $ (GND))) # (!\BTN_CLK|temp\(5) & (!\BTN_CLK|Add0~39\ & VCC))
-- \BTN_CLK|Add0~41\ = CARRY((\BTN_CLK|temp\(5) & !\BTN_CLK|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(5),
	datad => VCC,
	cin => \BTN_CLK|Add0~39\,
	combout => \BTN_CLK|Add0~40_combout\,
	cout => \BTN_CLK|Add0~41\);

-- Location: LCCOMB_X108_Y49_N18
\BTN_CLK|temp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|temp~9_combout\ = (!\BTN_CLK|Equal0~9_combout\ & \BTN_CLK|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_CLK|Equal0~9_combout\,
	datad => \BTN_CLK|Add0~40_combout\,
	combout => \BTN_CLK|temp~9_combout\);

-- Location: FF_X108_Y49_N19
\BTN_CLK|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|temp~9_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(5));

-- Location: LCCOMB_X108_Y49_N2
\BTN_CLK|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Equal0~7_combout\ = (\BTN_CLK|temp\(10) & (\BTN_CLK|temp\(5) & (\BTN_CLK|temp\(2) & \BTN_CLK|temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(10),
	datab => \BTN_CLK|temp\(5),
	datac => \BTN_CLK|temp\(2),
	datad => \BTN_CLK|temp\(6),
	combout => \BTN_CLK|Equal0~7_combout\);

-- Location: LCCOMB_X108_Y50_N26
\BTN_CLK|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Equal0~6_combout\ = (\BTN_CLK|temp\(16) & (\BTN_CLK|temp\(18) & (\BTN_CLK|temp\(15) & \BTN_CLK|temp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(16),
	datab => \BTN_CLK|temp\(18),
	datac => \BTN_CLK|temp\(15),
	datad => \BTN_CLK|temp\(13),
	combout => \BTN_CLK|Equal0~6_combout\);

-- Location: LCCOMB_X107_Y50_N2
\BTN_CLK|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Equal0~0_combout\ = (!\BTN_CLK|temp\(23) & (!\BTN_CLK|temp\(25) & (!\BTN_CLK|temp\(24) & !\BTN_CLK|temp\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(23),
	datab => \BTN_CLK|temp\(25),
	datac => \BTN_CLK|temp\(24),
	datad => \BTN_CLK|temp\(22),
	combout => \BTN_CLK|Equal0~0_combout\);

-- Location: LCCOMB_X108_Y50_N18
\BTN_CLK|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Equal0~1_combout\ = (!\BTN_CLK|temp\(21) & (!\BTN_CLK|temp\(17) & (!\BTN_CLK|temp\(20) & !\BTN_CLK|temp\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(21),
	datab => \BTN_CLK|temp\(17),
	datac => \BTN_CLK|temp\(20),
	datad => \BTN_CLK|temp\(19),
	combout => \BTN_CLK|Equal0~1_combout\);

-- Location: LCCOMB_X107_Y49_N16
\BTN_CLK|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~42_combout\ = (\BTN_CLK|temp\(4) & (!\BTN_CLK|Add0~41\)) # (!\BTN_CLK|temp\(4) & ((\BTN_CLK|Add0~41\) # (GND)))
-- \BTN_CLK|Add0~43\ = CARRY((!\BTN_CLK|Add0~41\) # (!\BTN_CLK|temp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(4),
	datad => VCC,
	cin => \BTN_CLK|Add0~41\,
	combout => \BTN_CLK|Add0~42_combout\,
	cout => \BTN_CLK|Add0~43\);

-- Location: FF_X107_Y49_N17
\BTN_CLK|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~42_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(4));

-- Location: LCCOMB_X107_Y49_N18
\BTN_CLK|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~44_combout\ = (\BTN_CLK|temp\(3) & (\BTN_CLK|Add0~43\ $ (GND))) # (!\BTN_CLK|temp\(3) & (!\BTN_CLK|Add0~43\ & VCC))
-- \BTN_CLK|Add0~45\ = CARRY((\BTN_CLK|temp\(3) & !\BTN_CLK|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|temp\(3),
	datad => VCC,
	cin => \BTN_CLK|Add0~43\,
	combout => \BTN_CLK|Add0~44_combout\,
	cout => \BTN_CLK|Add0~45\);

-- Location: FF_X107_Y49_N19
\BTN_CLK|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~44_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(3));

-- Location: LCCOMB_X107_Y49_N30
\BTN_CLK|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Equal0~3_combout\ = (!\BTN_CLK|temp\(7) & (!\BTN_CLK|temp\(3) & (!\BTN_CLK|temp\(8) & !\BTN_CLK|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(7),
	datab => \BTN_CLK|temp\(3),
	datac => \BTN_CLK|temp\(8),
	datad => \BTN_CLK|temp\(4),
	combout => \BTN_CLK|Equal0~3_combout\);

-- Location: LCCOMB_X108_Y50_N12
\BTN_CLK|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Equal0~2_combout\ = (!\BTN_CLK|temp\(11) & (!\BTN_CLK|temp\(14) & (!\BTN_CLK|temp\(12) & !\BTN_CLK|temp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(11),
	datab => \BTN_CLK|temp\(14),
	datac => \BTN_CLK|temp\(12),
	datad => \BTN_CLK|temp\(9),
	combout => \BTN_CLK|Equal0~2_combout\);

-- Location: LCCOMB_X108_Y50_N10
\BTN_CLK|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Equal0~4_combout\ = (\BTN_CLK|Equal0~0_combout\ & (\BTN_CLK|Equal0~1_combout\ & (\BTN_CLK|Equal0~3_combout\ & \BTN_CLK|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|Equal0~0_combout\,
	datab => \BTN_CLK|Equal0~1_combout\,
	datac => \BTN_CLK|Equal0~3_combout\,
	datad => \BTN_CLK|Equal0~2_combout\,
	combout => \BTN_CLK|Equal0~4_combout\);

-- Location: LCCOMB_X108_Y50_N30
\BTN_CLK|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Equal0~5_combout\ = (!\BTN_CLK|temp\(0) & (!\BTN_CLK|temp\(1) & \BTN_CLK|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(0),
	datac => \BTN_CLK|temp\(1),
	datad => \BTN_CLK|Equal0~4_combout\,
	combout => \BTN_CLK|Equal0~5_combout\);

-- Location: LCCOMB_X107_Y49_N20
\BTN_CLK|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~46_combout\ = (\BTN_CLK|temp\(2) & (!\BTN_CLK|Add0~45\)) # (!\BTN_CLK|temp\(2) & ((\BTN_CLK|Add0~45\) # (GND)))
-- \BTN_CLK|Add0~47\ = CARRY((!\BTN_CLK|Add0~45\) # (!\BTN_CLK|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(2),
	datad => VCC,
	cin => \BTN_CLK|Add0~45\,
	combout => \BTN_CLK|Add0~46_combout\,
	cout => \BTN_CLK|Add0~47\);

-- Location: LCCOMB_X107_Y49_N26
\BTN_CLK|temp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|temp~10_combout\ = (\BTN_CLK|Add0~46_combout\ & (((!\BTN_CLK|Equal0~5_combout\) # (!\BTN_CLK|Equal0~6_combout\)) # (!\BTN_CLK|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|Equal0~7_combout\,
	datab => \BTN_CLK|Equal0~6_combout\,
	datac => \BTN_CLK|Equal0~5_combout\,
	datad => \BTN_CLK|Add0~46_combout\,
	combout => \BTN_CLK|temp~10_combout\);

-- Location: FF_X107_Y49_N27
\BTN_CLK|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|temp~10_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(2));

-- Location: LCCOMB_X107_Y49_N22
\BTN_CLK|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~48_combout\ = (\BTN_CLK|temp\(1) & (\BTN_CLK|Add0~47\ $ (GND))) # (!\BTN_CLK|temp\(1) & (!\BTN_CLK|Add0~47\ & VCC))
-- \BTN_CLK|Add0~49\ = CARRY((\BTN_CLK|temp\(1) & !\BTN_CLK|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(1),
	datad => VCC,
	cin => \BTN_CLK|Add0~47\,
	combout => \BTN_CLK|Add0~48_combout\,
	cout => \BTN_CLK|Add0~49\);

-- Location: FF_X107_Y49_N23
\BTN_CLK|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~48_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(1));

-- Location: LCCOMB_X107_Y49_N24
\BTN_CLK|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Add0~50_combout\ = \BTN_CLK|Add0~49\ $ (\BTN_CLK|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BTN_CLK|temp\(0),
	cin => \BTN_CLK|Add0~49\,
	combout => \BTN_CLK|Add0~50_combout\);

-- Location: FF_X107_Y49_N25
\BTN_CLK|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|Add0~50_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(0));

-- Location: LCCOMB_X108_Y50_N24
\BTN_CLK|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Equal0~8_combout\ = (\BTN_CLK|Equal0~6_combout\ & \BTN_CLK|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_CLK|Equal0~6_combout\,
	datad => \BTN_CLK|Equal0~7_combout\,
	combout => \BTN_CLK|Equal0~8_combout\);

-- Location: LCCOMB_X108_Y50_N28
\BTN_CLK|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Equal0~9_combout\ = (!\BTN_CLK|temp\(0) & (\BTN_CLK|Equal0~8_combout\ & (!\BTN_CLK|temp\(1) & \BTN_CLK|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(0),
	datab => \BTN_CLK|Equal0~8_combout\,
	datac => \BTN_CLK|temp\(1),
	datad => \BTN_CLK|Equal0~4_combout\,
	combout => \BTN_CLK|Equal0~9_combout\);

-- Location: LCCOMB_X108_Y50_N22
\BTN_CLK|temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|temp~4_combout\ = (!\BTN_CLK|Equal0~9_combout\ & \BTN_CLK|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_CLK|Equal0~9_combout\,
	datad => \BTN_CLK|Add0~18_combout\,
	combout => \BTN_CLK|temp~4_combout\);

-- Location: FF_X108_Y50_N23
\BTN_CLK|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|temp~4_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|temp\(16));

-- Location: LCCOMB_X108_Y50_N14
\BTN_CLK|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Equal1~0_combout\ = (!\BTN_CLK|temp\(16) & (!\BTN_CLK|temp\(18) & (!\BTN_CLK|temp\(15) & !\BTN_CLK|temp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(16),
	datab => \BTN_CLK|temp\(18),
	datac => \BTN_CLK|temp\(15),
	datad => \BTN_CLK|temp\(13),
	combout => \BTN_CLK|Equal1~0_combout\);

-- Location: LCCOMB_X108_Y49_N0
\BTN_CLK|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Equal1~1_combout\ = (!\BTN_CLK|temp\(10) & (!\BTN_CLK|temp\(5) & (!\BTN_CLK|temp\(2) & !\BTN_CLK|temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|temp\(10),
	datab => \BTN_CLK|temp\(5),
	datac => \BTN_CLK|temp\(2),
	datad => \BTN_CLK|temp\(6),
	combout => \BTN_CLK|Equal1~1_combout\);

-- Location: LCCOMB_X108_Y50_N8
\BTN_CLK|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|Equal1~2_combout\ = (\BTN_CLK|Equal1~0_combout\ & \BTN_CLK|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_CLK|Equal1~0_combout\,
	datad => \BTN_CLK|Equal1~1_combout\,
	combout => \BTN_CLK|Equal1~2_combout\);

-- Location: LCCOMB_X108_Y50_N6
\BTN_CLK|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|output~0_combout\ = (\BTN_CLK|Equal0~5_combout\ & ((\BTN_CLK|Equal1~2_combout\) # ((\BTN_CLK|Equal0~8_combout\ & \BTN_CLK|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_CLK|Equal1~2_combout\,
	datab => \BTN_CLK|Equal0~8_combout\,
	datac => \BTN_CLK|Equal0~5_combout\,
	datad => \BTN_CLK|output\(0),
	combout => \BTN_CLK|output~0_combout\);

-- Location: LCCOMB_X108_Y50_N16
\BTN_CLK|output[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|output[0]~feeder_combout\ = \BTN_CLK|output~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_CLK|output~0_combout\,
	combout => \BTN_CLK|output[0]~feeder_combout\);

-- Location: FF_X108_Y50_N17
\BTN_CLK|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BTN_CLK|output[0]~feeder_combout\,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|output\(0));

-- Location: CLKCTRL_G8
\BTN_CLK|output[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \BTN_CLK|output[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \BTN_CLK|output[0]~clkctrl_outclk\);

-- Location: LCCOMB_X90_Y8_N14
\FD|PC|DOUT[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[2]~6_combout\ = \FD|PC|DOUT\(2) $ (VCC)
-- \FD|PC|DOUT[2]~7\ = CARRY(\FD|PC|DOUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datad => VCC,
	combout => \FD|PC|DOUT[2]~6_combout\,
	cout => \FD|PC|DOUT[2]~7\);

-- Location: FF_X90_Y8_N15
\FD|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|PC|DOUT[2]~6_combout\,
	clrn => \BTN_RST|ALT_INV_output[0]~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(2));

-- Location: LCCOMB_X90_Y8_N16
\FD|PC|DOUT[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[3]~8_combout\ = (\FD|PC|DOUT\(3) & (!\FD|PC|DOUT[2]~7\)) # (!\FD|PC|DOUT\(3) & ((\FD|PC|DOUT[2]~7\) # (GND)))
-- \FD|PC|DOUT[3]~9\ = CARRY((!\FD|PC|DOUT[2]~7\) # (!\FD|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(3),
	datad => VCC,
	cin => \FD|PC|DOUT[2]~7\,
	combout => \FD|PC|DOUT[3]~8_combout\,
	cout => \FD|PC|DOUT[3]~9\);

-- Location: FF_X90_Y8_N17
\FD|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|PC|DOUT[3]~8_combout\,
	clrn => \BTN_RST|ALT_INV_output[0]~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(3));

-- Location: LCCOMB_X90_Y8_N18
\FD|PC|DOUT[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[4]~10_combout\ = (\FD|PC|DOUT\(4) & (\FD|PC|DOUT[3]~9\ $ (GND))) # (!\FD|PC|DOUT\(4) & (!\FD|PC|DOUT[3]~9\ & VCC))
-- \FD|PC|DOUT[4]~11\ = CARRY((\FD|PC|DOUT\(4) & !\FD|PC|DOUT[3]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(4),
	datad => VCC,
	cin => \FD|PC|DOUT[3]~9\,
	combout => \FD|PC|DOUT[4]~10_combout\,
	cout => \FD|PC|DOUT[4]~11\);

-- Location: FF_X90_Y8_N19
\FD|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|PC|DOUT[4]~10_combout\,
	clrn => \BTN_RST|ALT_INV_output[0]~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(4));

-- Location: LCCOMB_X90_Y8_N20
\FD|PC|DOUT[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[5]~12_combout\ = (\FD|PC|DOUT\(5) & (!\FD|PC|DOUT[4]~11\)) # (!\FD|PC|DOUT\(5) & ((\FD|PC|DOUT[4]~11\) # (GND)))
-- \FD|PC|DOUT[5]~13\ = CARRY((!\FD|PC|DOUT[4]~11\) # (!\FD|PC|DOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datad => VCC,
	cin => \FD|PC|DOUT[4]~11\,
	combout => \FD|PC|DOUT[5]~12_combout\,
	cout => \FD|PC|DOUT[5]~13\);

-- Location: FF_X90_Y8_N21
\FD|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|PC|DOUT[5]~12_combout\,
	clrn => \BTN_RST|ALT_INV_output[0]~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(5));

-- Location: LCCOMB_X90_Y8_N28
\FD|Mem_Inst|MemoriaDeInstrucao~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ = (!\FD|PC|DOUT\(4) & (!\FD|PC|DOUT\(5) & !\FD|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|PC|DOUT\(3),
	combout => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\);

-- Location: LCCOMB_X89_Y8_N20
\FD|UC_ULA|ULActrl[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UC_ULA|ULActrl[1]~4_combout\ = (\FD|PC|DOUT\(5)) # (((\FD|PC|DOUT\(2)) # (\FD|PC|DOUT\(4))) # (!\FD|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(3),
	datac => \FD|PC|DOUT\(2),
	datad => \FD|PC|DOUT\(4),
	combout => \FD|UC_ULA|ULActrl[1]~4_combout\);

-- Location: LCCOMB_X89_Y8_N14
\FD|Banco_Regis|registers~1067\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1067_combout\ = (!\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(3) & (!\FD|PC|DOUT\(2) & !\FD|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(3),
	datac => \FD|PC|DOUT\(2),
	datad => \FD|PC|DOUT\(4),
	combout => \FD|Banco_Regis|registers~1067_combout\);

-- Location: LCCOMB_X90_Y8_N0
\FD|Mem_Inst|MemoriaDeInstrucao~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ = (!\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(4) & (\FD|PC|DOUT\(3) $ (\FD|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(3),
	datab => \FD|PC|DOUT\(5),
	datac => \FD|PC|DOUT\(2),
	datad => \FD|PC|DOUT\(4),
	combout => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\);

-- Location: LCCOMB_X90_Y8_N2
\FD|ALU|Bnot|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~0_combout\ = (\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & ((\FD|PC|DOUT\(2) & (!\FD|Banco_Regis|registers~358_q\)) # (!\FD|PC|DOUT\(2) & ((!\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\))))) # (!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & 
-- (((\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~358_q\,
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	combout => \FD|ALU|Bnot|Add0~0_combout\);

-- Location: LCCOMB_X90_Y8_N26
\FD|UC_ULA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UC_ULA|Equal0~0_combout\ = (!\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(4) & (\FD|PC|DOUT\(3) $ (\FD|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(3),
	datac => \FD|PC|DOUT\(2),
	datad => \FD|PC|DOUT\(4),
	combout => \FD|UC_ULA|Equal0~0_combout\);

-- Location: LCCOMB_X91_Y10_N0
\FD|ALU|Bnot|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~1_combout\ = (\FD|ALU|Bnot|Add0~0_combout\ & (!\FD|UC_ULA|Equal0~0_combout\ & VCC)) # (!\FD|ALU|Bnot|Add0~0_combout\ & (\FD|UC_ULA|Equal0~0_combout\ $ (GND)))
-- \FD|ALU|Bnot|Add0~2\ = CARRY((!\FD|ALU|Bnot|Add0~0_combout\ & !\FD|UC_ULA|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Bnot|Add0~0_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	combout => \FD|ALU|Bnot|Add0~1_combout\,
	cout => \FD|ALU|Bnot|Add0~2\);

-- Location: LCCOMB_X90_Y10_N0
\FD|ALU|somaSub[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[0]~0_combout\ = (\FD|Banco_Regis|registers~1067_combout\ & (\FD|ALU|Bnot|Add0~1_combout\ $ (VCC))) # (!\FD|Banco_Regis|registers~1067_combout\ & (\FD|ALU|Bnot|Add0~1_combout\ & VCC))
-- \FD|ALU|somaSub[0]~1\ = CARRY((\FD|Banco_Regis|registers~1067_combout\ & \FD|ALU|Bnot|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1067_combout\,
	datab => \FD|ALU|Bnot|Add0~1_combout\,
	datad => VCC,
	combout => \FD|ALU|somaSub[0]~0_combout\,
	cout => \FD|ALU|somaSub[0]~1\);

-- Location: LCCOMB_X91_Y8_N20
\FD|ALU|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~1_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & (((\FD|ALU|somaSub[0]~0_combout\)))) # (!\FD|UC_ULA|ULActrl[1]~4_combout\ & (\FD|Banco_Regis|registers~1067_combout\ & ((\FD|ALU|Bnot|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datab => \FD|Banco_Regis|registers~1067_combout\,
	datac => \FD|ALU|somaSub[0]~0_combout\,
	datad => \FD|ALU|Bnot|Add0~1_combout\,
	combout => \FD|ALU|Add0~1_combout\);

-- Location: LCCOMB_X91_Y8_N12
\FD|Banco_Regis|registers~1096\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1096_combout\ = (\FD|PC|DOUT\(2) & (\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	combout => \FD|Banco_Regis|registers~1096_combout\);

-- Location: FF_X91_Y8_N21
\FD|Banco_Regis|registers~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~1_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~358_q\);

-- Location: LCCOMB_X91_Y8_N10
\FD|Banco_Regis|registers~1095\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1095_combout\ = (\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & ((\FD|Banco_Regis|registers~358_q\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|Banco_Regis|registers~358_q\,
	combout => \FD|Banco_Regis|registers~1095_combout\);

-- Location: LCCOMB_X91_Y8_N2
\FD|ALU|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~31_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[31]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[31]~62_combout\,
	combout => \FD|ALU|Add0~31_combout\);

-- Location: FF_X91_Y8_N3
\FD|Banco_Regis|registers~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~31_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~389_q\);

-- Location: LCCOMB_X91_Y8_N24
\FD|Banco_Regis|registers~1094\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1094_combout\ = (\FD|PC|DOUT\(2) & (\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & \FD|Banco_Regis|registers~389_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|Banco_Regis|registers~389_q\,
	combout => \FD|Banco_Regis|registers~1094_combout\);

-- Location: LCCOMB_X89_Y8_N8
\FD|Banco_Regis|registers~1066\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1066_combout\ = (!\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(3) & (\FD|PC|DOUT\(2) & !\FD|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(3),
	datac => \FD|PC|DOUT\(2),
	datad => \FD|PC|DOUT\(4),
	combout => \FD|Banco_Regis|registers~1066_combout\);

-- Location: LCCOMB_X91_Y10_N2
\FD|ALU|Bnot|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~3_combout\ = (\FD|ALU|Bnot|Add0~2\ & (\FD|Banco_Regis|registers~1062_combout\ $ ((\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~2\ & ((\FD|Banco_Regis|registers~1062_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~4\ = CARRY((\FD|Banco_Regis|registers~1062_combout\ $ (\FD|UC_ULA|Equal0~0_combout\)) # (!\FD|ALU|Bnot|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1062_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~2\,
	combout => \FD|ALU|Bnot|Add0~3_combout\,
	cout => \FD|ALU|Bnot|Add0~4\);

-- Location: LCCOMB_X90_Y10_N2
\FD|ALU|somaSub[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[1]~2_combout\ = (\FD|ALU|Bnot|Add0~3_combout\ & (!\FD|ALU|somaSub[0]~1\)) # (!\FD|ALU|Bnot|Add0~3_combout\ & ((\FD|ALU|somaSub[0]~1\) # (GND)))
-- \FD|ALU|somaSub[1]~3\ = CARRY((!\FD|ALU|somaSub[0]~1\) # (!\FD|ALU|Bnot|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Bnot|Add0~3_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[0]~1\,
	combout => \FD|ALU|somaSub[1]~2_combout\,
	cout => \FD|ALU|somaSub[1]~3\);

-- Location: LCCOMB_X91_Y8_N8
\FD|ALU|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~2_combout\ = (!\FD|ALU|somaSub[1]~2_combout\) # (!\FD|UC_ULA|ULActrl[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[1]~2_combout\,
	combout => \FD|ALU|Add0~2_combout\);

-- Location: FF_X91_Y8_N9
\FD|Banco_Regis|registers~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~2_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~359_q\);

-- Location: LCCOMB_X91_Y8_N14
\FD|Banco_Regis|registers~1062\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1062_combout\ = (\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & ((!\FD|Banco_Regis|registers~359_q\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|Banco_Regis|registers~359_q\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1062_combout\);

-- Location: LCCOMB_X91_Y10_N4
\FD|ALU|Bnot|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~5_combout\ = (\FD|ALU|Bnot|Add0~4\ & ((\FD|Banco_Regis|registers~1065_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~4\ & (\FD|Banco_Regis|registers~1065_combout\ $ (\FD|UC_ULA|Equal0~0_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~6\ = CARRY((!\FD|ALU|Bnot|Add0~4\ & (\FD|Banco_Regis|registers~1065_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1065_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~4\,
	combout => \FD|ALU|Bnot|Add0~5_combout\,
	cout => \FD|ALU|Bnot|Add0~6\);

-- Location: LCCOMB_X90_Y10_N4
\FD|ALU|somaSub[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[2]~4_combout\ = (\FD|ALU|Bnot|Add0~5_combout\ & (\FD|ALU|somaSub[1]~3\ $ (GND))) # (!\FD|ALU|Bnot|Add0~5_combout\ & (!\FD|ALU|somaSub[1]~3\ & VCC))
-- \FD|ALU|somaSub[2]~5\ = CARRY((\FD|ALU|Bnot|Add0~5_combout\ & !\FD|ALU|somaSub[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Bnot|Add0~5_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[1]~3\,
	combout => \FD|ALU|somaSub[2]~4_combout\,
	cout => \FD|ALU|somaSub[2]~5\);

-- Location: LCCOMB_X91_Y8_N28
\FD|ALU|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~3_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[2]~4_combout\,
	combout => \FD|ALU|Add0~3_combout\);

-- Location: FF_X91_Y8_N11
\FD|Banco_Regis|registers~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	asdata => \FD|ALU|Add0~3_combout\,
	sload => VCC,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~360_q\);

-- Location: LCCOMB_X90_Y8_N6
\FD|Banco_Regis|registers~1065\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1065_combout\ = (\FD|PC|DOUT\(2) & (\FD|Banco_Regis|registers~360_q\ & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datac => \FD|Banco_Regis|registers~360_q\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1065_combout\);

-- Location: LCCOMB_X91_Y10_N6
\FD|ALU|Bnot|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~7_combout\ = (\FD|ALU|Bnot|Add0~6\ & (\FD|Banco_Regis|registers~1064_combout\ $ ((\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~6\ & ((\FD|Banco_Regis|registers~1064_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~8\ = CARRY((\FD|Banco_Regis|registers~1064_combout\ $ (\FD|UC_ULA|Equal0~0_combout\)) # (!\FD|ALU|Bnot|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1064_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~6\,
	combout => \FD|ALU|Bnot|Add0~7_combout\,
	cout => \FD|ALU|Bnot|Add0~8\);

-- Location: LCCOMB_X90_Y10_N6
\FD|ALU|somaSub[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[3]~6_combout\ = (\FD|ALU|Bnot|Add0~7_combout\ & (!\FD|ALU|somaSub[2]~5\)) # (!\FD|ALU|Bnot|Add0~7_combout\ & ((\FD|ALU|somaSub[2]~5\) # (GND)))
-- \FD|ALU|somaSub[3]~7\ = CARRY((!\FD|ALU|somaSub[2]~5\) # (!\FD|ALU|Bnot|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Bnot|Add0~7_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[2]~5\,
	combout => \FD|ALU|somaSub[3]~6_combout\,
	cout => \FD|ALU|somaSub[3]~7\);

-- Location: LCCOMB_X91_Y8_N26
\FD|ALU|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~4_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[3]~6_combout\,
	combout => \FD|ALU|Add0~4_combout\);

-- Location: FF_X91_Y8_N25
\FD|Banco_Regis|registers~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	asdata => \FD|ALU|Add0~4_combout\,
	sload => VCC,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~361_q\);

-- Location: LCCOMB_X90_Y8_N12
\FD|Banco_Regis|registers~1064\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1064_combout\ = (\FD|Banco_Regis|registers~361_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Banco_Regis|registers~361_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1064_combout\);

-- Location: LCCOMB_X91_Y10_N8
\FD|ALU|Bnot|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~9_combout\ = (\FD|ALU|Bnot|Add0~8\ & ((\FD|Banco_Regis|registers~1063_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~8\ & (\FD|Banco_Regis|registers~1063_combout\ $ (\FD|UC_ULA|Equal0~0_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~10\ = CARRY((!\FD|ALU|Bnot|Add0~8\ & (\FD|Banco_Regis|registers~1063_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1063_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~8\,
	combout => \FD|ALU|Bnot|Add0~9_combout\,
	cout => \FD|ALU|Bnot|Add0~10\);

-- Location: LCCOMB_X90_Y10_N8
\FD|ALU|somaSub[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[4]~8_combout\ = ((\FD|Banco_Regis|registers~1066_combout\ $ (\FD|ALU|Bnot|Add0~9_combout\ $ (!\FD|ALU|somaSub[3]~7\)))) # (GND)
-- \FD|ALU|somaSub[4]~9\ = CARRY((\FD|Banco_Regis|registers~1066_combout\ & ((\FD|ALU|Bnot|Add0~9_combout\) # (!\FD|ALU|somaSub[3]~7\))) # (!\FD|Banco_Regis|registers~1066_combout\ & (\FD|ALU|Bnot|Add0~9_combout\ & !\FD|ALU|somaSub[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1066_combout\,
	datab => \FD|ALU|Bnot|Add0~9_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[3]~7\,
	combout => \FD|ALU|somaSub[4]~8_combout\,
	cout => \FD|ALU|somaSub[4]~9\);

-- Location: LCCOMB_X91_Y8_N4
\FD|ALU|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~0_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & (((\FD|ALU|somaSub[4]~8_combout\)))) # (!\FD|UC_ULA|ULActrl[1]~4_combout\ & (\FD|Banco_Regis|registers~1066_combout\ & ((\FD|ALU|Bnot|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datab => \FD|Banco_Regis|registers~1066_combout\,
	datac => \FD|ALU|somaSub[4]~8_combout\,
	datad => \FD|ALU|Bnot|Add0~9_combout\,
	combout => \FD|ALU|Add0~0_combout\);

-- Location: FF_X91_Y8_N5
\FD|Banco_Regis|registers~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~0_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~362_q\);

-- Location: LCCOMB_X91_Y8_N30
\FD|Banco_Regis|registers~1063\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1063_combout\ = (\FD|PC|DOUT\(2) & (\FD|Banco_Regis|registers~362_q\ & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|Banco_Regis|registers~362_q\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1063_combout\);

-- Location: LCCOMB_X91_Y10_N10
\FD|ALU|Bnot|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~11_combout\ = (\FD|ALU|Bnot|Add0~10\ & (\FD|Banco_Regis|registers~1068_combout\ $ ((\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~10\ & ((\FD|Banco_Regis|registers~1068_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~12\ = CARRY((\FD|Banco_Regis|registers~1068_combout\ $ (\FD|UC_ULA|Equal0~0_combout\)) # (!\FD|ALU|Bnot|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1068_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~10\,
	combout => \FD|ALU|Bnot|Add0~11_combout\,
	cout => \FD|ALU|Bnot|Add0~12\);

-- Location: LCCOMB_X90_Y10_N10
\FD|ALU|somaSub[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[5]~10_combout\ = (\FD|ALU|Bnot|Add0~11_combout\ & (!\FD|ALU|somaSub[4]~9\)) # (!\FD|ALU|Bnot|Add0~11_combout\ & ((\FD|ALU|somaSub[4]~9\) # (GND)))
-- \FD|ALU|somaSub[5]~11\ = CARRY((!\FD|ALU|somaSub[4]~9\) # (!\FD|ALU|Bnot|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~11_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[4]~9\,
	combout => \FD|ALU|somaSub[5]~10_combout\,
	cout => \FD|ALU|somaSub[5]~11\);

-- Location: LCCOMB_X91_Y8_N18
\FD|ALU|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~5_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datac => \FD|ALU|somaSub[5]~10_combout\,
	combout => \FD|ALU|Add0~5_combout\);

-- Location: FF_X91_Y8_N13
\FD|Banco_Regis|registers~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	asdata => \FD|ALU|Add0~5_combout\,
	sload => VCC,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~363_q\);

-- Location: LCCOMB_X90_Y8_N8
\FD|Banco_Regis|registers~1068\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1068_combout\ = (\FD|PC|DOUT\(2) & (\FD|Banco_Regis|registers~363_q\ & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datac => \FD|Banco_Regis|registers~363_q\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1068_combout\);

-- Location: LCCOMB_X91_Y10_N12
\FD|ALU|Bnot|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~13_combout\ = (\FD|ALU|Bnot|Add0~12\ & ((\FD|Banco_Regis|registers~1069_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~12\ & (\FD|Banco_Regis|registers~1069_combout\ $ (\FD|UC_ULA|Equal0~0_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~14\ = CARRY((!\FD|ALU|Bnot|Add0~12\ & (\FD|Banco_Regis|registers~1069_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1069_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~12\,
	combout => \FD|ALU|Bnot|Add0~13_combout\,
	cout => \FD|ALU|Bnot|Add0~14\);

-- Location: LCCOMB_X90_Y10_N12
\FD|ALU|somaSub[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[6]~12_combout\ = (\FD|ALU|Bnot|Add0~13_combout\ & (\FD|ALU|somaSub[5]~11\ $ (GND))) # (!\FD|ALU|Bnot|Add0~13_combout\ & (!\FD|ALU|somaSub[5]~11\ & VCC))
-- \FD|ALU|somaSub[6]~13\ = CARRY((\FD|ALU|Bnot|Add0~13_combout\ & !\FD|ALU|somaSub[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~13_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[5]~11\,
	combout => \FD|ALU|somaSub[6]~12_combout\,
	cout => \FD|ALU|somaSub[6]~13\);

-- Location: LCCOMB_X91_Y7_N18
\FD|ALU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~6_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[6]~12_combout\,
	combout => \FD|ALU|Add0~6_combout\);

-- Location: LCCOMB_X91_Y7_N12
\FD|Banco_Regis|registers~364feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~364feeder_combout\ = \FD|ALU|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|Add0~6_combout\,
	combout => \FD|Banco_Regis|registers~364feeder_combout\);

-- Location: FF_X91_Y7_N13
\FD|Banco_Regis|registers~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~364feeder_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~364_q\);

-- Location: LCCOMB_X91_Y7_N4
\FD|Banco_Regis|registers~1069\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1069_combout\ = (\FD|Banco_Regis|registers~364_q\ & (\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & \FD|PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~364_q\,
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|Banco_Regis|registers~1069_combout\);

-- Location: LCCOMB_X91_Y10_N14
\FD|ALU|Bnot|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~15_combout\ = (\FD|ALU|Bnot|Add0~14\ & (\FD|Banco_Regis|registers~1070_combout\ $ ((\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~14\ & ((\FD|Banco_Regis|registers~1070_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~16\ = CARRY((\FD|Banco_Regis|registers~1070_combout\ $ (\FD|UC_ULA|Equal0~0_combout\)) # (!\FD|ALU|Bnot|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1070_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~14\,
	combout => \FD|ALU|Bnot|Add0~15_combout\,
	cout => \FD|ALU|Bnot|Add0~16\);

-- Location: LCCOMB_X90_Y10_N14
\FD|ALU|somaSub[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[7]~14_combout\ = (\FD|ALU|Bnot|Add0~15_combout\ & (!\FD|ALU|somaSub[6]~13\)) # (!\FD|ALU|Bnot|Add0~15_combout\ & ((\FD|ALU|somaSub[6]~13\) # (GND)))
-- \FD|ALU|somaSub[7]~15\ = CARRY((!\FD|ALU|somaSub[6]~13\) # (!\FD|ALU|Bnot|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~15_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[6]~13\,
	combout => \FD|ALU|somaSub[7]~14_combout\,
	cout => \FD|ALU|somaSub[7]~15\);

-- Location: LCCOMB_X91_Y7_N6
\FD|ALU|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~7_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[7]~14_combout\,
	combout => \FD|ALU|Add0~7_combout\);

-- Location: LCCOMB_X91_Y7_N22
\FD|Banco_Regis|registers~365feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~365feeder_combout\ = \FD|ALU|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|Add0~7_combout\,
	combout => \FD|Banco_Regis|registers~365feeder_combout\);

-- Location: FF_X91_Y7_N23
\FD|Banco_Regis|registers~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~365feeder_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~365_q\);

-- Location: LCCOMB_X91_Y7_N16
\FD|Banco_Regis|registers~1070\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1070_combout\ = (\FD|Banco_Regis|registers~365_q\ & (\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & \FD|PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~365_q\,
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|Banco_Regis|registers~1070_combout\);

-- Location: LCCOMB_X91_Y10_N16
\FD|ALU|Bnot|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~17_combout\ = (\FD|ALU|Bnot|Add0~16\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1071_combout\)))) # (!\FD|ALU|Bnot|Add0~16\ & (\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1071_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~18\ = CARRY((!\FD|ALU|Bnot|Add0~16\ & (\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1071_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1071_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~16\,
	combout => \FD|ALU|Bnot|Add0~17_combout\,
	cout => \FD|ALU|Bnot|Add0~18\);

-- Location: LCCOMB_X90_Y10_N16
\FD|ALU|somaSub[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[8]~16_combout\ = (\FD|ALU|Bnot|Add0~17_combout\ & (\FD|ALU|somaSub[7]~15\ $ (GND))) # (!\FD|ALU|Bnot|Add0~17_combout\ & (!\FD|ALU|somaSub[7]~15\ & VCC))
-- \FD|ALU|somaSub[8]~17\ = CARRY((\FD|ALU|Bnot|Add0~17_combout\ & !\FD|ALU|somaSub[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~17_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[7]~15\,
	combout => \FD|ALU|somaSub[8]~16_combout\,
	cout => \FD|ALU|somaSub[8]~17\);

-- Location: LCCOMB_X91_Y7_N26
\FD|ALU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~8_combout\ = (\FD|ALU|somaSub[8]~16_combout\ & \FD|UC_ULA|ULActrl[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|somaSub[8]~16_combout\,
	datad => \FD|UC_ULA|ULActrl[1]~4_combout\,
	combout => \FD|ALU|Add0~8_combout\);

-- Location: LCCOMB_X91_Y7_N8
\FD|Banco_Regis|registers~366feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~366feeder_combout\ = \FD|ALU|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ALU|Add0~8_combout\,
	combout => \FD|Banco_Regis|registers~366feeder_combout\);

-- Location: FF_X91_Y7_N9
\FD|Banco_Regis|registers~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~366feeder_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~366_q\);

-- Location: LCCOMB_X91_Y7_N20
\FD|Banco_Regis|registers~1071\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1071_combout\ = (\FD|PC|DOUT\(2) & (\FD|Banco_Regis|registers~366_q\ & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datab => \FD|Banco_Regis|registers~366_q\,
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1071_combout\);

-- Location: LCCOMB_X91_Y10_N18
\FD|ALU|Bnot|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~19_combout\ = (\FD|ALU|Bnot|Add0~18\ & (\FD|UC_ULA|Equal0~0_combout\ $ ((\FD|Banco_Regis|registers~1072_combout\)))) # (!\FD|ALU|Bnot|Add0~18\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1072_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~20\ = CARRY((\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1072_combout\)) # (!\FD|ALU|Bnot|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1072_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~18\,
	combout => \FD|ALU|Bnot|Add0~19_combout\,
	cout => \FD|ALU|Bnot|Add0~20\);

-- Location: LCCOMB_X90_Y10_N18
\FD|ALU|somaSub[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[9]~18_combout\ = (\FD|ALU|Bnot|Add0~19_combout\ & (!\FD|ALU|somaSub[8]~17\)) # (!\FD|ALU|Bnot|Add0~19_combout\ & ((\FD|ALU|somaSub[8]~17\) # (GND)))
-- \FD|ALU|somaSub[9]~19\ = CARRY((!\FD|ALU|somaSub[8]~17\) # (!\FD|ALU|Bnot|Add0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~19_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[8]~17\,
	combout => \FD|ALU|somaSub[9]~18_combout\,
	cout => \FD|ALU|somaSub[9]~19\);

-- Location: LCCOMB_X91_Y7_N28
\FD|ALU|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~9_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[9]~18_combout\,
	combout => \FD|ALU|Add0~9_combout\);

-- Location: LCCOMB_X91_Y7_N30
\FD|Banco_Regis|registers~367feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~367feeder_combout\ = \FD|ALU|Add0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|Add0~9_combout\,
	combout => \FD|Banco_Regis|registers~367feeder_combout\);

-- Location: FF_X91_Y7_N31
\FD|Banco_Regis|registers~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~367feeder_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~367_q\);

-- Location: LCCOMB_X91_Y7_N14
\FD|Banco_Regis|registers~1072\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1072_combout\ = (\FD|PC|DOUT\(2) & (\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & \FD|Banco_Regis|registers~367_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|Banco_Regis|registers~367_q\,
	combout => \FD|Banco_Regis|registers~1072_combout\);

-- Location: LCCOMB_X91_Y10_N20
\FD|ALU|Bnot|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~21_combout\ = (\FD|ALU|Bnot|Add0~20\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1073_combout\)))) # (!\FD|ALU|Bnot|Add0~20\ & (\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1073_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~22\ = CARRY((!\FD|ALU|Bnot|Add0~20\ & (\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1073_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1073_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~20\,
	combout => \FD|ALU|Bnot|Add0~21_combout\,
	cout => \FD|ALU|Bnot|Add0~22\);

-- Location: LCCOMB_X90_Y10_N20
\FD|ALU|somaSub[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[10]~20_combout\ = (\FD|ALU|Bnot|Add0~21_combout\ & (\FD|ALU|somaSub[9]~19\ $ (GND))) # (!\FD|ALU|Bnot|Add0~21_combout\ & (!\FD|ALU|somaSub[9]~19\ & VCC))
-- \FD|ALU|somaSub[10]~21\ = CARRY((\FD|ALU|Bnot|Add0~21_combout\ & !\FD|ALU|somaSub[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Bnot|Add0~21_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[9]~19\,
	combout => \FD|ALU|somaSub[10]~20_combout\,
	cout => \FD|ALU|somaSub[10]~21\);

-- Location: LCCOMB_X91_Y7_N10
\FD|ALU|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~10_combout\ = (\FD|ALU|somaSub[10]~20_combout\ & \FD|UC_ULA|ULActrl[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ALU|somaSub[10]~20_combout\,
	datad => \FD|UC_ULA|ULActrl[1]~4_combout\,
	combout => \FD|ALU|Add0~10_combout\);

-- Location: FF_X91_Y7_N11
\FD|Banco_Regis|registers~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~10_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~368_q\);

-- Location: LCCOMB_X91_Y7_N2
\FD|Banco_Regis|registers~1073\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1073_combout\ = (\FD|Banco_Regis|registers~368_q\ & (\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & \FD|PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~368_q\,
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|Banco_Regis|registers~1073_combout\);

-- Location: LCCOMB_X91_Y10_N22
\FD|ALU|Bnot|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~23_combout\ = (\FD|ALU|Bnot|Add0~22\ & (\FD|UC_ULA|Equal0~0_combout\ $ ((\FD|Banco_Regis|registers~1074_combout\)))) # (!\FD|ALU|Bnot|Add0~22\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1074_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~24\ = CARRY((\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1074_combout\)) # (!\FD|ALU|Bnot|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1074_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~22\,
	combout => \FD|ALU|Bnot|Add0~23_combout\,
	cout => \FD|ALU|Bnot|Add0~24\);

-- Location: LCCOMB_X90_Y10_N22
\FD|ALU|somaSub[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[11]~22_combout\ = (\FD|ALU|Bnot|Add0~23_combout\ & (!\FD|ALU|somaSub[10]~21\)) # (!\FD|ALU|Bnot|Add0~23_combout\ & ((\FD|ALU|somaSub[10]~21\) # (GND)))
-- \FD|ALU|somaSub[11]~23\ = CARRY((!\FD|ALU|somaSub[10]~21\) # (!\FD|ALU|Bnot|Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~23_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[10]~21\,
	combout => \FD|ALU|somaSub[11]~22_combout\,
	cout => \FD|ALU|somaSub[11]~23\);

-- Location: LCCOMB_X90_Y7_N0
\FD|ALU|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~11_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[11]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[11]~22_combout\,
	combout => \FD|ALU|Add0~11_combout\);

-- Location: FF_X90_Y7_N1
\FD|Banco_Regis|registers~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~11_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~369_q\);

-- Location: LCCOMB_X90_Y7_N20
\FD|Banco_Regis|registers~1074\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1074_combout\ = (\FD|Banco_Regis|registers~369_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Banco_Regis|registers~369_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1074_combout\);

-- Location: LCCOMB_X91_Y10_N24
\FD|ALU|Bnot|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~25_combout\ = (\FD|ALU|Bnot|Add0~24\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1075_combout\)))) # (!\FD|ALU|Bnot|Add0~24\ & (\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1075_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~26\ = CARRY((!\FD|ALU|Bnot|Add0~24\ & (\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1075_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1075_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~24\,
	combout => \FD|ALU|Bnot|Add0~25_combout\,
	cout => \FD|ALU|Bnot|Add0~26\);

-- Location: LCCOMB_X90_Y10_N24
\FD|ALU|somaSub[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[12]~24_combout\ = (\FD|ALU|Bnot|Add0~25_combout\ & (\FD|ALU|somaSub[11]~23\ $ (GND))) # (!\FD|ALU|Bnot|Add0~25_combout\ & (!\FD|ALU|somaSub[11]~23\ & VCC))
-- \FD|ALU|somaSub[12]~25\ = CARRY((\FD|ALU|Bnot|Add0~25_combout\ & !\FD|ALU|somaSub[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~25_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[11]~23\,
	combout => \FD|ALU|somaSub[12]~24_combout\,
	cout => \FD|ALU|somaSub[12]~25\);

-- Location: LCCOMB_X90_Y7_N2
\FD|ALU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~12_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[12]~24_combout\,
	combout => \FD|ALU|Add0~12_combout\);

-- Location: FF_X90_Y7_N3
\FD|Banco_Regis|registers~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~12_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~370_q\);

-- Location: LCCOMB_X90_Y7_N30
\FD|Banco_Regis|registers~1075\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1075_combout\ = (\FD|Banco_Regis|registers~370_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Banco_Regis|registers~370_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1075_combout\);

-- Location: LCCOMB_X91_Y10_N26
\FD|ALU|Bnot|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~27_combout\ = (\FD|ALU|Bnot|Add0~26\ & (\FD|UC_ULA|Equal0~0_combout\ $ ((\FD|Banco_Regis|registers~1076_combout\)))) # (!\FD|ALU|Bnot|Add0~26\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1076_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~28\ = CARRY((\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1076_combout\)) # (!\FD|ALU|Bnot|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1076_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~26\,
	combout => \FD|ALU|Bnot|Add0~27_combout\,
	cout => \FD|ALU|Bnot|Add0~28\);

-- Location: LCCOMB_X90_Y10_N26
\FD|ALU|somaSub[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[13]~26_combout\ = (\FD|ALU|Bnot|Add0~27_combout\ & (!\FD|ALU|somaSub[12]~25\)) # (!\FD|ALU|Bnot|Add0~27_combout\ & ((\FD|ALU|somaSub[12]~25\) # (GND)))
-- \FD|ALU|somaSub[13]~27\ = CARRY((!\FD|ALU|somaSub[12]~25\) # (!\FD|ALU|Bnot|Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Bnot|Add0~27_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[12]~25\,
	combout => \FD|ALU|somaSub[13]~26_combout\,
	cout => \FD|ALU|somaSub[13]~27\);

-- Location: LCCOMB_X90_Y7_N24
\FD|ALU|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~13_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[13]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[13]~26_combout\,
	combout => \FD|ALU|Add0~13_combout\);

-- Location: FF_X90_Y7_N25
\FD|Banco_Regis|registers~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~13_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~371_q\);

-- Location: LCCOMB_X90_Y7_N10
\FD|Banco_Regis|registers~1076\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1076_combout\ = (\FD|Banco_Regis|registers~371_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~371_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1076_combout\);

-- Location: LCCOMB_X91_Y10_N28
\FD|ALU|Bnot|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~29_combout\ = (\FD|ALU|Bnot|Add0~28\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1093_combout\)))) # (!\FD|ALU|Bnot|Add0~28\ & (\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1093_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~30\ = CARRY((!\FD|ALU|Bnot|Add0~28\ & (\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1093_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1093_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~28\,
	combout => \FD|ALU|Bnot|Add0~29_combout\,
	cout => \FD|ALU|Bnot|Add0~30\);

-- Location: LCCOMB_X90_Y10_N28
\FD|ALU|somaSub[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[14]~28_combout\ = (\FD|ALU|Bnot|Add0~29_combout\ & (\FD|ALU|somaSub[13]~27\ $ (GND))) # (!\FD|ALU|Bnot|Add0~29_combout\ & (!\FD|ALU|somaSub[13]~27\ & VCC))
-- \FD|ALU|somaSub[14]~29\ = CARRY((\FD|ALU|Bnot|Add0~29_combout\ & !\FD|ALU|somaSub[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~29_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[13]~27\,
	combout => \FD|ALU|somaSub[14]~28_combout\,
	cout => \FD|ALU|somaSub[14]~29\);

-- Location: LCCOMB_X90_Y7_N4
\FD|ALU|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~18_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[14]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[14]~28_combout\,
	combout => \FD|ALU|Add0~18_combout\);

-- Location: FF_X90_Y7_N5
\FD|Banco_Regis|registers~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~18_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~372_q\);

-- Location: LCCOMB_X91_Y7_N24
\FD|Banco_Regis|registers~1093\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1093_combout\ = (\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & (\FD|PC|DOUT\(2) & \FD|Banco_Regis|registers~372_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Banco_Regis|registers~372_q\,
	combout => \FD|Banco_Regis|registers~1093_combout\);

-- Location: LCCOMB_X91_Y10_N30
\FD|ALU|Bnot|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~31_combout\ = (\FD|ALU|Bnot|Add0~30\ & (\FD|UC_ULA|Equal0~0_combout\ $ ((\FD|Banco_Regis|registers~1092_combout\)))) # (!\FD|ALU|Bnot|Add0~30\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1092_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~32\ = CARRY((\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1092_combout\)) # (!\FD|ALU|Bnot|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1092_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~30\,
	combout => \FD|ALU|Bnot|Add0~31_combout\,
	cout => \FD|ALU|Bnot|Add0~32\);

-- Location: LCCOMB_X90_Y10_N30
\FD|ALU|somaSub[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[15]~30_combout\ = (\FD|ALU|Bnot|Add0~31_combout\ & (!\FD|ALU|somaSub[14]~29\)) # (!\FD|ALU|Bnot|Add0~31_combout\ & ((\FD|ALU|somaSub[14]~29\) # (GND)))
-- \FD|ALU|somaSub[15]~31\ = CARRY((!\FD|ALU|somaSub[14]~29\) # (!\FD|ALU|Bnot|Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Bnot|Add0~31_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[14]~29\,
	combout => \FD|ALU|somaSub[15]~30_combout\,
	cout => \FD|ALU|somaSub[15]~31\);

-- Location: LCCOMB_X90_Y7_N26
\FD|ALU|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~19_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[15]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[15]~30_combout\,
	combout => \FD|ALU|Add0~19_combout\);

-- Location: FF_X90_Y7_N27
\FD|Banco_Regis|registers~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~19_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~373_q\);

-- Location: LCCOMB_X90_Y7_N16
\FD|Banco_Regis|registers~1092\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1092_combout\ = (\FD|Banco_Regis|registers~373_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Banco_Regis|registers~373_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1092_combout\);

-- Location: LCCOMB_X91_Y9_N0
\FD|ALU|Bnot|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~33_combout\ = (\FD|ALU|Bnot|Add0~32\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1091_combout\)))) # (!\FD|ALU|Bnot|Add0~32\ & (\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1091_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~34\ = CARRY((!\FD|ALU|Bnot|Add0~32\ & (\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1091_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1091_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~32\,
	combout => \FD|ALU|Bnot|Add0~33_combout\,
	cout => \FD|ALU|Bnot|Add0~34\);

-- Location: LCCOMB_X90_Y9_N0
\FD|ALU|somaSub[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[16]~32_combout\ = (\FD|ALU|Bnot|Add0~33_combout\ & (\FD|ALU|somaSub[15]~31\ $ (GND))) # (!\FD|ALU|Bnot|Add0~33_combout\ & (!\FD|ALU|somaSub[15]~31\ & VCC))
-- \FD|ALU|somaSub[16]~33\ = CARRY((\FD|ALU|Bnot|Add0~33_combout\ & !\FD|ALU|somaSub[15]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~33_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[15]~31\,
	combout => \FD|ALU|somaSub[16]~32_combout\,
	cout => \FD|ALU|somaSub[16]~33\);

-- Location: LCCOMB_X89_Y7_N14
\FD|ALU|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~20_combout\ = (\FD|ALU|somaSub[16]~32_combout\ & \FD|UC_ULA|ULActrl[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ALU|somaSub[16]~32_combout\,
	datad => \FD|UC_ULA|ULActrl[1]~4_combout\,
	combout => \FD|ALU|Add0~20_combout\);

-- Location: LCCOMB_X89_Y7_N24
\FD|Banco_Regis|registers~374feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~374feeder_combout\ = \FD|ALU|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ALU|Add0~20_combout\,
	combout => \FD|Banco_Regis|registers~374feeder_combout\);

-- Location: FF_X89_Y7_N25
\FD|Banco_Regis|registers~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~374feeder_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~374_q\);

-- Location: LCCOMB_X90_Y8_N10
\FD|Banco_Regis|registers~1091\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1091_combout\ = (\FD|PC|DOUT\(2) & (\FD|Banco_Regis|registers~374_q\ & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datac => \FD|Banco_Regis|registers~374_q\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1091_combout\);

-- Location: LCCOMB_X91_Y9_N2
\FD|ALU|Bnot|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~35_combout\ = (\FD|ALU|Bnot|Add0~34\ & (\FD|UC_ULA|Equal0~0_combout\ $ ((\FD|Banco_Regis|registers~1090_combout\)))) # (!\FD|ALU|Bnot|Add0~34\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1090_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~36\ = CARRY((\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1090_combout\)) # (!\FD|ALU|Bnot|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1090_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~34\,
	combout => \FD|ALU|Bnot|Add0~35_combout\,
	cout => \FD|ALU|Bnot|Add0~36\);

-- Location: LCCOMB_X90_Y9_N2
\FD|ALU|somaSub[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[17]~34_combout\ = (\FD|ALU|Bnot|Add0~35_combout\ & (!\FD|ALU|somaSub[16]~33\)) # (!\FD|ALU|Bnot|Add0~35_combout\ & ((\FD|ALU|somaSub[16]~33\) # (GND)))
-- \FD|ALU|somaSub[17]~35\ = CARRY((!\FD|ALU|somaSub[16]~33\) # (!\FD|ALU|Bnot|Add0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Bnot|Add0~35_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[16]~33\,
	combout => \FD|ALU|somaSub[17]~34_combout\,
	cout => \FD|ALU|somaSub[17]~35\);

-- Location: LCCOMB_X89_Y7_N6
\FD|ALU|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~21_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[17]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[17]~34_combout\,
	combout => \FD|ALU|Add0~21_combout\);

-- Location: LCCOMB_X89_Y7_N2
\FD|Banco_Regis|registers~375feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~375feeder_combout\ = \FD|ALU|Add0~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|Add0~21_combout\,
	combout => \FD|Banco_Regis|registers~375feeder_combout\);

-- Location: FF_X89_Y7_N3
\FD|Banco_Regis|registers~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~375feeder_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~375_q\);

-- Location: LCCOMB_X90_Y8_N4
\FD|Banco_Regis|registers~1090\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1090_combout\ = (\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & (\FD|PC|DOUT\(2) & \FD|Banco_Regis|registers~375_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Banco_Regis|registers~375_q\,
	combout => \FD|Banco_Regis|registers~1090_combout\);

-- Location: LCCOMB_X91_Y9_N4
\FD|ALU|Bnot|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~37_combout\ = (\FD|ALU|Bnot|Add0~36\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1089_combout\)))) # (!\FD|ALU|Bnot|Add0~36\ & (\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1089_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~38\ = CARRY((!\FD|ALU|Bnot|Add0~36\ & (\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1089_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1089_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~36\,
	combout => \FD|ALU|Bnot|Add0~37_combout\,
	cout => \FD|ALU|Bnot|Add0~38\);

-- Location: LCCOMB_X90_Y9_N4
\FD|ALU|somaSub[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[18]~36_combout\ = (\FD|ALU|Bnot|Add0~37_combout\ & (\FD|ALU|somaSub[17]~35\ $ (GND))) # (!\FD|ALU|Bnot|Add0~37_combout\ & (!\FD|ALU|somaSub[17]~35\ & VCC))
-- \FD|ALU|somaSub[18]~37\ = CARRY((\FD|ALU|Bnot|Add0~37_combout\ & !\FD|ALU|somaSub[17]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Bnot|Add0~37_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[17]~35\,
	combout => \FD|ALU|somaSub[18]~36_combout\,
	cout => \FD|ALU|somaSub[18]~37\);

-- Location: LCCOMB_X91_Y8_N22
\FD|ALU|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~17_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[18]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datac => \FD|ALU|somaSub[18]~36_combout\,
	combout => \FD|ALU|Add0~17_combout\);

-- Location: FF_X91_Y8_N23
\FD|Banco_Regis|registers~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~17_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~376_q\);

-- Location: LCCOMB_X91_Y8_N0
\FD|Banco_Regis|registers~1089\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1089_combout\ = (\FD|PC|DOUT\(2) & (\FD|Banco_Regis|registers~376_q\ & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|Banco_Regis|registers~376_q\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1089_combout\);

-- Location: LCCOMB_X91_Y9_N6
\FD|ALU|Bnot|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~39_combout\ = (\FD|ALU|Bnot|Add0~38\ & (\FD|UC_ULA|Equal0~0_combout\ $ ((\FD|Banco_Regis|registers~1088_combout\)))) # (!\FD|ALU|Bnot|Add0~38\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1088_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~40\ = CARRY((\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1088_combout\)) # (!\FD|ALU|Bnot|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1088_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~38\,
	combout => \FD|ALU|Bnot|Add0~39_combout\,
	cout => \FD|ALU|Bnot|Add0~40\);

-- Location: LCCOMB_X90_Y9_N6
\FD|ALU|somaSub[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[19]~38_combout\ = (\FD|ALU|Bnot|Add0~39_combout\ & (!\FD|ALU|somaSub[18]~37\)) # (!\FD|ALU|Bnot|Add0~39_combout\ & ((\FD|ALU|somaSub[18]~37\) # (GND)))
-- \FD|ALU|somaSub[19]~39\ = CARRY((!\FD|ALU|somaSub[18]~37\) # (!\FD|ALU|Bnot|Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Bnot|Add0~39_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[18]~37\,
	combout => \FD|ALU|somaSub[19]~38_combout\,
	cout => \FD|ALU|somaSub[19]~39\);

-- Location: LCCOMB_X89_Y7_N12
\FD|ALU|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~14_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[19]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[19]~38_combout\,
	combout => \FD|ALU|Add0~14_combout\);

-- Location: LCCOMB_X89_Y7_N0
\FD|Banco_Regis|registers~377feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~377feeder_combout\ = \FD|ALU|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|Add0~14_combout\,
	combout => \FD|Banco_Regis|registers~377feeder_combout\);

-- Location: FF_X89_Y7_N1
\FD|Banco_Regis|registers~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~377feeder_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~377_q\);

-- Location: LCCOMB_X90_Y8_N30
\FD|Banco_Regis|registers~1088\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1088_combout\ = (\FD|Banco_Regis|registers~377_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~377_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1088_combout\);

-- Location: LCCOMB_X91_Y9_N8
\FD|ALU|Bnot|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~41_combout\ = (\FD|ALU|Bnot|Add0~40\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1087_combout\)))) # (!\FD|ALU|Bnot|Add0~40\ & (\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1087_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~42\ = CARRY((!\FD|ALU|Bnot|Add0~40\ & (\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1087_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1087_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~40\,
	combout => \FD|ALU|Bnot|Add0~41_combout\,
	cout => \FD|ALU|Bnot|Add0~42\);

-- Location: LCCOMB_X90_Y9_N8
\FD|ALU|somaSub[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[20]~40_combout\ = (\FD|ALU|Bnot|Add0~41_combout\ & (\FD|ALU|somaSub[19]~39\ $ (GND))) # (!\FD|ALU|Bnot|Add0~41_combout\ & (!\FD|ALU|somaSub[19]~39\ & VCC))
-- \FD|ALU|somaSub[20]~41\ = CARRY((\FD|ALU|Bnot|Add0~41_combout\ & !\FD|ALU|somaSub[19]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~41_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[19]~39\,
	combout => \FD|ALU|somaSub[20]~40_combout\,
	cout => \FD|ALU|somaSub[20]~41\);

-- Location: LCCOMB_X89_Y7_N18
\FD|ALU|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~15_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[20]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datac => \FD|ALU|somaSub[20]~40_combout\,
	combout => \FD|ALU|Add0~15_combout\);

-- Location: LCCOMB_X89_Y7_N22
\FD|Banco_Regis|registers~378feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~378feeder_combout\ = \FD|ALU|Add0~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|Add0~15_combout\,
	combout => \FD|Banco_Regis|registers~378feeder_combout\);

-- Location: FF_X89_Y7_N23
\FD|Banco_Regis|registers~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~378feeder_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~378_q\);

-- Location: LCCOMB_X89_Y7_N28
\FD|Banco_Regis|registers~1087\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1087_combout\ = (\FD|Banco_Regis|registers~378_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~378_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1087_combout\);

-- Location: LCCOMB_X91_Y9_N10
\FD|ALU|Bnot|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~43_combout\ = (\FD|ALU|Bnot|Add0~42\ & (\FD|UC_ULA|Equal0~0_combout\ $ ((\FD|Banco_Regis|registers~1086_combout\)))) # (!\FD|ALU|Bnot|Add0~42\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1086_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~44\ = CARRY((\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1086_combout\)) # (!\FD|ALU|Bnot|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1086_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~42\,
	combout => \FD|ALU|Bnot|Add0~43_combout\,
	cout => \FD|ALU|Bnot|Add0~44\);

-- Location: LCCOMB_X90_Y9_N10
\FD|ALU|somaSub[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[21]~42_combout\ = (\FD|ALU|Bnot|Add0~43_combout\ & (!\FD|ALU|somaSub[20]~41\)) # (!\FD|ALU|Bnot|Add0~43_combout\ & ((\FD|ALU|somaSub[20]~41\) # (GND)))
-- \FD|ALU|somaSub[21]~43\ = CARRY((!\FD|ALU|somaSub[20]~41\) # (!\FD|ALU|Bnot|Add0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~43_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[20]~41\,
	combout => \FD|ALU|somaSub[21]~42_combout\,
	cout => \FD|ALU|somaSub[21]~43\);

-- Location: LCCOMB_X89_Y7_N16
\FD|ALU|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~16_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[21]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[21]~42_combout\,
	combout => \FD|ALU|Add0~16_combout\);

-- Location: LCCOMB_X89_Y7_N8
\FD|Banco_Regis|registers~379feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~379feeder_combout\ = \FD|ALU|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|Add0~16_combout\,
	combout => \FD|Banco_Regis|registers~379feeder_combout\);

-- Location: FF_X89_Y7_N9
\FD|Banco_Regis|registers~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~379feeder_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~379_q\);

-- Location: LCCOMB_X89_Y7_N20
\FD|Banco_Regis|registers~1086\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1086_combout\ = (\FD|Banco_Regis|registers~379_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Banco_Regis|registers~379_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1086_combout\);

-- Location: LCCOMB_X91_Y9_N12
\FD|ALU|Bnot|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~45_combout\ = (\FD|ALU|Bnot|Add0~44\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1085_combout\)))) # (!\FD|ALU|Bnot|Add0~44\ & (\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1085_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~46\ = CARRY((!\FD|ALU|Bnot|Add0~44\ & (\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1085_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1085_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~44\,
	combout => \FD|ALU|Bnot|Add0~45_combout\,
	cout => \FD|ALU|Bnot|Add0~46\);

-- Location: LCCOMB_X90_Y9_N12
\FD|ALU|somaSub[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[22]~44_combout\ = (\FD|ALU|Bnot|Add0~45_combout\ & (\FD|ALU|somaSub[21]~43\ $ (GND))) # (!\FD|ALU|Bnot|Add0~45_combout\ & (!\FD|ALU|somaSub[21]~43\ & VCC))
-- \FD|ALU|somaSub[22]~45\ = CARRY((\FD|ALU|Bnot|Add0~45_combout\ & !\FD|ALU|somaSub[21]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~45_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[21]~43\,
	combout => \FD|ALU|somaSub[22]~44_combout\,
	cout => \FD|ALU|somaSub[22]~45\);

-- Location: LCCOMB_X89_Y7_N30
\FD|ALU|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~24_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[22]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[22]~44_combout\,
	combout => \FD|ALU|Add0~24_combout\);

-- Location: FF_X89_Y7_N31
\FD|Banco_Regis|registers~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~24_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~380_q\);

-- Location: LCCOMB_X89_Y7_N26
\FD|Banco_Regis|registers~1085\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1085_combout\ = (\FD|Banco_Regis|registers~380_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~380_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1085_combout\);

-- Location: LCCOMB_X91_Y9_N14
\FD|ALU|Bnot|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~47_combout\ = (\FD|ALU|Bnot|Add0~46\ & (\FD|UC_ULA|Equal0~0_combout\ $ ((\FD|Banco_Regis|registers~1084_combout\)))) # (!\FD|ALU|Bnot|Add0~46\ & ((\FD|UC_ULA|Equal0~0_combout\ $ (!\FD|Banco_Regis|registers~1084_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~48\ = CARRY((\FD|UC_ULA|Equal0~0_combout\ $ (\FD|Banco_Regis|registers~1084_combout\)) # (!\FD|ALU|Bnot|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datab => \FD|Banco_Regis|registers~1084_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~46\,
	combout => \FD|ALU|Bnot|Add0~47_combout\,
	cout => \FD|ALU|Bnot|Add0~48\);

-- Location: LCCOMB_X90_Y9_N14
\FD|ALU|somaSub[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[23]~46_combout\ = (\FD|ALU|Bnot|Add0~47_combout\ & (!\FD|ALU|somaSub[22]~45\)) # (!\FD|ALU|Bnot|Add0~47_combout\ & ((\FD|ALU|somaSub[22]~45\) # (GND)))
-- \FD|ALU|somaSub[23]~47\ = CARRY((!\FD|ALU|somaSub[22]~45\) # (!\FD|ALU|Bnot|Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~47_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[22]~45\,
	combout => \FD|ALU|somaSub[23]~46_combout\,
	cout => \FD|ALU|somaSub[23]~47\);

-- Location: LCCOMB_X89_Y7_N4
\FD|ALU|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~25_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[23]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[23]~46_combout\,
	combout => \FD|ALU|Add0~25_combout\);

-- Location: FF_X89_Y7_N5
\FD|Banco_Regis|registers~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~25_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~381_q\);

-- Location: LCCOMB_X89_Y7_N10
\FD|Banco_Regis|registers~1084\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1084_combout\ = (\FD|Banco_Regis|registers~381_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Banco_Regis|registers~381_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1084_combout\);

-- Location: LCCOMB_X91_Y9_N16
\FD|ALU|Bnot|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~49_combout\ = (\FD|ALU|Bnot|Add0~48\ & ((\FD|Banco_Regis|registers~1083_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~48\ & (\FD|Banco_Regis|registers~1083_combout\ $ (\FD|UC_ULA|Equal0~0_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~50\ = CARRY((!\FD|ALU|Bnot|Add0~48\ & (\FD|Banco_Regis|registers~1083_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1083_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~48\,
	combout => \FD|ALU|Bnot|Add0~49_combout\,
	cout => \FD|ALU|Bnot|Add0~50\);

-- Location: LCCOMB_X90_Y9_N16
\FD|ALU|somaSub[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[24]~48_combout\ = (\FD|ALU|Bnot|Add0~49_combout\ & (\FD|ALU|somaSub[23]~47\ $ (GND))) # (!\FD|ALU|Bnot|Add0~49_combout\ & (!\FD|ALU|somaSub[23]~47\ & VCC))
-- \FD|ALU|somaSub[24]~49\ = CARRY((\FD|ALU|Bnot|Add0~49_combout\ & !\FD|ALU|somaSub[23]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~49_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[23]~47\,
	combout => \FD|ALU|somaSub[24]~48_combout\,
	cout => \FD|ALU|somaSub[24]~49\);

-- Location: LCCOMB_X92_Y9_N28
\FD|ALU|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~26_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[24]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[24]~48_combout\,
	combout => \FD|ALU|Add0~26_combout\);

-- Location: FF_X92_Y9_N29
\FD|Banco_Regis|registers~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~26_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~382_q\);

-- Location: LCCOMB_X92_Y9_N2
\FD|Banco_Regis|registers~1083\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1083_combout\ = (\FD|Banco_Regis|registers~382_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Banco_Regis|registers~382_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1083_combout\);

-- Location: LCCOMB_X91_Y9_N18
\FD|ALU|Bnot|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~51_combout\ = (\FD|ALU|Bnot|Add0~50\ & (\FD|Banco_Regis|registers~1082_combout\ $ ((\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~50\ & ((\FD|Banco_Regis|registers~1082_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~52\ = CARRY((\FD|Banco_Regis|registers~1082_combout\ $ (\FD|UC_ULA|Equal0~0_combout\)) # (!\FD|ALU|Bnot|Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1082_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~50\,
	combout => \FD|ALU|Bnot|Add0~51_combout\,
	cout => \FD|ALU|Bnot|Add0~52\);

-- Location: LCCOMB_X90_Y9_N18
\FD|ALU|somaSub[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[25]~50_combout\ = (\FD|ALU|Bnot|Add0~51_combout\ & (!\FD|ALU|somaSub[24]~49\)) # (!\FD|ALU|Bnot|Add0~51_combout\ & ((\FD|ALU|somaSub[24]~49\) # (GND)))
-- \FD|ALU|somaSub[25]~51\ = CARRY((!\FD|ALU|somaSub[24]~49\) # (!\FD|ALU|Bnot|Add0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~51_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[24]~49\,
	combout => \FD|ALU|somaSub[25]~50_combout\,
	cout => \FD|ALU|somaSub[25]~51\);

-- Location: LCCOMB_X89_Y9_N30
\FD|ALU|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~23_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[25]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[25]~50_combout\,
	combout => \FD|ALU|Add0~23_combout\);

-- Location: LCCOMB_X89_Y9_N18
\FD|Banco_Regis|registers~383feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~383feeder_combout\ = \FD|ALU|Add0~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|Add0~23_combout\,
	combout => \FD|Banco_Regis|registers~383feeder_combout\);

-- Location: FF_X89_Y9_N19
\FD|Banco_Regis|registers~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~383feeder_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~383_q\);

-- Location: LCCOMB_X92_Y9_N30
\FD|Banco_Regis|registers~1082\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1082_combout\ = (\FD|PC|DOUT\(2) & (\FD|Banco_Regis|registers~383_q\ & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datac => \FD|Banco_Regis|registers~383_q\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1082_combout\);

-- Location: LCCOMB_X91_Y9_N20
\FD|ALU|Bnot|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~53_combout\ = (\FD|ALU|Bnot|Add0~52\ & ((\FD|Banco_Regis|registers~1081_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~52\ & (\FD|Banco_Regis|registers~1081_combout\ $ (\FD|UC_ULA|Equal0~0_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~54\ = CARRY((!\FD|ALU|Bnot|Add0~52\ & (\FD|Banco_Regis|registers~1081_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1081_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~52\,
	combout => \FD|ALU|Bnot|Add0~53_combout\,
	cout => \FD|ALU|Bnot|Add0~54\);

-- Location: LCCOMB_X90_Y9_N20
\FD|ALU|somaSub[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[26]~52_combout\ = (\FD|ALU|Bnot|Add0~53_combout\ & (\FD|ALU|somaSub[25]~51\ $ (GND))) # (!\FD|ALU|Bnot|Add0~53_combout\ & (!\FD|ALU|somaSub[25]~51\ & VCC))
-- \FD|ALU|somaSub[26]~53\ = CARRY((\FD|ALU|Bnot|Add0~53_combout\ & !\FD|ALU|somaSub[25]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Bnot|Add0~53_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[25]~51\,
	combout => \FD|ALU|somaSub[26]~52_combout\,
	cout => \FD|ALU|somaSub[26]~53\);

-- Location: LCCOMB_X92_Y9_N10
\FD|ALU|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~30_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[26]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datac => \FD|ALU|somaSub[26]~52_combout\,
	combout => \FD|ALU|Add0~30_combout\);

-- Location: FF_X92_Y9_N11
\FD|Banco_Regis|registers~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~30_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~384_q\);

-- Location: LCCOMB_X92_Y9_N12
\FD|Banco_Regis|registers~1081\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1081_combout\ = (\FD|Banco_Regis|registers~384_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~384_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1081_combout\);

-- Location: LCCOMB_X91_Y9_N22
\FD|ALU|Bnot|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~55_combout\ = (\FD|ALU|Bnot|Add0~54\ & (\FD|Banco_Regis|registers~1080_combout\ $ ((\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~54\ & ((\FD|Banco_Regis|registers~1080_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~56\ = CARRY((\FD|Banco_Regis|registers~1080_combout\ $ (\FD|UC_ULA|Equal0~0_combout\)) # (!\FD|ALU|Bnot|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1080_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~54\,
	combout => \FD|ALU|Bnot|Add0~55_combout\,
	cout => \FD|ALU|Bnot|Add0~56\);

-- Location: LCCOMB_X90_Y9_N22
\FD|ALU|somaSub[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[27]~54_combout\ = (\FD|ALU|Bnot|Add0~55_combout\ & (!\FD|ALU|somaSub[26]~53\)) # (!\FD|ALU|Bnot|Add0~55_combout\ & ((\FD|ALU|somaSub[26]~53\) # (GND)))
-- \FD|ALU|somaSub[27]~55\ = CARRY((!\FD|ALU|somaSub[26]~53\) # (!\FD|ALU|Bnot|Add0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~55_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[26]~53\,
	combout => \FD|ALU|somaSub[27]~54_combout\,
	cout => \FD|ALU|somaSub[27]~55\);

-- Location: LCCOMB_X92_Y9_N22
\FD|ALU|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~29_combout\ = (\FD|ALU|somaSub[27]~54_combout\ & \FD|UC_ULA|ULActrl[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ALU|somaSub[27]~54_combout\,
	datad => \FD|UC_ULA|ULActrl[1]~4_combout\,
	combout => \FD|ALU|Add0~29_combout\);

-- Location: FF_X92_Y9_N23
\FD|Banco_Regis|registers~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~29_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~385_q\);

-- Location: LCCOMB_X92_Y9_N8
\FD|Banco_Regis|registers~1080\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1080_combout\ = (\FD|Banco_Regis|registers~385_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~385_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1080_combout\);

-- Location: LCCOMB_X91_Y9_N24
\FD|ALU|Bnot|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~57_combout\ = (\FD|ALU|Bnot|Add0~56\ & ((\FD|Banco_Regis|registers~1079_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~56\ & (\FD|Banco_Regis|registers~1079_combout\ $ (\FD|UC_ULA|Equal0~0_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~58\ = CARRY((!\FD|ALU|Bnot|Add0~56\ & (\FD|Banco_Regis|registers~1079_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1079_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~56\,
	combout => \FD|ALU|Bnot|Add0~57_combout\,
	cout => \FD|ALU|Bnot|Add0~58\);

-- Location: LCCOMB_X90_Y9_N24
\FD|ALU|somaSub[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[28]~56_combout\ = (\FD|ALU|Bnot|Add0~57_combout\ & (\FD|ALU|somaSub[27]~55\ $ (GND))) # (!\FD|ALU|Bnot|Add0~57_combout\ & (!\FD|ALU|somaSub[27]~55\ & VCC))
-- \FD|ALU|somaSub[28]~57\ = CARRY((\FD|ALU|Bnot|Add0~57_combout\ & !\FD|ALU|somaSub[27]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~57_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[27]~55\,
	combout => \FD|ALU|somaSub[28]~56_combout\,
	cout => \FD|ALU|somaSub[28]~57\);

-- Location: LCCOMB_X89_Y9_N8
\FD|ALU|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~22_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[28]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datac => \FD|ALU|somaSub[28]~56_combout\,
	combout => \FD|ALU|Add0~22_combout\);

-- Location: LCCOMB_X89_Y9_N20
\FD|Banco_Regis|registers~386feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~386feeder_combout\ = \FD|ALU|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|Add0~22_combout\,
	combout => \FD|Banco_Regis|registers~386feeder_combout\);

-- Location: FF_X89_Y9_N21
\FD|Banco_Regis|registers~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~386feeder_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~386_q\);

-- Location: LCCOMB_X92_Y9_N4
\FD|Banco_Regis|registers~1079\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1079_combout\ = (\FD|Banco_Regis|registers~386_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~386_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1079_combout\);

-- Location: LCCOMB_X91_Y9_N26
\FD|ALU|Bnot|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~59_combout\ = (\FD|ALU|Bnot|Add0~58\ & (\FD|Banco_Regis|registers~1078_combout\ $ ((\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~58\ & ((\FD|Banco_Regis|registers~1078_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)) # (GND)))
-- \FD|ALU|Bnot|Add0~60\ = CARRY((\FD|Banco_Regis|registers~1078_combout\ $ (\FD|UC_ULA|Equal0~0_combout\)) # (!\FD|ALU|Bnot|Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1078_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~58\,
	combout => \FD|ALU|Bnot|Add0~59_combout\,
	cout => \FD|ALU|Bnot|Add0~60\);

-- Location: LCCOMB_X90_Y9_N26
\FD|ALU|somaSub[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[29]~58_combout\ = (\FD|ALU|Bnot|Add0~59_combout\ & (!\FD|ALU|somaSub[28]~57\)) # (!\FD|ALU|Bnot|Add0~59_combout\ & ((\FD|ALU|somaSub[28]~57\) # (GND)))
-- \FD|ALU|somaSub[29]~59\ = CARRY((!\FD|ALU|somaSub[28]~57\) # (!\FD|ALU|Bnot|Add0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~59_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[28]~57\,
	combout => \FD|ALU|somaSub[29]~58_combout\,
	cout => \FD|ALU|somaSub[29]~59\);

-- Location: LCCOMB_X89_Y9_N2
\FD|ALU|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~28_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[29]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datac => \FD|ALU|somaSub[29]~58_combout\,
	combout => \FD|ALU|Add0~28_combout\);

-- Location: FF_X89_Y9_N3
\FD|Banco_Regis|registers~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~28_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~387_q\);

-- Location: LCCOMB_X92_Y9_N6
\FD|Banco_Regis|registers~1078\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1078_combout\ = (\FD|Banco_Regis|registers~387_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Banco_Regis|registers~387_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1078_combout\);

-- Location: LCCOMB_X91_Y9_N28
\FD|ALU|Bnot|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~61_combout\ = (\FD|ALU|Bnot|Add0~60\ & ((\FD|Banco_Regis|registers~1077_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\)))) # (!\FD|ALU|Bnot|Add0~60\ & (\FD|Banco_Regis|registers~1077_combout\ $ (\FD|UC_ULA|Equal0~0_combout\ $ (GND))))
-- \FD|ALU|Bnot|Add0~62\ = CARRY((!\FD|ALU|Bnot|Add0~60\ & (\FD|Banco_Regis|registers~1077_combout\ $ (!\FD|UC_ULA|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~1077_combout\,
	datab => \FD|UC_ULA|Equal0~0_combout\,
	datad => VCC,
	cin => \FD|ALU|Bnot|Add0~60\,
	combout => \FD|ALU|Bnot|Add0~61_combout\,
	cout => \FD|ALU|Bnot|Add0~62\);

-- Location: LCCOMB_X90_Y9_N28
\FD|ALU|somaSub[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[30]~60_combout\ = (\FD|ALU|Bnot|Add0~61_combout\ & (\FD|ALU|somaSub[29]~59\ $ (GND))) # (!\FD|ALU|Bnot|Add0~61_combout\ & (!\FD|ALU|somaSub[29]~59\ & VCC))
-- \FD|ALU|somaSub[30]~61\ = CARRY((\FD|ALU|Bnot|Add0~61_combout\ & !\FD|ALU|somaSub[29]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|Bnot|Add0~61_combout\,
	datad => VCC,
	cin => \FD|ALU|somaSub[29]~59\,
	combout => \FD|ALU|somaSub[30]~60_combout\,
	cout => \FD|ALU|somaSub[30]~61\);

-- Location: LCCOMB_X89_Y9_N28
\FD|ALU|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Add0~27_combout\ = (\FD|UC_ULA|ULActrl[1]~4_combout\ & \FD|ALU|somaSub[30]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[30]~60_combout\,
	combout => \FD|ALU|Add0~27_combout\);

-- Location: FF_X89_Y9_N29
\FD|Banco_Regis|registers~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|ALU|Add0~27_combout\,
	ena => \FD|Banco_Regis|registers~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Banco_Regis|registers~388_q\);

-- Location: LCCOMB_X92_Y9_N20
\FD|Banco_Regis|registers~1077\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Banco_Regis|registers~1077_combout\ = (\FD|Banco_Regis|registers~388_q\ & (\FD|PC|DOUT\(2) & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers~388_q\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|Banco_Regis|registers~1077_combout\);

-- Location: LCCOMB_X91_Y9_N30
\FD|ALU|Bnot|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Bnot|Add0~63_combout\ = \FD|UC_ULA|Equal0~0_combout\ $ (\FD|ALU|Bnot|Add0~62\ $ (!\FD|Banco_Regis|registers~1094_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|Equal0~0_combout\,
	datad => \FD|Banco_Regis|registers~1094_combout\,
	cin => \FD|ALU|Bnot|Add0~62\,
	combout => \FD|ALU|Bnot|Add0~63_combout\);

-- Location: LCCOMB_X90_Y9_N30
\FD|ALU|somaSub[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[31]~62_combout\ = \FD|ALU|Bnot|Add0~63_combout\ $ (\FD|ALU|somaSub[30]~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Bnot|Add0~63_combout\,
	cin => \FD|ALU|somaSub[30]~61\,
	combout => \FD|ALU|somaSub[31]~62_combout\);

-- Location: LCCOMB_X90_Y7_N8
\FD|comparadorDisplay|Equal0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comparadorDisplay|Equal0~37_combout\ = ((!\FD|ALU|somaSub[31]~62_combout\ & !\FD|ALU|somaSub[30]~60_combout\)) # (!\FD|UC_ULA|ULActrl[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|somaSub[31]~62_combout\,
	datab => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datad => \FD|ALU|somaSub[30]~60_combout\,
	combout => \FD|comparadorDisplay|Equal0~37_combout\);

-- Location: LCCOMB_X91_Y8_N6
\FD|comparadorDisplay|Equal0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comparadorDisplay|Equal0~32_combout\ = (\FD|ALU|Add0~0_combout\ & !\FD|ALU|Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ALU|Add0~0_combout\,
	datad => \FD|ALU|Add0~1_combout\,
	combout => \FD|comparadorDisplay|Equal0~32_combout\);

-- Location: LCCOMB_X91_Y7_N0
\FD|comparadorDisplay|Equal0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comparadorDisplay|Equal0~34_combout\ = (!\FD|ALU|Add0~7_combout\ & (!\FD|ALU|Add0~6_combout\ & (!\FD|ALU|Add0~8_combout\ & !\FD|ALU|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Add0~7_combout\,
	datab => \FD|ALU|Add0~6_combout\,
	datac => \FD|ALU|Add0~8_combout\,
	datad => \FD|ALU|Add0~9_combout\,
	combout => \FD|comparadorDisplay|Equal0~34_combout\);

-- Location: LCCOMB_X90_Y7_N14
\FD|comparadorDisplay|Equal0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comparadorDisplay|Equal0~35_combout\ = (!\FD|ALU|Add0~11_combout\ & (!\FD|ALU|Add0~12_combout\ & (!\FD|ALU|Add0~10_combout\ & !\FD|ALU|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Add0~11_combout\,
	datab => \FD|ALU|Add0~12_combout\,
	datac => \FD|ALU|Add0~10_combout\,
	datad => \FD|ALU|Add0~13_combout\,
	combout => \FD|comparadorDisplay|Equal0~35_combout\);

-- Location: LCCOMB_X91_Y8_N16
\FD|comparadorDisplay|Equal0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comparadorDisplay|Equal0~33_combout\ = (\FD|ALU|Add0~2_combout\ & (!\FD|ALU|Add0~5_combout\ & (!\FD|ALU|Add0~4_combout\ & !\FD|ALU|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Add0~2_combout\,
	datab => \FD|ALU|Add0~5_combout\,
	datac => \FD|ALU|Add0~4_combout\,
	datad => \FD|ALU|Add0~3_combout\,
	combout => \FD|comparadorDisplay|Equal0~33_combout\);

-- Location: LCCOMB_X90_Y7_N28
\FD|comparadorDisplay|Equal0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comparadorDisplay|Equal0~36_combout\ = (\FD|comparadorDisplay|Equal0~32_combout\ & (\FD|comparadorDisplay|Equal0~34_combout\ & (\FD|comparadorDisplay|Equal0~35_combout\ & \FD|comparadorDisplay|Equal0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|comparadorDisplay|Equal0~32_combout\,
	datab => \FD|comparadorDisplay|Equal0~34_combout\,
	datac => \FD|comparadorDisplay|Equal0~35_combout\,
	datad => \FD|comparadorDisplay|Equal0~33_combout\,
	combout => \FD|comparadorDisplay|Equal0~36_combout\);

-- Location: LCCOMB_X89_Y9_N4
\FD|comparadorDisplay|Equal0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comparadorDisplay|Equal0~44_combout\ = ((!\FD|ALU|somaSub[22]~44_combout\ & (!\FD|ALU|somaSub[23]~46_combout\ & !\FD|ALU|somaSub[24]~48_combout\))) # (!\FD|UC_ULA|ULActrl[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datab => \FD|ALU|somaSub[22]~44_combout\,
	datac => \FD|ALU|somaSub[23]~46_combout\,
	datad => \FD|ALU|somaSub[24]~48_combout\,
	combout => \FD|comparadorDisplay|Equal0~44_combout\);

-- Location: LCCOMB_X89_Y9_N24
\FD|comparadorDisplay|Equal0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comparadorDisplay|Equal0~40_combout\ = ((!\FD|ALU|somaSub[27]~54_combout\ & (!\FD|ALU|somaSub[26]~52_combout\ & !\FD|ALU|somaSub[29]~58_combout\))) # (!\FD|UC_ULA|ULActrl[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datab => \FD|ALU|somaSub[27]~54_combout\,
	datac => \FD|ALU|somaSub[26]~52_combout\,
	datad => \FD|ALU|somaSub[29]~58_combout\,
	combout => \FD|comparadorDisplay|Equal0~40_combout\);

-- Location: LCCOMB_X89_Y9_N14
\FD|comparadorDisplay|Equal0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comparadorDisplay|Equal0~41_combout\ = (!\FD|ALU|Add0~23_combout\ & (\FD|comparadorDisplay|Equal0~44_combout\ & (!\FD|ALU|Add0~22_combout\ & \FD|comparadorDisplay|Equal0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Add0~23_combout\,
	datab => \FD|comparadorDisplay|Equal0~44_combout\,
	datac => \FD|ALU|Add0~22_combout\,
	datad => \FD|comparadorDisplay|Equal0~40_combout\,
	combout => \FD|comparadorDisplay|Equal0~41_combout\);

-- Location: LCCOMB_X90_Y7_N6
\FD|comparadorDisplay|Equal0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comparadorDisplay|Equal0~38_combout\ = (!\FD|ALU|Add0~19_combout\ & (!\FD|ALU|Add0~18_combout\ & (!\FD|ALU|Add0~21_combout\ & !\FD|ALU|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Add0~19_combout\,
	datab => \FD|ALU|Add0~18_combout\,
	datac => \FD|ALU|Add0~21_combout\,
	datad => \FD|ALU|Add0~20_combout\,
	combout => \FD|comparadorDisplay|Equal0~38_combout\);

-- Location: LCCOMB_X90_Y7_N18
\FD|comparadorDisplay|Equal0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comparadorDisplay|Equal0~43_combout\ = (\FD|comparadorDisplay|Equal0~38_combout\ & ((!\FD|ALU|somaSub[18]~36_combout\) # (!\FD|UC_ULA|ULActrl[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|ULActrl[1]~4_combout\,
	datab => \FD|ALU|somaSub[18]~36_combout\,
	datad => \FD|comparadorDisplay|Equal0~38_combout\,
	combout => \FD|comparadorDisplay|Equal0~43_combout\);

-- Location: LCCOMB_X90_Y7_N12
\FD|comparadorDisplay|Equal0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comparadorDisplay|Equal0~39_combout\ = (!\FD|ALU|Add0~14_combout\ & (!\FD|ALU|Add0~15_combout\ & (!\FD|ALU|Add0~16_combout\ & \FD|comparadorDisplay|Equal0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Add0~14_combout\,
	datab => \FD|ALU|Add0~15_combout\,
	datac => \FD|ALU|Add0~16_combout\,
	datad => \FD|comparadorDisplay|Equal0~43_combout\,
	combout => \FD|comparadorDisplay|Equal0~39_combout\);

-- Location: LCCOMB_X90_Y7_N22
\FD|comparadorDisplay|Equal0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comparadorDisplay|Equal0~42_combout\ = (\FD|comparadorDisplay|Equal0~37_combout\ & (\FD|comparadorDisplay|Equal0~36_combout\ & (\FD|comparadorDisplay|Equal0~41_combout\ & \FD|comparadorDisplay|Equal0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|comparadorDisplay|Equal0~37_combout\,
	datab => \FD|comparadorDisplay|Equal0~36_combout\,
	datac => \FD|comparadorDisplay|Equal0~41_combout\,
	datad => \FD|comparadorDisplay|Equal0~39_combout\,
	combout => \FD|comparadorDisplay|Equal0~42_combout\);

-- Location: FF_X90_Y7_N19
\registradosDisplay|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	asdata => \FD|Banco_Regis|registers~1095_combout\,
	sload => VCC,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(0));

-- Location: FF_X90_Y7_N9
\registradosDisplay|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	asdata => \FD|Banco_Regis|registers~1062_combout\,
	sload => VCC,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(1));

-- Location: FF_X89_Y7_N13
\registradosDisplay|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	asdata => \FD|Banco_Regis|registers~1065_combout\,
	sload => VCC,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(2));

-- Location: FF_X91_Y7_N29
\registradosDisplay|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	asdata => \FD|Banco_Regis|registers~1064_combout\,
	sload => VCC,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(3));

-- Location: LCCOMB_X97_Y50_N24
\display0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[0]~0_combout\ = (\registradosDisplay|DOUT\(2) & (!\registradosDisplay|DOUT\(1) & (\registradosDisplay|DOUT\(0) $ (!\registradosDisplay|DOUT\(3))))) # (!\registradosDisplay|DOUT\(2) & (\registradosDisplay|DOUT\(0) & 
-- (\registradosDisplay|DOUT\(1) $ (!\registradosDisplay|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(0),
	datab => \registradosDisplay|DOUT\(1),
	datac => \registradosDisplay|DOUT\(2),
	datad => \registradosDisplay|DOUT\(3),
	combout => \display0|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X97_Y50_N14
\display0|rascSaida7seg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[0]~1_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display0|rascSaida7seg[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display0|rascSaida7seg[0]~0_combout\,
	combout => \display0|rascSaida7seg[0]~1_combout\);

-- Location: LCCOMB_X97_Y50_N20
\display0|rascSaida7seg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[1]~2_combout\ = (\registradosDisplay|DOUT\(1) & ((\registradosDisplay|DOUT\(0) & ((\registradosDisplay|DOUT\(3)))) # (!\registradosDisplay|DOUT\(0) & (\registradosDisplay|DOUT\(2))))) # (!\registradosDisplay|DOUT\(1) & 
-- (\registradosDisplay|DOUT\(2) & (\registradosDisplay|DOUT\(0) $ (\registradosDisplay|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(0),
	datab => \registradosDisplay|DOUT\(1),
	datac => \registradosDisplay|DOUT\(2),
	datad => \registradosDisplay|DOUT\(3),
	combout => \display0|rascSaida7seg[1]~2_combout\);

-- Location: LCCOMB_X97_Y50_N2
\display0|rascSaida7seg[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[1]~3_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display0|rascSaida7seg[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display0|rascSaida7seg[1]~2_combout\,
	combout => \display0|rascSaida7seg[1]~3_combout\);

-- Location: LCCOMB_X97_Y50_N12
\display0|rascSaida7seg[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[2]~4_combout\ = (\registradosDisplay|DOUT\(0) & (!\registradosDisplay|DOUT\(1) & \registradosDisplay|DOUT\(2))) # (!\registradosDisplay|DOUT\(0) & (\registradosDisplay|DOUT\(1) & !\registradosDisplay|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(0),
	datab => \registradosDisplay|DOUT\(1),
	datac => \registradosDisplay|DOUT\(2),
	combout => \display0|rascSaida7seg[2]~4_combout\);

-- Location: LCCOMB_X97_Y50_N22
\display0|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[2]~5_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # ((\registradosDisplay|DOUT\(3) & (\registradosDisplay|DOUT\(2) & !\display0|rascSaida7seg[2]~4_combout\)) # (!\registradosDisplay|DOUT\(3) & (!\registradosDisplay|DOUT\(2) & 
-- \display0|rascSaida7seg[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RST|output[0]~_Duplicate_1_q\,
	datab => \registradosDisplay|DOUT\(3),
	datac => \registradosDisplay|DOUT\(2),
	datad => \display0|rascSaida7seg[2]~4_combout\,
	combout => \display0|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X97_Y50_N28
\display0|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[3]~6_combout\ = (\registradosDisplay|DOUT\(1) & ((\registradosDisplay|DOUT\(0) & (\registradosDisplay|DOUT\(2))) # (!\registradosDisplay|DOUT\(0) & (!\registradosDisplay|DOUT\(2) & \registradosDisplay|DOUT\(3))))) # 
-- (!\registradosDisplay|DOUT\(1) & (!\registradosDisplay|DOUT\(3) & (\registradosDisplay|DOUT\(0) $ (\registradosDisplay|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(0),
	datab => \registradosDisplay|DOUT\(1),
	datac => \registradosDisplay|DOUT\(2),
	datad => \registradosDisplay|DOUT\(3),
	combout => \display0|rascSaida7seg[3]~6_combout\);

-- Location: LCCOMB_X97_Y50_N26
\display0|rascSaida7seg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[3]~7_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display0|rascSaida7seg[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display0|rascSaida7seg[3]~6_combout\,
	combout => \display0|rascSaida7seg[3]~7_combout\);

-- Location: LCCOMB_X97_Y50_N0
\display0|rascSaida7seg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[4]~8_combout\ = (\registradosDisplay|DOUT\(1) & (\registradosDisplay|DOUT\(0) & ((!\registradosDisplay|DOUT\(3))))) # (!\registradosDisplay|DOUT\(1) & ((\registradosDisplay|DOUT\(2) & ((!\registradosDisplay|DOUT\(3)))) # 
-- (!\registradosDisplay|DOUT\(2) & (\registradosDisplay|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(0),
	datab => \registradosDisplay|DOUT\(1),
	datac => \registradosDisplay|DOUT\(2),
	datad => \registradosDisplay|DOUT\(3),
	combout => \display0|rascSaida7seg[4]~8_combout\);

-- Location: LCCOMB_X97_Y50_N10
\display0|rascSaida7seg[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[4]~9_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display0|rascSaida7seg[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display0|rascSaida7seg[4]~8_combout\,
	combout => \display0|rascSaida7seg[4]~9_combout\);

-- Location: LCCOMB_X97_Y50_N4
\display0|rascSaida7seg[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[5]~10_combout\ = (\registradosDisplay|DOUT\(0) & (\registradosDisplay|DOUT\(3) $ (((\registradosDisplay|DOUT\(1)) # (!\registradosDisplay|DOUT\(2)))))) # (!\registradosDisplay|DOUT\(0) & (\registradosDisplay|DOUT\(1) & 
-- (!\registradosDisplay|DOUT\(2) & !\registradosDisplay|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(0),
	datab => \registradosDisplay|DOUT\(1),
	datac => \registradosDisplay|DOUT\(2),
	datad => \registradosDisplay|DOUT\(3),
	combout => \display0|rascSaida7seg[5]~10_combout\);

-- Location: LCCOMB_X97_Y50_N6
\display0|rascSaida7seg[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[5]~11_combout\ = (\display0|rascSaida7seg[5]~10_combout\) # (\BTN_RST|output[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display0|rascSaida7seg[5]~10_combout\,
	datad => \BTN_RST|output[0]~_Duplicate_1_q\,
	combout => \display0|rascSaida7seg[5]~11_combout\);

-- Location: LCCOMB_X97_Y50_N16
\display0|rascSaida7seg[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[6]~12_combout\ = (\registradosDisplay|DOUT\(0) & ((\registradosDisplay|DOUT\(3)) # (\registradosDisplay|DOUT\(1) $ (\registradosDisplay|DOUT\(2))))) # (!\registradosDisplay|DOUT\(0) & ((\registradosDisplay|DOUT\(1)) # 
-- (\registradosDisplay|DOUT\(2) $ (\registradosDisplay|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(0),
	datab => \registradosDisplay|DOUT\(1),
	datac => \registradosDisplay|DOUT\(2),
	datad => \registradosDisplay|DOUT\(3),
	combout => \display0|rascSaida7seg[6]~12_combout\);

-- Location: LCCOMB_X97_Y50_N30
\display0|rascSaida7seg[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[6]~13_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (!\display0|rascSaida7seg[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display0|rascSaida7seg[6]~12_combout\,
	combout => \display0|rascSaida7seg[6]~13_combout\);

-- Location: FF_X91_Y7_N5
\registradosDisplay|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1069_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(6));

-- Location: FF_X91_Y7_N17
\registradosDisplay|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1070_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(7));

-- Location: FF_X91_Y7_N27
\registradosDisplay|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	asdata => \FD|Banco_Regis|registers~1068_combout\,
	sload => VCC,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(5));

-- Location: FF_X91_Y7_N7
\registradosDisplay|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	asdata => \FD|Banco_Regis|registers~1063_combout\,
	sload => VCC,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(4));

-- Location: LCCOMB_X114_Y25_N24
\display1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~0_combout\ = (\registradosDisplay|DOUT\(6) & (!\registradosDisplay|DOUT\(5) & (\registradosDisplay|DOUT\(7) $ (!\registradosDisplay|DOUT\(4))))) # (!\registradosDisplay|DOUT\(6) & (\registradosDisplay|DOUT\(4) & 
-- (\registradosDisplay|DOUT\(7) $ (!\registradosDisplay|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(6),
	datab => \registradosDisplay|DOUT\(7),
	datac => \registradosDisplay|DOUT\(5),
	datad => \registradosDisplay|DOUT\(4),
	combout => \display1|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X114_Y25_N6
\display1|rascSaida7seg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~1_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display1|rascSaida7seg[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display1|rascSaida7seg[0]~0_combout\,
	combout => \display1|rascSaida7seg[0]~1_combout\);

-- Location: LCCOMB_X114_Y25_N20
\display1|rascSaida7seg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[1]~2_combout\ = (\registradosDisplay|DOUT\(7) & ((\registradosDisplay|DOUT\(4) & ((\registradosDisplay|DOUT\(5)))) # (!\registradosDisplay|DOUT\(4) & (\registradosDisplay|DOUT\(6))))) # (!\registradosDisplay|DOUT\(7) & 
-- (\registradosDisplay|DOUT\(6) & (\registradosDisplay|DOUT\(5) $ (\registradosDisplay|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(6),
	datab => \registradosDisplay|DOUT\(7),
	datac => \registradosDisplay|DOUT\(5),
	datad => \registradosDisplay|DOUT\(4),
	combout => \display1|rascSaida7seg[1]~2_combout\);

-- Location: LCCOMB_X114_Y25_N2
\display1|rascSaida7seg[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[1]~3_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display1|rascSaida7seg[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display1|rascSaida7seg[1]~2_combout\,
	combout => \display1|rascSaida7seg[1]~3_combout\);

-- Location: LCCOMB_X114_Y25_N8
\display1|rascSaida7seg[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[2]~4_combout\ = (\registradosDisplay|DOUT\(6) & (!\registradosDisplay|DOUT\(5) & \registradosDisplay|DOUT\(4))) # (!\registradosDisplay|DOUT\(6) & (\registradosDisplay|DOUT\(5) & !\registradosDisplay|DOUT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(6),
	datac => \registradosDisplay|DOUT\(5),
	datad => \registradosDisplay|DOUT\(4),
	combout => \display1|rascSaida7seg[2]~4_combout\);

-- Location: LCCOMB_X114_Y25_N18
\display1|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[2]~5_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # ((\registradosDisplay|DOUT\(6) & (\registradosDisplay|DOUT\(7) & !\display1|rascSaida7seg[2]~4_combout\)) # (!\registradosDisplay|DOUT\(6) & (!\registradosDisplay|DOUT\(7) & 
-- \display1|rascSaida7seg[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(6),
	datab => \registradosDisplay|DOUT\(7),
	datac => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display1|rascSaida7seg[2]~4_combout\,
	combout => \display1|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X114_Y25_N28
\display1|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[3]~6_combout\ = (\registradosDisplay|DOUT\(5) & ((\registradosDisplay|DOUT\(6) & ((\registradosDisplay|DOUT\(4)))) # (!\registradosDisplay|DOUT\(6) & (\registradosDisplay|DOUT\(7) & !\registradosDisplay|DOUT\(4))))) # 
-- (!\registradosDisplay|DOUT\(5) & (!\registradosDisplay|DOUT\(7) & (\registradosDisplay|DOUT\(6) $ (\registradosDisplay|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(6),
	datab => \registradosDisplay|DOUT\(7),
	datac => \registradosDisplay|DOUT\(5),
	datad => \registradosDisplay|DOUT\(4),
	combout => \display1|rascSaida7seg[3]~6_combout\);

-- Location: LCCOMB_X114_Y25_N26
\display1|rascSaida7seg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[3]~7_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display1|rascSaida7seg[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display1|rascSaida7seg[3]~6_combout\,
	combout => \display1|rascSaida7seg[3]~7_combout\);

-- Location: LCCOMB_X114_Y25_N16
\display1|rascSaida7seg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[4]~8_combout\ = (\registradosDisplay|DOUT\(5) & (((!\registradosDisplay|DOUT\(7) & \registradosDisplay|DOUT\(4))))) # (!\registradosDisplay|DOUT\(5) & ((\registradosDisplay|DOUT\(6) & (!\registradosDisplay|DOUT\(7))) # 
-- (!\registradosDisplay|DOUT\(6) & ((\registradosDisplay|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(6),
	datab => \registradosDisplay|DOUT\(7),
	datac => \registradosDisplay|DOUT\(5),
	datad => \registradosDisplay|DOUT\(4),
	combout => \display1|rascSaida7seg[4]~8_combout\);

-- Location: LCCOMB_X114_Y25_N30
\display1|rascSaida7seg[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[4]~9_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display1|rascSaida7seg[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display1|rascSaida7seg[4]~8_combout\,
	combout => \display1|rascSaida7seg[4]~9_combout\);

-- Location: LCCOMB_X114_Y25_N12
\display1|rascSaida7seg[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[5]~10_combout\ = (\registradosDisplay|DOUT\(6) & (\registradosDisplay|DOUT\(4) & (\registradosDisplay|DOUT\(7) $ (\registradosDisplay|DOUT\(5))))) # (!\registradosDisplay|DOUT\(6) & (!\registradosDisplay|DOUT\(7) & 
-- ((\registradosDisplay|DOUT\(5)) # (\registradosDisplay|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(6),
	datab => \registradosDisplay|DOUT\(7),
	datac => \registradosDisplay|DOUT\(5),
	datad => \registradosDisplay|DOUT\(4),
	combout => \display1|rascSaida7seg[5]~10_combout\);

-- Location: LCCOMB_X114_Y25_N14
\display1|rascSaida7seg[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[5]~11_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display1|rascSaida7seg[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display1|rascSaida7seg[5]~10_combout\,
	combout => \display1|rascSaida7seg[5]~11_combout\);

-- Location: LCCOMB_X114_Y25_N0
\display1|rascSaida7seg[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[6]~12_combout\ = (\registradosDisplay|DOUT\(4) & ((\registradosDisplay|DOUT\(7)) # (\registradosDisplay|DOUT\(6) $ (\registradosDisplay|DOUT\(5))))) # (!\registradosDisplay|DOUT\(4) & ((\registradosDisplay|DOUT\(5)) # 
-- (\registradosDisplay|DOUT\(6) $ (\registradosDisplay|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(6),
	datab => \registradosDisplay|DOUT\(7),
	datac => \registradosDisplay|DOUT\(5),
	datad => \registradosDisplay|DOUT\(4),
	combout => \display1|rascSaida7seg[6]~12_combout\);

-- Location: LCCOMB_X114_Y25_N22
\display1|rascSaida7seg[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[6]~13_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (!\display1|rascSaida7seg[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display1|rascSaida7seg[6]~12_combout\,
	combout => \display1|rascSaida7seg[6]~13_combout\);

-- Location: FF_X90_Y7_N21
\registradosDisplay|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1074_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(11));

-- Location: FF_X91_Y7_N21
\registradosDisplay|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1071_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(8));

-- Location: FF_X91_Y7_N3
\registradosDisplay|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1073_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(10));

-- Location: FF_X91_Y7_N15
\registradosDisplay|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1072_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(9));

-- Location: LCCOMB_X111_Y15_N20
\display2|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[0]~0_combout\ = (\registradosDisplay|DOUT\(11) & (\registradosDisplay|DOUT\(8) & (\registradosDisplay|DOUT\(10) $ (\registradosDisplay|DOUT\(9))))) # (!\registradosDisplay|DOUT\(11) & (!\registradosDisplay|DOUT\(9) & 
-- (\registradosDisplay|DOUT\(8) $ (\registradosDisplay|DOUT\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(11),
	datab => \registradosDisplay|DOUT\(8),
	datac => \registradosDisplay|DOUT\(10),
	datad => \registradosDisplay|DOUT\(9),
	combout => \display2|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X111_Y15_N10
\display2|rascSaida7seg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[0]~1_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display2|rascSaida7seg[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display2|rascSaida7seg[0]~0_combout\,
	combout => \display2|rascSaida7seg[0]~1_combout\);

-- Location: LCCOMB_X111_Y15_N28
\display2|rascSaida7seg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[1]~2_combout\ = (\registradosDisplay|DOUT\(11) & ((\registradosDisplay|DOUT\(8) & ((\registradosDisplay|DOUT\(9)))) # (!\registradosDisplay|DOUT\(8) & (\registradosDisplay|DOUT\(10))))) # (!\registradosDisplay|DOUT\(11) & 
-- (\registradosDisplay|DOUT\(10) & (\registradosDisplay|DOUT\(8) $ (\registradosDisplay|DOUT\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(11),
	datab => \registradosDisplay|DOUT\(8),
	datac => \registradosDisplay|DOUT\(10),
	datad => \registradosDisplay|DOUT\(9),
	combout => \display2|rascSaida7seg[1]~2_combout\);

-- Location: LCCOMB_X111_Y15_N30
\display2|rascSaida7seg[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[1]~3_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display2|rascSaida7seg[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display2|rascSaida7seg[1]~2_combout\,
	combout => \display2|rascSaida7seg[1]~3_combout\);

-- Location: LCCOMB_X111_Y15_N24
\display2|rascSaida7seg[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[2]~4_combout\ = (\registradosDisplay|DOUT\(9) & (!\registradosDisplay|DOUT\(8) & !\registradosDisplay|DOUT\(10))) # (!\registradosDisplay|DOUT\(9) & (\registradosDisplay|DOUT\(8) & \registradosDisplay|DOUT\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(9),
	datab => \registradosDisplay|DOUT\(8),
	datac => \registradosDisplay|DOUT\(10),
	combout => \display2|rascSaida7seg[2]~4_combout\);

-- Location: LCCOMB_X111_Y15_N26
\display2|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[2]~5_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # ((\registradosDisplay|DOUT\(11) & (\registradosDisplay|DOUT\(10) & !\display2|rascSaida7seg[2]~4_combout\)) # (!\registradosDisplay|DOUT\(11) & (!\registradosDisplay|DOUT\(10) 
-- & \display2|rascSaida7seg[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(11),
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datac => \registradosDisplay|DOUT\(10),
	datad => \display2|rascSaida7seg[2]~4_combout\,
	combout => \display2|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X111_Y15_N8
\display2|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[3]~6_combout\ = (\registradosDisplay|DOUT\(9) & ((\registradosDisplay|DOUT\(8) & ((\registradosDisplay|DOUT\(10)))) # (!\registradosDisplay|DOUT\(8) & (\registradosDisplay|DOUT\(11) & !\registradosDisplay|DOUT\(10))))) # 
-- (!\registradosDisplay|DOUT\(9) & (!\registradosDisplay|DOUT\(11) & (\registradosDisplay|DOUT\(8) $ (\registradosDisplay|DOUT\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(11),
	datab => \registradosDisplay|DOUT\(8),
	datac => \registradosDisplay|DOUT\(10),
	datad => \registradosDisplay|DOUT\(9),
	combout => \display2|rascSaida7seg[3]~6_combout\);

-- Location: LCCOMB_X111_Y15_N18
\display2|rascSaida7seg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[3]~7_combout\ = (\display2|rascSaida7seg[3]~6_combout\) # (\BTN_RST|output[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display2|rascSaida7seg[3]~6_combout\,
	datad => \BTN_RST|output[0]~_Duplicate_1_q\,
	combout => \display2|rascSaida7seg[3]~7_combout\);

-- Location: LCCOMB_X111_Y15_N4
\display2|rascSaida7seg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[4]~8_combout\ = (\registradosDisplay|DOUT\(9) & (!\registradosDisplay|DOUT\(11) & (\registradosDisplay|DOUT\(8)))) # (!\registradosDisplay|DOUT\(9) & ((\registradosDisplay|DOUT\(10) & (!\registradosDisplay|DOUT\(11))) # 
-- (!\registradosDisplay|DOUT\(10) & ((\registradosDisplay|DOUT\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(11),
	datab => \registradosDisplay|DOUT\(8),
	datac => \registradosDisplay|DOUT\(10),
	datad => \registradosDisplay|DOUT\(9),
	combout => \display2|rascSaida7seg[4]~8_combout\);

-- Location: LCCOMB_X111_Y15_N6
\display2|rascSaida7seg[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[4]~9_combout\ = (\display2|rascSaida7seg[4]~8_combout\) # (\BTN_RST|output[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display2|rascSaida7seg[4]~8_combout\,
	datad => \BTN_RST|output[0]~_Duplicate_1_q\,
	combout => \display2|rascSaida7seg[4]~9_combout\);

-- Location: LCCOMB_X111_Y15_N16
\display2|rascSaida7seg[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[5]~10_combout\ = (\registradosDisplay|DOUT\(8) & (\registradosDisplay|DOUT\(11) $ (((\registradosDisplay|DOUT\(9)) # (!\registradosDisplay|DOUT\(10)))))) # (!\registradosDisplay|DOUT\(8) & (!\registradosDisplay|DOUT\(11) & 
-- (!\registradosDisplay|DOUT\(10) & \registradosDisplay|DOUT\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(11),
	datab => \registradosDisplay|DOUT\(8),
	datac => \registradosDisplay|DOUT\(10),
	datad => \registradosDisplay|DOUT\(9),
	combout => \display2|rascSaida7seg[5]~10_combout\);

-- Location: LCCOMB_X111_Y15_N14
\display2|rascSaida7seg[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[5]~11_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display2|rascSaida7seg[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display2|rascSaida7seg[5]~10_combout\,
	combout => \display2|rascSaida7seg[5]~11_combout\);

-- Location: LCCOMB_X111_Y15_N12
\display2|rascSaida7seg[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[6]~12_combout\ = (\registradosDisplay|DOUT\(8) & ((\registradosDisplay|DOUT\(11)) # (\registradosDisplay|DOUT\(10) $ (\registradosDisplay|DOUT\(9))))) # (!\registradosDisplay|DOUT\(8) & ((\registradosDisplay|DOUT\(9)) # 
-- (\registradosDisplay|DOUT\(11) $ (\registradosDisplay|DOUT\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(11),
	datab => \registradosDisplay|DOUT\(8),
	datac => \registradosDisplay|DOUT\(10),
	datad => \registradosDisplay|DOUT\(9),
	combout => \display2|rascSaida7seg[6]~12_combout\);

-- Location: LCCOMB_X111_Y15_N22
\display2|rascSaida7seg[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[6]~13_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (!\display2|rascSaida7seg[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display2|rascSaida7seg[6]~12_combout\,
	combout => \display2|rascSaida7seg[6]~13_combout\);

-- Location: FF_X90_Y7_N17
\registradosDisplay|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1092_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(15));

-- Location: FF_X90_Y7_N31
\registradosDisplay|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1075_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(12));

-- Location: FF_X90_Y7_N11
\registradosDisplay|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1076_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(13));

-- Location: FF_X91_Y7_N25
\registradosDisplay|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1093_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(14));

-- Location: LCCOMB_X102_Y4_N24
\display3|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[0]~0_combout\ = (\registradosDisplay|DOUT\(15) & (\registradosDisplay|DOUT\(12) & (\registradosDisplay|DOUT\(13) $ (\registradosDisplay|DOUT\(14))))) # (!\registradosDisplay|DOUT\(15) & (!\registradosDisplay|DOUT\(13) & 
-- (\registradosDisplay|DOUT\(12) $ (\registradosDisplay|DOUT\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(15),
	datab => \registradosDisplay|DOUT\(12),
	datac => \registradosDisplay|DOUT\(13),
	datad => \registradosDisplay|DOUT\(14),
	combout => \display3|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X114_Y25_N4
\display3|rascSaida7seg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[0]~1_combout\ = (\display3|rascSaida7seg[0]~0_combout\) # (\BTN_RST|output[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display3|rascSaida7seg[0]~0_combout\,
	datad => \BTN_RST|output[0]~_Duplicate_1_q\,
	combout => \display3|rascSaida7seg[0]~1_combout\);

-- Location: LCCOMB_X102_Y4_N26
\display3|rascSaida7seg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[1]~2_combout\ = (\registradosDisplay|DOUT\(15) & ((\registradosDisplay|DOUT\(12) & (\registradosDisplay|DOUT\(13))) # (!\registradosDisplay|DOUT\(12) & ((\registradosDisplay|DOUT\(14)))))) # (!\registradosDisplay|DOUT\(15) & 
-- (\registradosDisplay|DOUT\(14) & (\registradosDisplay|DOUT\(12) $ (\registradosDisplay|DOUT\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(15),
	datab => \registradosDisplay|DOUT\(12),
	datac => \registradosDisplay|DOUT\(13),
	datad => \registradosDisplay|DOUT\(14),
	combout => \display3|rascSaida7seg[1]~2_combout\);

-- Location: LCCOMB_X114_Y25_N10
\display3|rascSaida7seg[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[1]~3_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display3|rascSaida7seg[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display3|rascSaida7seg[1]~2_combout\,
	combout => \display3|rascSaida7seg[1]~3_combout\);

-- Location: LCCOMB_X102_Y4_N8
\display3|rascSaida7seg[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[2]~4_combout\ = (\registradosDisplay|DOUT\(14) & (!\registradosDisplay|DOUT\(13) & \registradosDisplay|DOUT\(12))) # (!\registradosDisplay|DOUT\(14) & (\registradosDisplay|DOUT\(13) & !\registradosDisplay|DOUT\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registradosDisplay|DOUT\(14),
	datac => \registradosDisplay|DOUT\(13),
	datad => \registradosDisplay|DOUT\(12),
	combout => \display3|rascSaida7seg[2]~4_combout\);

-- Location: LCCOMB_X102_Y4_N18
\display3|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[2]~5_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # ((\display3|rascSaida7seg[2]~4_combout\ & (!\registradosDisplay|DOUT\(14) & !\registradosDisplay|DOUT\(15))) # (!\display3|rascSaida7seg[2]~4_combout\ & 
-- (\registradosDisplay|DOUT\(14) & \registradosDisplay|DOUT\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display3|rascSaida7seg[2]~4_combout\,
	datab => \registradosDisplay|DOUT\(14),
	datac => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \registradosDisplay|DOUT\(15),
	combout => \display3|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X102_Y4_N28
\display3|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[3]~6_combout\ = (\registradosDisplay|DOUT\(13) & ((\registradosDisplay|DOUT\(12) & ((\registradosDisplay|DOUT\(14)))) # (!\registradosDisplay|DOUT\(12) & (\registradosDisplay|DOUT\(15) & !\registradosDisplay|DOUT\(14))))) # 
-- (!\registradosDisplay|DOUT\(13) & (!\registradosDisplay|DOUT\(15) & (\registradosDisplay|DOUT\(12) $ (\registradosDisplay|DOUT\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(15),
	datab => \registradosDisplay|DOUT\(12),
	datac => \registradosDisplay|DOUT\(13),
	datad => \registradosDisplay|DOUT\(14),
	combout => \display3|rascSaida7seg[3]~6_combout\);

-- Location: LCCOMB_X102_Y4_N2
\display3|rascSaida7seg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[3]~7_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display3|rascSaida7seg[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display3|rascSaida7seg[3]~6_combout\,
	combout => \display3|rascSaida7seg[3]~7_combout\);

-- Location: LCCOMB_X102_Y4_N20
\display3|rascSaida7seg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[4]~8_combout\ = (\registradosDisplay|DOUT\(13) & (!\registradosDisplay|DOUT\(15) & (\registradosDisplay|DOUT\(12)))) # (!\registradosDisplay|DOUT\(13) & ((\registradosDisplay|DOUT\(14) & (!\registradosDisplay|DOUT\(15))) # 
-- (!\registradosDisplay|DOUT\(14) & ((\registradosDisplay|DOUT\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(15),
	datab => \registradosDisplay|DOUT\(12),
	datac => \registradosDisplay|DOUT\(13),
	datad => \registradosDisplay|DOUT\(14),
	combout => \display3|rascSaida7seg[4]~8_combout\);

-- Location: LCCOMB_X102_Y4_N10
\display3|rascSaida7seg[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[4]~9_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display3|rascSaida7seg[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display3|rascSaida7seg[4]~8_combout\,
	combout => \display3|rascSaida7seg[4]~9_combout\);

-- Location: LCCOMB_X102_Y4_N12
\display3|rascSaida7seg[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[5]~10_combout\ = (\registradosDisplay|DOUT\(12) & (\registradosDisplay|DOUT\(15) $ (((\registradosDisplay|DOUT\(13)) # (!\registradosDisplay|DOUT\(14)))))) # (!\registradosDisplay|DOUT\(12) & (!\registradosDisplay|DOUT\(15) & 
-- (\registradosDisplay|DOUT\(13) & !\registradosDisplay|DOUT\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(15),
	datab => \registradosDisplay|DOUT\(12),
	datac => \registradosDisplay|DOUT\(13),
	datad => \registradosDisplay|DOUT\(14),
	combout => \display3|rascSaida7seg[5]~10_combout\);

-- Location: LCCOMB_X102_Y4_N14
\display3|rascSaida7seg[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[5]~11_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display3|rascSaida7seg[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display3|rascSaida7seg[5]~10_combout\,
	combout => \display3|rascSaida7seg[5]~11_combout\);

-- Location: LCCOMB_X102_Y4_N4
\display3|rascSaida7seg[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[6]~12_combout\ = (\registradosDisplay|DOUT\(12) & ((\registradosDisplay|DOUT\(15)) # (\registradosDisplay|DOUT\(13) $ (\registradosDisplay|DOUT\(14))))) # (!\registradosDisplay|DOUT\(12) & ((\registradosDisplay|DOUT\(13)) # 
-- (\registradosDisplay|DOUT\(15) $ (\registradosDisplay|DOUT\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(15),
	datab => \registradosDisplay|DOUT\(12),
	datac => \registradosDisplay|DOUT\(13),
	datad => \registradosDisplay|DOUT\(14),
	combout => \display3|rascSaida7seg[6]~12_combout\);

-- Location: LCCOMB_X102_Y4_N22
\display3|rascSaida7seg[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[6]~13_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (!\display3|rascSaida7seg[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display3|rascSaida7seg[6]~12_combout\,
	datac => \BTN_RST|output[0]~_Duplicate_1_q\,
	combout => \display3|rascSaida7seg[6]~13_combout\);

-- Location: FF_X90_Y8_N31
\registradosDisplay|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1088_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(19));

-- Location: FF_X90_Y8_N5
\registradosDisplay|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1090_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(17));

-- Location: FF_X89_Y7_N7
\registradosDisplay|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	asdata => \FD|Banco_Regis|registers~1091_combout\,
	sload => VCC,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(16));

-- Location: FF_X91_Y7_N19
\registradosDisplay|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	asdata => \FD|Banco_Regis|registers~1089_combout\,
	sload => VCC,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(18));

-- Location: LCCOMB_X83_Y4_N16
\display4|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[0]~0_combout\ = (\registradosDisplay|DOUT\(19) & (\registradosDisplay|DOUT\(16) & (\registradosDisplay|DOUT\(17) $ (\registradosDisplay|DOUT\(18))))) # (!\registradosDisplay|DOUT\(19) & (!\registradosDisplay|DOUT\(17) & 
-- (\registradosDisplay|DOUT\(16) $ (\registradosDisplay|DOUT\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(19),
	datab => \registradosDisplay|DOUT\(17),
	datac => \registradosDisplay|DOUT\(16),
	datad => \registradosDisplay|DOUT\(18),
	combout => \display4|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X83_Y4_N14
\display4|rascSaida7seg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[0]~1_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display4|rascSaida7seg[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display4|rascSaida7seg[0]~0_combout\,
	combout => \display4|rascSaida7seg[0]~1_combout\);

-- Location: LCCOMB_X83_Y4_N12
\display4|rascSaida7seg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[1]~2_combout\ = (\registradosDisplay|DOUT\(19) & ((\registradosDisplay|DOUT\(16) & (\registradosDisplay|DOUT\(17))) # (!\registradosDisplay|DOUT\(16) & ((\registradosDisplay|DOUT\(18)))))) # (!\registradosDisplay|DOUT\(19) & 
-- (\registradosDisplay|DOUT\(18) & (\registradosDisplay|DOUT\(17) $ (\registradosDisplay|DOUT\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(19),
	datab => \registradosDisplay|DOUT\(17),
	datac => \registradosDisplay|DOUT\(16),
	datad => \registradosDisplay|DOUT\(18),
	combout => \display4|rascSaida7seg[1]~2_combout\);

-- Location: LCCOMB_X83_Y4_N22
\display4|rascSaida7seg[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[1]~3_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display4|rascSaida7seg[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display4|rascSaida7seg[1]~2_combout\,
	combout => \display4|rascSaida7seg[1]~3_combout\);

-- Location: LCCOMB_X83_Y4_N4
\display4|rascSaida7seg[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[2]~4_combout\ = (\registradosDisplay|DOUT\(17) & (!\registradosDisplay|DOUT\(16) & !\registradosDisplay|DOUT\(18))) # (!\registradosDisplay|DOUT\(17) & (\registradosDisplay|DOUT\(16) & \registradosDisplay|DOUT\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registradosDisplay|DOUT\(17),
	datac => \registradosDisplay|DOUT\(16),
	datad => \registradosDisplay|DOUT\(18),
	combout => \display4|rascSaida7seg[2]~4_combout\);

-- Location: LCCOMB_X83_Y4_N10
\display4|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[2]~5_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # ((\registradosDisplay|DOUT\(19) & (!\display4|rascSaida7seg[2]~4_combout\ & \registradosDisplay|DOUT\(18))) # (!\registradosDisplay|DOUT\(19) & 
-- (\display4|rascSaida7seg[2]~4_combout\ & !\registradosDisplay|DOUT\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(19),
	datab => \display4|rascSaida7seg[2]~4_combout\,
	datac => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \registradosDisplay|DOUT\(18),
	combout => \display4|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X83_Y4_N28
\display4|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[3]~6_combout\ = (\registradosDisplay|DOUT\(17) & ((\registradosDisplay|DOUT\(16) & ((\registradosDisplay|DOUT\(18)))) # (!\registradosDisplay|DOUT\(16) & (\registradosDisplay|DOUT\(19) & !\registradosDisplay|DOUT\(18))))) # 
-- (!\registradosDisplay|DOUT\(17) & (!\registradosDisplay|DOUT\(19) & (\registradosDisplay|DOUT\(16) $ (\registradosDisplay|DOUT\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(19),
	datab => \registradosDisplay|DOUT\(17),
	datac => \registradosDisplay|DOUT\(16),
	datad => \registradosDisplay|DOUT\(18),
	combout => \display4|rascSaida7seg[3]~6_combout\);

-- Location: LCCOMB_X83_Y4_N30
\display4|rascSaida7seg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[3]~7_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display4|rascSaida7seg[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display4|rascSaida7seg[3]~6_combout\,
	combout => \display4|rascSaida7seg[3]~7_combout\);

-- Location: LCCOMB_X83_Y4_N24
\display4|rascSaida7seg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[4]~8_combout\ = (\registradosDisplay|DOUT\(17) & (!\registradosDisplay|DOUT\(19) & (\registradosDisplay|DOUT\(16)))) # (!\registradosDisplay|DOUT\(17) & ((\registradosDisplay|DOUT\(18) & (!\registradosDisplay|DOUT\(19))) # 
-- (!\registradosDisplay|DOUT\(18) & ((\registradosDisplay|DOUT\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(19),
	datab => \registradosDisplay|DOUT\(17),
	datac => \registradosDisplay|DOUT\(16),
	datad => \registradosDisplay|DOUT\(18),
	combout => \display4|rascSaida7seg[4]~8_combout\);

-- Location: LCCOMB_X83_Y4_N18
\display4|rascSaida7seg[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[4]~9_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display4|rascSaida7seg[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display4|rascSaida7seg[4]~8_combout\,
	combout => \display4|rascSaida7seg[4]~9_combout\);

-- Location: LCCOMB_X83_Y4_N8
\display4|rascSaida7seg[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[5]~10_combout\ = (\registradosDisplay|DOUT\(17) & (!\registradosDisplay|DOUT\(19) & ((\registradosDisplay|DOUT\(16)) # (!\registradosDisplay|DOUT\(18))))) # (!\registradosDisplay|DOUT\(17) & (\registradosDisplay|DOUT\(16) & 
-- (\registradosDisplay|DOUT\(19) $ (!\registradosDisplay|DOUT\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(19),
	datab => \registradosDisplay|DOUT\(17),
	datac => \registradosDisplay|DOUT\(16),
	datad => \registradosDisplay|DOUT\(18),
	combout => \display4|rascSaida7seg[5]~10_combout\);

-- Location: LCCOMB_X83_Y4_N26
\display4|rascSaida7seg[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[5]~11_combout\ = (\display4|rascSaida7seg[5]~10_combout\) # (\BTN_RST|output[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display4|rascSaida7seg[5]~10_combout\,
	datac => \BTN_RST|output[0]~_Duplicate_1_q\,
	combout => \display4|rascSaida7seg[5]~11_combout\);

-- Location: LCCOMB_X83_Y4_N20
\display4|rascSaida7seg[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[6]~12_combout\ = (\registradosDisplay|DOUT\(16) & ((\registradosDisplay|DOUT\(19)) # (\registradosDisplay|DOUT\(17) $ (\registradosDisplay|DOUT\(18))))) # (!\registradosDisplay|DOUT\(16) & ((\registradosDisplay|DOUT\(17)) # 
-- (\registradosDisplay|DOUT\(19) $ (\registradosDisplay|DOUT\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(19),
	datab => \registradosDisplay|DOUT\(17),
	datac => \registradosDisplay|DOUT\(16),
	datad => \registradosDisplay|DOUT\(18),
	combout => \display4|rascSaida7seg[6]~12_combout\);

-- Location: LCCOMB_X83_Y4_N6
\display4|rascSaida7seg[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[6]~13_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (!\display4|rascSaida7seg[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display4|rascSaida7seg[6]~12_combout\,
	combout => \display4|rascSaida7seg[6]~13_combout\);

-- Location: FF_X89_Y7_N11
\registradosDisplay|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1084_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(23));

-- Location: FF_X89_Y7_N29
\registradosDisplay|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1087_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(20));

-- Location: FF_X89_Y7_N27
\registradosDisplay|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1085_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(22));

-- Location: FF_X89_Y7_N21
\registradosDisplay|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|Banco_Regis|registers~1086_combout\,
	ena => \FD|comparadorDisplay|Equal0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registradosDisplay|DOUT\(21));

-- Location: LCCOMB_X86_Y3_N4
\display5|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[0]~0_combout\ = (\registradosDisplay|DOUT\(23) & (\registradosDisplay|DOUT\(20) & (\registradosDisplay|DOUT\(22) $ (\registradosDisplay|DOUT\(21))))) # (!\registradosDisplay|DOUT\(23) & (!\registradosDisplay|DOUT\(21) & 
-- (\registradosDisplay|DOUT\(20) $ (\registradosDisplay|DOUT\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(23),
	datab => \registradosDisplay|DOUT\(20),
	datac => \registradosDisplay|DOUT\(22),
	datad => \registradosDisplay|DOUT\(21),
	combout => \display5|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X86_Y3_N18
\display5|rascSaida7seg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[0]~1_combout\ = (\display5|rascSaida7seg[0]~0_combout\) # (\BTN_RST|output[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display5|rascSaida7seg[0]~0_combout\,
	datad => \BTN_RST|output[0]~_Duplicate_1_q\,
	combout => \display5|rascSaida7seg[0]~1_combout\);

-- Location: LCCOMB_X86_Y3_N20
\display5|rascSaida7seg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[1]~2_combout\ = (\registradosDisplay|DOUT\(23) & ((\registradosDisplay|DOUT\(20) & ((\registradosDisplay|DOUT\(21)))) # (!\registradosDisplay|DOUT\(20) & (\registradosDisplay|DOUT\(22))))) # (!\registradosDisplay|DOUT\(23) & 
-- (\registradosDisplay|DOUT\(22) & (\registradosDisplay|DOUT\(20) $ (\registradosDisplay|DOUT\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(23),
	datab => \registradosDisplay|DOUT\(20),
	datac => \registradosDisplay|DOUT\(22),
	datad => \registradosDisplay|DOUT\(21),
	combout => \display5|rascSaida7seg[1]~2_combout\);

-- Location: LCCOMB_X86_Y3_N14
\display5|rascSaida7seg[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[1]~3_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display5|rascSaida7seg[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display5|rascSaida7seg[1]~2_combout\,
	combout => \display5|rascSaida7seg[1]~3_combout\);

-- Location: LCCOMB_X86_Y3_N12
\display5|rascSaida7seg[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[2]~4_combout\ = (\registradosDisplay|DOUT\(20) & (\registradosDisplay|DOUT\(22) & !\registradosDisplay|DOUT\(21))) # (!\registradosDisplay|DOUT\(20) & (!\registradosDisplay|DOUT\(22) & \registradosDisplay|DOUT\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registradosDisplay|DOUT\(20),
	datac => \registradosDisplay|DOUT\(22),
	datad => \registradosDisplay|DOUT\(21),
	combout => \display5|rascSaida7seg[2]~4_combout\);

-- Location: LCCOMB_X86_Y3_N10
\display5|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[2]~5_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # ((\registradosDisplay|DOUT\(23) & (\registradosDisplay|DOUT\(22) & !\display5|rascSaida7seg[2]~4_combout\)) # (!\registradosDisplay|DOUT\(23) & (!\registradosDisplay|DOUT\(22) 
-- & \display5|rascSaida7seg[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(23),
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datac => \registradosDisplay|DOUT\(22),
	datad => \display5|rascSaida7seg[2]~4_combout\,
	combout => \display5|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X86_Y3_N16
\display5|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[3]~6_combout\ = (\registradosDisplay|DOUT\(21) & ((\registradosDisplay|DOUT\(20) & ((\registradosDisplay|DOUT\(22)))) # (!\registradosDisplay|DOUT\(20) & (\registradosDisplay|DOUT\(23) & !\registradosDisplay|DOUT\(22))))) # 
-- (!\registradosDisplay|DOUT\(21) & (!\registradosDisplay|DOUT\(23) & (\registradosDisplay|DOUT\(20) $ (\registradosDisplay|DOUT\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(23),
	datab => \registradosDisplay|DOUT\(20),
	datac => \registradosDisplay|DOUT\(22),
	datad => \registradosDisplay|DOUT\(21),
	combout => \display5|rascSaida7seg[3]~6_combout\);

-- Location: LCCOMB_X86_Y3_N22
\display5|rascSaida7seg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[3]~7_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display5|rascSaida7seg[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display5|rascSaida7seg[3]~6_combout\,
	combout => \display5|rascSaida7seg[3]~7_combout\);

-- Location: LCCOMB_X86_Y3_N24
\display5|rascSaida7seg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[4]~8_combout\ = (\registradosDisplay|DOUT\(21) & (!\registradosDisplay|DOUT\(23) & (\registradosDisplay|DOUT\(20)))) # (!\registradosDisplay|DOUT\(21) & ((\registradosDisplay|DOUT\(22) & (!\registradosDisplay|DOUT\(23))) # 
-- (!\registradosDisplay|DOUT\(22) & ((\registradosDisplay|DOUT\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(23),
	datab => \registradosDisplay|DOUT\(20),
	datac => \registradosDisplay|DOUT\(22),
	datad => \registradosDisplay|DOUT\(21),
	combout => \display5|rascSaida7seg[4]~8_combout\);

-- Location: LCCOMB_X86_Y3_N6
\display5|rascSaida7seg[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[4]~9_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display5|rascSaida7seg[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display5|rascSaida7seg[4]~8_combout\,
	combout => \display5|rascSaida7seg[4]~9_combout\);

-- Location: LCCOMB_X86_Y3_N28
\display5|rascSaida7seg[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[5]~10_combout\ = (\registradosDisplay|DOUT\(20) & (\registradosDisplay|DOUT\(23) $ (((\registradosDisplay|DOUT\(21)) # (!\registradosDisplay|DOUT\(22)))))) # (!\registradosDisplay|DOUT\(20) & (!\registradosDisplay|DOUT\(23) & 
-- (!\registradosDisplay|DOUT\(22) & \registradosDisplay|DOUT\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(23),
	datab => \registradosDisplay|DOUT\(20),
	datac => \registradosDisplay|DOUT\(22),
	datad => \registradosDisplay|DOUT\(21),
	combout => \display5|rascSaida7seg[5]~10_combout\);

-- Location: LCCOMB_X86_Y3_N30
\display5|rascSaida7seg[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[5]~11_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (\display5|rascSaida7seg[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_RST|output[0]~_Duplicate_1_q\,
	datad => \display5|rascSaida7seg[5]~10_combout\,
	combout => \display5|rascSaida7seg[5]~11_combout\);

-- Location: LCCOMB_X86_Y3_N8
\display5|rascSaida7seg[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[6]~12_combout\ = (\registradosDisplay|DOUT\(20) & ((\registradosDisplay|DOUT\(23)) # (\registradosDisplay|DOUT\(22) $ (\registradosDisplay|DOUT\(21))))) # (!\registradosDisplay|DOUT\(20) & ((\registradosDisplay|DOUT\(21)) # 
-- (\registradosDisplay|DOUT\(23) $ (\registradosDisplay|DOUT\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registradosDisplay|DOUT\(23),
	datab => \registradosDisplay|DOUT\(20),
	datac => \registradosDisplay|DOUT\(22),
	datad => \registradosDisplay|DOUT\(21),
	combout => \display5|rascSaida7seg[6]~12_combout\);

-- Location: LCCOMB_X86_Y3_N26
\display5|rascSaida7seg[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[6]~13_combout\ = (\BTN_RST|output[0]~_Duplicate_1_q\) # (!\display5|rascSaida7seg[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display5|rascSaida7seg[6]~12_combout\,
	datad => \BTN_RST|output[0]~_Duplicate_1_q\,
	combout => \display5|rascSaida7seg[6]~13_combout\);

-- Location: LCCOMB_X89_Y8_N0
\display6|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[0]~0_combout\ = (\FD|PC|DOUT\(2) & !\FD|PC|DOUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(2),
	datad => \FD|PC|DOUT\(3),
	combout => \display6|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X89_Y8_N26
\display6|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[1]~1_combout\ = (\FD|PC|DOUT\(2) & \FD|PC|DOUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(2),
	datad => \FD|PC|DOUT\(3),
	combout => \display6|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X89_Y8_N12
\display6|rascSaida7seg[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[6]~2_combout\ = \FD|PC|DOUT\(2) $ (\FD|PC|DOUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(2),
	datad => \FD|PC|DOUT\(3),
	combout => \display6|rascSaida7seg[6]~2_combout\);

-- Location: LCCOMB_X90_Y8_N22
\FD|PC|DOUT[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[6]~14_combout\ = (\FD|PC|DOUT\(6) & (\FD|PC|DOUT[5]~13\ $ (GND))) # (!\FD|PC|DOUT\(6) & (!\FD|PC|DOUT[5]~13\ & VCC))
-- \FD|PC|DOUT[6]~15\ = CARRY((\FD|PC|DOUT\(6) & !\FD|PC|DOUT[5]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(6),
	datad => VCC,
	cin => \FD|PC|DOUT[5]~13\,
	combout => \FD|PC|DOUT[6]~14_combout\,
	cout => \FD|PC|DOUT[6]~15\);

-- Location: FF_X90_Y8_N23
\FD|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|PC|DOUT[6]~14_combout\,
	clrn => \BTN_RST|ALT_INV_output[0]~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(6));

-- Location: LCCOMB_X90_Y8_N24
\FD|PC|DOUT[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[7]~16_combout\ = \FD|PC|DOUT[6]~15\ $ (\FD|PC|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|DOUT\(7),
	cin => \FD|PC|DOUT[6]~15\,
	combout => \FD|PC|DOUT[7]~16_combout\);

-- Location: FF_X90_Y8_N25
\FD|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|output[0]~clkctrl_outclk\,
	d => \FD|PC|DOUT[7]~16_combout\,
	clrn => \BTN_RST|ALT_INV_output[0]~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(7));

-- Location: LCCOMB_X89_Y8_N18
\display7|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display7|rascSaida7seg[0]~0_combout\ = (\FD|PC|DOUT\(7) & (\FD|PC|DOUT\(4) & (\FD|PC|DOUT\(5) $ (\FD|PC|DOUT\(6))))) # (!\FD|PC|DOUT\(7) & (!\FD|PC|DOUT\(5) & (\FD|PC|DOUT\(4) $ (\FD|PC|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|PC|DOUT\(6),
	combout => \display7|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X89_Y8_N24
\display7|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display7|rascSaida7seg[1]~1_combout\ = (\FD|PC|DOUT\(7) & ((\FD|PC|DOUT\(4) & (\FD|PC|DOUT\(5))) # (!\FD|PC|DOUT\(4) & ((\FD|PC|DOUT\(6)))))) # (!\FD|PC|DOUT\(7) & (\FD|PC|DOUT\(6) & (\FD|PC|DOUT\(4) $ (\FD|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|PC|DOUT\(6),
	combout => \display7|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X89_Y8_N22
\display7|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display7|rascSaida7seg[2]~2_combout\ = (\FD|PC|DOUT\(7) & (\FD|PC|DOUT\(6) & ((\FD|PC|DOUT\(5)) # (!\FD|PC|DOUT\(4))))) # (!\FD|PC|DOUT\(7) & (!\FD|PC|DOUT\(4) & (\FD|PC|DOUT\(5) & !\FD|PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|PC|DOUT\(6),
	combout => \display7|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X89_Y8_N28
\display7|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display7|rascSaida7seg[3]~3_combout\ = (\FD|PC|DOUT\(5) & ((\FD|PC|DOUT\(4) & ((\FD|PC|DOUT\(6)))) # (!\FD|PC|DOUT\(4) & (\FD|PC|DOUT\(7) & !\FD|PC|DOUT\(6))))) # (!\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(7) & (\FD|PC|DOUT\(4) $ (\FD|PC|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|PC|DOUT\(6),
	combout => \display7|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X89_Y8_N30
\display7|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display7|rascSaida7seg[4]~4_combout\ = (\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(7) & (\FD|PC|DOUT\(4)))) # (!\FD|PC|DOUT\(5) & ((\FD|PC|DOUT\(6) & (!\FD|PC|DOUT\(7))) # (!\FD|PC|DOUT\(6) & ((\FD|PC|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|PC|DOUT\(6),
	combout => \display7|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X89_Y8_N4
\display7|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display7|rascSaida7seg[5]~5_combout\ = (\FD|PC|DOUT\(4) & (\FD|PC|DOUT\(7) $ (((\FD|PC|DOUT\(5)) # (!\FD|PC|DOUT\(6)))))) # (!\FD|PC|DOUT\(4) & (!\FD|PC|DOUT\(7) & (\FD|PC|DOUT\(5) & !\FD|PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|PC|DOUT\(6),
	combout => \display7|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X89_Y8_N10
\display7|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display7|rascSaida7seg[6]~6_combout\ = (\FD|PC|DOUT\(4) & (!\FD|PC|DOUT\(7) & (\FD|PC|DOUT\(5) $ (!\FD|PC|DOUT\(6))))) # (!\FD|PC|DOUT\(4) & (!\FD|PC|DOUT\(5) & (\FD|PC|DOUT\(7) $ (!\FD|PC|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|PC|DOUT\(6),
	combout => \display7|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_enderecoReg1Test(0) <= \enderecoReg1Test[0]~output_o\;

ww_enderecoReg1Test(1) <= \enderecoReg1Test[1]~output_o\;

ww_enderecoReg1Test(2) <= \enderecoReg1Test[2]~output_o\;

ww_enderecoReg1Test(3) <= \enderecoReg1Test[3]~output_o\;

ww_enderecoReg1Test(4) <= \enderecoReg1Test[4]~output_o\;

ww_enderecoReg2Test(0) <= \enderecoReg2Test[0]~output_o\;

ww_enderecoReg2Test(1) <= \enderecoReg2Test[1]~output_o\;

ww_enderecoReg2Test(2) <= \enderecoReg2Test[2]~output_o\;

ww_enderecoReg2Test(3) <= \enderecoReg2Test[3]~output_o\;

ww_enderecoReg2Test(4) <= \enderecoReg2Test[4]~output_o\;

ww_instrucaoTest(0) <= \instrucaoTest[0]~output_o\;

ww_instrucaoTest(1) <= \instrucaoTest[1]~output_o\;

ww_instrucaoTest(2) <= \instrucaoTest[2]~output_o\;

ww_instrucaoTest(3) <= \instrucaoTest[3]~output_o\;

ww_instrucaoTest(4) <= \instrucaoTest[4]~output_o\;

ww_instrucaoTest(5) <= \instrucaoTest[5]~output_o\;

ww_instrucaoTest(6) <= \instrucaoTest[6]~output_o\;

ww_instrucaoTest(7) <= \instrucaoTest[7]~output_o\;

ww_instrucaoTest(8) <= \instrucaoTest[8]~output_o\;

ww_instrucaoTest(9) <= \instrucaoTest[9]~output_o\;

ww_instrucaoTest(10) <= \instrucaoTest[10]~output_o\;

ww_instrucaoTest(11) <= \instrucaoTest[11]~output_o\;

ww_instrucaoTest(12) <= \instrucaoTest[12]~output_o\;

ww_instrucaoTest(13) <= \instrucaoTest[13]~output_o\;

ww_instrucaoTest(14) <= \instrucaoTest[14]~output_o\;

ww_instrucaoTest(15) <= \instrucaoTest[15]~output_o\;

ww_instrucaoTest(16) <= \instrucaoTest[16]~output_o\;

ww_instrucaoTest(17) <= \instrucaoTest[17]~output_o\;

ww_instrucaoTest(18) <= \instrucaoTest[18]~output_o\;

ww_instrucaoTest(19) <= \instrucaoTest[19]~output_o\;

ww_instrucaoTest(20) <= \instrucaoTest[20]~output_o\;

ww_instrucaoTest(21) <= \instrucaoTest[21]~output_o\;

ww_instrucaoTest(22) <= \instrucaoTest[22]~output_o\;

ww_instrucaoTest(23) <= \instrucaoTest[23]~output_o\;

ww_instrucaoTest(24) <= \instrucaoTest[24]~output_o\;

ww_instrucaoTest(25) <= \instrucaoTest[25]~output_o\;

ww_instrucaoTest(26) <= \instrucaoTest[26]~output_o\;

ww_instrucaoTest(27) <= \instrucaoTest[27]~output_o\;

ww_instrucaoTest(28) <= \instrucaoTest[28]~output_o\;

ww_instrucaoTest(29) <= \instrucaoTest[29]~output_o\;

ww_instrucaoTest(30) <= \instrucaoTest[30]~output_o\;

ww_instrucaoTest(31) <= \instrucaoTest[31]~output_o\;

ww_entraAULATest(0) <= \entraAULATest[0]~output_o\;

ww_entraAULATest(1) <= \entraAULATest[1]~output_o\;

ww_entraAULATest(2) <= \entraAULATest[2]~output_o\;

ww_entraAULATest(3) <= \entraAULATest[3]~output_o\;

ww_entraAULATest(4) <= \entraAULATest[4]~output_o\;

ww_entraAULATest(5) <= \entraAULATest[5]~output_o\;

ww_entraAULATest(6) <= \entraAULATest[6]~output_o\;

ww_entraAULATest(7) <= \entraAULATest[7]~output_o\;

ww_entraAULATest(8) <= \entraAULATest[8]~output_o\;

ww_entraAULATest(9) <= \entraAULATest[9]~output_o\;

ww_entraAULATest(10) <= \entraAULATest[10]~output_o\;

ww_entraAULATest(11) <= \entraAULATest[11]~output_o\;

ww_entraAULATest(12) <= \entraAULATest[12]~output_o\;

ww_entraAULATest(13) <= \entraAULATest[13]~output_o\;

ww_entraAULATest(14) <= \entraAULATest[14]~output_o\;

ww_entraAULATest(15) <= \entraAULATest[15]~output_o\;

ww_entraAULATest(16) <= \entraAULATest[16]~output_o\;

ww_entraAULATest(17) <= \entraAULATest[17]~output_o\;

ww_entraAULATest(18) <= \entraAULATest[18]~output_o\;

ww_entraAULATest(19) <= \entraAULATest[19]~output_o\;

ww_entraAULATest(20) <= \entraAULATest[20]~output_o\;

ww_entraAULATest(21) <= \entraAULATest[21]~output_o\;

ww_entraAULATest(22) <= \entraAULATest[22]~output_o\;

ww_entraAULATest(23) <= \entraAULATest[23]~output_o\;

ww_entraAULATest(24) <= \entraAULATest[24]~output_o\;

ww_entraAULATest(25) <= \entraAULATest[25]~output_o\;

ww_entraAULATest(26) <= \entraAULATest[26]~output_o\;

ww_entraAULATest(27) <= \entraAULATest[27]~output_o\;

ww_entraAULATest(28) <= \entraAULATest[28]~output_o\;

ww_entraAULATest(29) <= \entraAULATest[29]~output_o\;

ww_entraAULATest(30) <= \entraAULATest[30]~output_o\;

ww_entraAULATest(31) <= \entraAULATest[31]~output_o\;

ww_entraBULATest(0) <= \entraBULATest[0]~output_o\;

ww_entraBULATest(1) <= \entraBULATest[1]~output_o\;

ww_entraBULATest(2) <= \entraBULATest[2]~output_o\;

ww_entraBULATest(3) <= \entraBULATest[3]~output_o\;

ww_entraBULATest(4) <= \entraBULATest[4]~output_o\;

ww_entraBULATest(5) <= \entraBULATest[5]~output_o\;

ww_entraBULATest(6) <= \entraBULATest[6]~output_o\;

ww_entraBULATest(7) <= \entraBULATest[7]~output_o\;

ww_entraBULATest(8) <= \entraBULATest[8]~output_o\;

ww_entraBULATest(9) <= \entraBULATest[9]~output_o\;

ww_entraBULATest(10) <= \entraBULATest[10]~output_o\;

ww_entraBULATest(11) <= \entraBULATest[11]~output_o\;

ww_entraBULATest(12) <= \entraBULATest[12]~output_o\;

ww_entraBULATest(13) <= \entraBULATest[13]~output_o\;

ww_entraBULATest(14) <= \entraBULATest[14]~output_o\;

ww_entraBULATest(15) <= \entraBULATest[15]~output_o\;

ww_entraBULATest(16) <= \entraBULATest[16]~output_o\;

ww_entraBULATest(17) <= \entraBULATest[17]~output_o\;

ww_entraBULATest(18) <= \entraBULATest[18]~output_o\;

ww_entraBULATest(19) <= \entraBULATest[19]~output_o\;

ww_entraBULATest(20) <= \entraBULATest[20]~output_o\;

ww_entraBULATest(21) <= \entraBULATest[21]~output_o\;

ww_entraBULATest(22) <= \entraBULATest[22]~output_o\;

ww_entraBULATest(23) <= \entraBULATest[23]~output_o\;

ww_entraBULATest(24) <= \entraBULATest[24]~output_o\;

ww_entraBULATest(25) <= \entraBULATest[25]~output_o\;

ww_entraBULATest(26) <= \entraBULATest[26]~output_o\;

ww_entraBULATest(27) <= \entraBULATest[27]~output_o\;

ww_entraBULATest(28) <= \entraBULATest[28]~output_o\;

ww_entraBULATest(29) <= \entraBULATest[29]~output_o\;

ww_entraBULATest(30) <= \entraBULATest[30]~output_o\;

ww_entraBULATest(31) <= \entraBULATest[31]~output_o\;
END structure;


