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

-- DATE "11/16/2017 15:55:58"

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
	CLK : IN std_logic;
	enderecoReg1Test : BUFFER std_logic_vector(4 DOWNTO 0);
	enderecoReg2Test : BUFFER std_logic_vector(4 DOWNTO 0);
	instrucaoTest : BUFFER std_logic_vector(31 DOWNTO 0);
	entraAULATest : BUFFER std_logic_vector(31 DOWNTO 0);
	entraBULATest : BUFFER std_logic_vector(31 DOWNTO 0);
	enderecoASerEscritoTest : BUFFER std_logic_vector(31 DOWNTO 0);
	dadoASerEscritoTest : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END MIPS;

-- Design Ports Information
-- enderecoReg1Test[0]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg1Test[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg1Test[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg1Test[3]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg1Test[4]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg2Test[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg2Test[1]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg2Test[2]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg2Test[3]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoReg2Test[4]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[3]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[4]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[5]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[7]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[8]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[9]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[10]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[11]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[12]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[13]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[14]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[15]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[16]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[17]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[18]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[19]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[20]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[21]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[22]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[23]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[24]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[25]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[26]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[27]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[28]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[29]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[30]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoTest[31]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[4]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[5]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[8]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[9]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[10]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[11]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[12]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[13]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[14]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[15]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[16]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[17]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[18]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[19]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[20]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[21]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[22]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[23]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[24]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[25]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[26]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[27]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[28]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[29]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[30]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraAULATest[31]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[0]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[1]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[2]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[3]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[5]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[7]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[8]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[9]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[10]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[11]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[12]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[13]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[14]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[15]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[16]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[17]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[18]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[19]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[20]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[21]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[22]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[23]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[24]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[25]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[26]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[27]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[28]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[29]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[30]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entraBULATest[31]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[0]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[1]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[3]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[4]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[5]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[7]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[8]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[9]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[10]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[11]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[12]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[13]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[14]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[15]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[16]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[17]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[18]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[19]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[20]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[21]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[22]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[23]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[24]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[25]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[26]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[27]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[28]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[29]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[30]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoASerEscritoTest[31]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[0]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[1]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[5]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[7]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[8]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[9]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[10]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[11]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[12]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[13]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[14]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[15]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[16]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[17]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[18]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[19]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[20]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[21]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[22]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[23]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[24]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[25]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[26]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[27]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[28]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[29]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[30]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dadoASerEscritoTest[31]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_CLK : std_logic;
SIGNAL ww_enderecoReg1Test : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_enderecoReg2Test : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_instrucaoTest : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entraAULATest : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entraBULATest : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_enderecoASerEscritoTest : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dadoASerEscritoTest : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \enderecoASerEscritoTest[0]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[1]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[2]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[3]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[4]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[5]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[6]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[7]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[8]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[9]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[10]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[11]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[12]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[13]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[14]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[15]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[16]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[17]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[18]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[19]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[20]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[21]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[22]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[23]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[24]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[25]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[26]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[27]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[28]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[29]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[30]~output_o\ : std_logic;
SIGNAL \enderecoASerEscritoTest[31]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[0]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[1]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[2]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[3]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[4]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[5]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[6]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[7]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[8]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[9]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[10]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[11]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[12]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[13]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[14]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[15]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[16]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[17]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[18]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[19]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[20]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[21]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[22]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[23]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[24]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[25]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[26]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[27]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[28]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[29]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[30]~output_o\ : std_logic;
SIGNAL \dadoASerEscritoTest[31]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \FD|add4toPC|Add0~0_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[2]~4_combout\ : std_logic;
SIGNAL \UC|Equal2~0_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[0]~0_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|ALU|somaSub[0]~1\ : std_logic;
SIGNAL \FD|ALU|somaSub[1]~3\ : std_logic;
SIGNAL \FD|ALU|somaSub[2]~5\ : std_logic;
SIGNAL \FD|ALU|somaSub[3]~7\ : std_logic;
SIGNAL \FD|ALU|somaSub[4]~9\ : std_logic;
SIGNAL \FD|ALU|somaSub[5]~11\ : std_logic;
SIGNAL \FD|ALU|somaSub[6]~13\ : std_logic;
SIGNAL \FD|ALU|somaSub[7]~15\ : std_logic;
SIGNAL \FD|ALU|somaSub[8]~17\ : std_logic;
SIGNAL \FD|ALU|somaSub[9]~19\ : std_logic;
SIGNAL \FD|ALU|somaSub[10]~21\ : std_logic;
SIGNAL \FD|ALU|somaSub[11]~23\ : std_logic;
SIGNAL \FD|ALU|somaSub[12]~25\ : std_logic;
SIGNAL \FD|ALU|somaSub[13]~27\ : std_logic;
SIGNAL \FD|ALU|somaSub[14]~29\ : std_logic;
SIGNAL \FD|ALU|somaSub[15]~31\ : std_logic;
SIGNAL \FD|ALU|somaSub[16]~33\ : std_logic;
SIGNAL \FD|ALU|somaSub[17]~35\ : std_logic;
SIGNAL \FD|ALU|somaSub[18]~37\ : std_logic;
SIGNAL \FD|ALU|somaSub[19]~39\ : std_logic;
SIGNAL \FD|ALU|somaSub[20]~41\ : std_logic;
SIGNAL \FD|ALU|somaSub[21]~43\ : std_logic;
SIGNAL \FD|ALU|somaSub[22]~45\ : std_logic;
SIGNAL \FD|ALU|somaSub[23]~47\ : std_logic;
SIGNAL \FD|ALU|somaSub[24]~49\ : std_logic;
SIGNAL \FD|ALU|somaSub[25]~51\ : std_logic;
SIGNAL \FD|ALU|somaSub[26]~53\ : std_logic;
SIGNAL \FD|ALU|somaSub[27]~55\ : std_logic;
SIGNAL \FD|ALU|somaSub[28]~57\ : std_logic;
SIGNAL \FD|ALU|somaSub[29]~59\ : std_logic;
SIGNAL \FD|ALU|somaSub[30]~61\ : std_logic;
SIGNAL \FD|ALU|somaSub[31]~62_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[31]~31_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|ALU|somaSub[30]~60_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[30]~30_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|ALU|somaSub[29]~58_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[29]~29_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|ALU|somaSub[28]~56_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[28]~28_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|ALU|somaSub[27]~54_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[27]~27_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|ALU|somaSub[26]~52_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[26]~26_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|ALU|somaSub[25]~50_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[25]~25_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|ALU|somaSub[24]~48_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[24]~24_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|ALU|somaSub[23]~46_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[23]~23_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|ALU|somaSub[22]~44_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[22]~22_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|ALU|somaSub[21]~42_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[21]~21_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|ALU|somaSub[20]~40_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[20]~20_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|ALU|somaSub[19]~38_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[19]~19_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|ALU|somaSub[18]~36_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[18]~18_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|ALU|somaSub[17]~34_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[17]~17_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|ALU|somaSub[16]~32_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[16]~16_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|ALU|somaSub[15]~30_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[15]~15_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|ALU|somaSub[14]~28_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[14]~14_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|ALU|somaSub[13]~26_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[13]~13_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|ALU|somaSub[12]~24_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[12]~12_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|ALU|somaSub[11]~22_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[11]~11_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|ALU|somaSub[10]~20_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[10]~10_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|ALU|somaSub[9]~18_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[9]~9_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|ALU|somaSub[8]~16_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[8]~8_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|ALU|somaSub[7]~14_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[7]~7_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|ALU|somaSub[6]~12_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[6]~6_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|ALU|somaSub[5]~10_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[5]~5_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|ALU|somaSub[4]~8_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[4]~4_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|ALU|somaSub[3]~6_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[3]~3_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|ALU|somaSub[2]~4_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[2]~2_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|ALU|somaSub[1]~2_combout\ : std_logic;
SIGNAL \FD|muxDepoisULA|X[1]~1_combout\ : std_logic;
SIGNAL \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|ALU|somaSub[0]~0_combout\ : std_logic;
SIGNAL \FD|AndBEQ~0_combout\ : std_logic;
SIGNAL \FD|AndBEQ~1_combout\ : std_logic;
SIGNAL \FD|AndBEQ~2_combout\ : std_logic;
SIGNAL \FD|AndBEQ~3_combout\ : std_logic;
SIGNAL \FD|AndBEQ~4_combout\ : std_logic;
SIGNAL \FD|AndBEQ~5_combout\ : std_logic;
SIGNAL \FD|AndBEQ~6_combout\ : std_logic;
SIGNAL \FD|AndBEQ~7_combout\ : std_logic;
SIGNAL \FD|AndBEQ~8_combout\ : std_logic;
SIGNAL \FD|AndBEQ~9_combout\ : std_logic;
SIGNAL \FD|AndBEQ~10_combout\ : std_logic;
SIGNAL \FD|AndBEQ~11_combout\ : std_logic;
SIGNAL \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ : std_logic;
SIGNAL \FD|add4toPC|Add0~1\ : std_logic;
SIGNAL \FD|add4toPC|Add0~2_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[2]~5\ : std_logic;
SIGNAL \FD|PC|DOUT[3]~6_combout\ : std_logic;
SIGNAL \FD|add4toPC|Add0~3\ : std_logic;
SIGNAL \FD|add4toPC|Add0~4_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[3]~7\ : std_logic;
SIGNAL \FD|PC|DOUT[4]~8_combout\ : std_logic;
SIGNAL \FD|add4toPC|Add0~5\ : std_logic;
SIGNAL \FD|add4toPC|Add0~6_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[4]~9\ : std_logic;
SIGNAL \FD|PC|DOUT[5]~10_combout\ : std_logic;
SIGNAL \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ : std_logic;
SIGNAL \FD|PC|DOUT\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
enderecoReg1Test <= ww_enderecoReg1Test;
enderecoReg2Test <= ww_enderecoReg2Test;
instrucaoTest <= ww_instrucaoTest;
entraAULATest <= ww_entraAULATest;
entraBULATest <= ww_entraBULATest;
enderecoASerEscritoTest <= ww_enderecoASerEscritoTest;
dadoASerEscritoTest <= ww_dadoASerEscritoTest;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|muxDepoisULA|X[31]~31_combout\ & \FD|muxDepoisULA|X[30]~30_combout\ & \FD|muxDepoisULA|X[29]~29_combout\ & \FD|muxDepoisULA|X[28]~28_combout\ & 
\FD|muxDepoisULA|X[27]~27_combout\ & \FD|muxDepoisULA|X[26]~26_combout\ & \FD|muxDepoisULA|X[25]~25_combout\ & \FD|muxDepoisULA|X[24]~24_combout\ & \FD|muxDepoisULA|X[23]~23_combout\ & \FD|muxDepoisULA|X[22]~22_combout\ & 
\FD|muxDepoisULA|X[21]~21_combout\ & \FD|muxDepoisULA|X[20]~20_combout\ & \FD|muxDepoisULA|X[19]~19_combout\ & \FD|muxDepoisULA|X[18]~18_combout\ & \FD|muxDepoisULA|X[17]~17_combout\ & \FD|muxDepoisULA|X[16]~16_combout\ & 
\FD|muxDepoisULA|X[15]~15_combout\ & \FD|muxDepoisULA|X[14]~14_combout\ & \FD|muxDepoisULA|X[13]~13_combout\ & \FD|muxDepoisULA|X[12]~12_combout\ & \FD|muxDepoisULA|X[11]~11_combout\ & \FD|muxDepoisULA|X[10]~10_combout\ & \FD|muxDepoisULA|X[9]~9_combout\
& \FD|muxDepoisULA|X[8]~8_combout\ & \FD|muxDepoisULA|X[7]~7_combout\ & \FD|muxDepoisULA|X[6]~6_combout\ & \FD|muxDepoisULA|X[5]~5_combout\ & \FD|muxDepoisULA|X[4]~4_combout\ & \FD|muxDepoisULA|X[3]~3_combout\ & \FD|muxDepoisULA|X[2]~2_combout\ & 
\FD|muxDepoisULA|X[1]~1_combout\ & \FD|muxDepoisULA|X[0]~0_combout\);

\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & 
\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\);

\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & 
\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\);

\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a1\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a2\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a3\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a4\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a5\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a6\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a7\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a8\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a9\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a10\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a11\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a12\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a13\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a14\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a15\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a16\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a17\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a18\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a19\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a20\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a21\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a22\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a23\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a24\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a25\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a26\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a27\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a28\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a29\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a30\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a31\ <= \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|muxDepoisULA|X[31]~31_combout\ & \FD|muxDepoisULA|X[30]~30_combout\ & \FD|muxDepoisULA|X[29]~29_combout\ & \FD|muxDepoisULA|X[28]~28_combout\ & 
\FD|muxDepoisULA|X[27]~27_combout\ & \FD|muxDepoisULA|X[26]~26_combout\ & \FD|muxDepoisULA|X[25]~25_combout\ & \FD|muxDepoisULA|X[24]~24_combout\ & \FD|muxDepoisULA|X[23]~23_combout\ & \FD|muxDepoisULA|X[22]~22_combout\ & 
\FD|muxDepoisULA|X[21]~21_combout\ & \FD|muxDepoisULA|X[20]~20_combout\ & \FD|muxDepoisULA|X[19]~19_combout\ & \FD|muxDepoisULA|X[18]~18_combout\ & \FD|muxDepoisULA|X[17]~17_combout\ & \FD|muxDepoisULA|X[16]~16_combout\ & 
\FD|muxDepoisULA|X[15]~15_combout\ & \FD|muxDepoisULA|X[14]~14_combout\ & \FD|muxDepoisULA|X[13]~13_combout\ & \FD|muxDepoisULA|X[12]~12_combout\ & \FD|muxDepoisULA|X[11]~11_combout\ & \FD|muxDepoisULA|X[10]~10_combout\ & \FD|muxDepoisULA|X[9]~9_combout\
& \FD|muxDepoisULA|X[8]~8_combout\ & \FD|muxDepoisULA|X[7]~7_combout\ & \FD|muxDepoisULA|X[6]~6_combout\ & \FD|muxDepoisULA|X[5]~5_combout\ & \FD|muxDepoisULA|X[4]~4_combout\ & \FD|muxDepoisULA|X[3]~3_combout\ & \FD|muxDepoisULA|X[2]~2_combout\ & 
\FD|muxDepoisULA|X[1]~1_combout\ & \FD|muxDepoisULA|X[0]~0_combout\);

\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & 
\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\);

\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & 
\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\);

\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a1\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a2\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a3\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a4\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a5\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a6\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a7\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a8\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a9\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a10\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a11\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a12\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a13\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a14\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a15\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a16\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a17\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a18\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a19\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a20\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a21\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a22\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a23\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a24\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a25\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a26\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a27\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a28\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a29\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a30\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a31\ <= \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y65_N23
\enderecoReg1Test[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	devoe => ww_devoe,
	o => \enderecoReg1Test[0]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\enderecoReg1Test[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \enderecoReg1Test[1]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\enderecoReg1Test[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \enderecoReg1Test[2]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\enderecoReg1Test[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	devoe => ww_devoe,
	o => \enderecoReg1Test[3]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\enderecoReg1Test[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \enderecoReg1Test[4]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\enderecoReg2Test[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \enderecoReg2Test[0]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\enderecoReg2Test[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \enderecoReg2Test[1]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\enderecoReg2Test[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \enderecoReg2Test[2]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\enderecoReg2Test[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	devoe => ww_devoe,
	o => \enderecoReg2Test[3]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\enderecoReg2Test[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \enderecoReg2Test[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\instrucaoTest[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[0]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\instrucaoTest[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[1]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\instrucaoTest[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[2]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\instrucaoTest[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[3]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\instrucaoTest[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[4]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\instrucaoTest[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\instrucaoTest[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[6]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\instrucaoTest[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[7]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\instrucaoTest[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[8]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\instrucaoTest[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[9]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\instrucaoTest[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[10]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\instrucaoTest[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[11]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\instrucaoTest[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[12]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\instrucaoTest[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[13]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\instrucaoTest[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[14]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\instrucaoTest[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[15]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\instrucaoTest[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[16]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\instrucaoTest[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[17]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\instrucaoTest[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[18]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\instrucaoTest[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[19]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\instrucaoTest[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[20]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\instrucaoTest[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[21]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\instrucaoTest[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[22]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\instrucaoTest[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[23]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\instrucaoTest[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[24]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\instrucaoTest[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[25]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\instrucaoTest[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[26]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\instrucaoTest[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[27]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\instrucaoTest[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[28]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\instrucaoTest[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[29]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\instrucaoTest[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[30]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\instrucaoTest[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	devoe => ww_devoe,
	o => \instrucaoTest[31]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\entraAULATest[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \entraAULATest[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\entraAULATest[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \entraAULATest[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\entraAULATest[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \entraAULATest[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\entraAULATest[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \entraAULATest[3]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\entraAULATest[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \entraAULATest[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\entraAULATest[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \entraAULATest[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\entraAULATest[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \entraAULATest[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\entraAULATest[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \entraAULATest[7]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\entraAULATest[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \entraAULATest[8]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\entraAULATest[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \entraAULATest[9]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\entraAULATest[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \entraAULATest[10]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\entraAULATest[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \entraAULATest[11]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\entraAULATest[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \entraAULATest[12]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\entraAULATest[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \entraAULATest[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\entraAULATest[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \entraAULATest[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\entraAULATest[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \entraAULATest[15]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\entraAULATest[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \entraAULATest[16]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\entraAULATest[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \entraAULATest[17]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\entraAULATest[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a18\,
	devoe => ww_devoe,
	o => \entraAULATest[18]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\entraAULATest[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \entraAULATest[19]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\entraAULATest[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \entraAULATest[20]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\entraAULATest[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \entraAULATest[21]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\entraAULATest[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \entraAULATest[22]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\entraAULATest[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \entraAULATest[23]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\entraAULATest[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \entraAULATest[24]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\entraAULATest[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \entraAULATest[25]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\entraAULATest[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \entraAULATest[26]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\entraAULATest[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => \entraAULATest[27]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\entraAULATest[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \entraAULATest[28]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\entraAULATest[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => \entraAULATest[29]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\entraAULATest[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => \entraAULATest[30]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\entraAULATest[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => \entraAULATest[31]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\entraBULATest[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \entraBULATest[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\entraBULATest[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \entraBULATest[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\entraBULATest[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \entraBULATest[2]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\entraBULATest[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \entraBULATest[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\entraBULATest[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \entraBULATest[4]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\entraBULATest[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \entraBULATest[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\entraBULATest[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \entraBULATest[6]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\entraBULATest[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \entraBULATest[7]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\entraBULATest[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \entraBULATest[8]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\entraBULATest[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \entraBULATest[9]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\entraBULATest[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \entraBULATest[10]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\entraBULATest[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \entraBULATest[11]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\entraBULATest[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \entraBULATest[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\entraBULATest[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \entraBULATest[13]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\entraBULATest[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \entraBULATest[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\entraBULATest[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \entraBULATest[15]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\entraBULATest[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \entraBULATest[16]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\entraBULATest[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \entraBULATest[17]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\entraBULATest[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a18\,
	devoe => ww_devoe,
	o => \entraBULATest[18]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\entraBULATest[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \entraBULATest[19]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\entraBULATest[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \entraBULATest[20]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\entraBULATest[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \entraBULATest[21]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\entraBULATest[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \entraBULATest[22]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\entraBULATest[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \entraBULATest[23]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\entraBULATest[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \entraBULATest[24]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\entraBULATest[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \entraBULATest[25]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\entraBULATest[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \entraBULATest[26]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\entraBULATest[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => \entraBULATest[27]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\entraBULATest[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \entraBULATest[28]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\entraBULATest[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => \entraBULATest[29]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\entraBULATest[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => \entraBULATest[30]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\entraBULATest[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => \entraBULATest[31]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\enderecoASerEscritoTest[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[0]~0_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[0]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\enderecoASerEscritoTest[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[1]~2_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\enderecoASerEscritoTest[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[2]~4_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[2]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\enderecoASerEscritoTest[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[3]~6_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[3]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\enderecoASerEscritoTest[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[4]~8_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\enderecoASerEscritoTest[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[5]~10_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\enderecoASerEscritoTest[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[6]~12_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[6]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\enderecoASerEscritoTest[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[7]~14_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[7]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\enderecoASerEscritoTest[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[8]~16_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[8]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\enderecoASerEscritoTest[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[9]~18_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[9]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\enderecoASerEscritoTest[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[10]~20_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[10]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\enderecoASerEscritoTest[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[11]~22_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[11]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\enderecoASerEscritoTest[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[12]~24_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[12]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\enderecoASerEscritoTest[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[13]~26_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[13]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\enderecoASerEscritoTest[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[14]~28_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[14]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\enderecoASerEscritoTest[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[15]~30_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[15]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\enderecoASerEscritoTest[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[16]~32_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[16]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\enderecoASerEscritoTest[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[17]~34_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[17]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\enderecoASerEscritoTest[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[18]~36_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[18]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\enderecoASerEscritoTest[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[19]~38_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[19]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\enderecoASerEscritoTest[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[20]~40_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[20]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\enderecoASerEscritoTest[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[21]~42_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[21]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\enderecoASerEscritoTest[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[22]~44_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[22]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\enderecoASerEscritoTest[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[23]~46_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[23]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\enderecoASerEscritoTest[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[24]~48_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[24]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\enderecoASerEscritoTest[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[25]~50_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[25]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\enderecoASerEscritoTest[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[26]~52_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[26]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\enderecoASerEscritoTest[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[27]~54_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[27]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\enderecoASerEscritoTest[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[28]~56_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[28]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\enderecoASerEscritoTest[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[29]~58_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[29]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\enderecoASerEscritoTest[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[30]~60_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[30]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\enderecoASerEscritoTest[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|somaSub[31]~62_combout\,
	devoe => ww_devoe,
	o => \enderecoASerEscritoTest[31]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\dadoASerEscritoTest[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\dadoASerEscritoTest[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[1]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\dadoASerEscritoTest[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[2]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\dadoASerEscritoTest[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\dadoASerEscritoTest[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[4]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\dadoASerEscritoTest[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\dadoASerEscritoTest[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[6]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\dadoASerEscritoTest[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[7]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\dadoASerEscritoTest[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[8]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\dadoASerEscritoTest[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[9]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\dadoASerEscritoTest[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[10]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\dadoASerEscritoTest[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[11]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\dadoASerEscritoTest[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\dadoASerEscritoTest[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[13]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\dadoASerEscritoTest[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\dadoASerEscritoTest[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[15]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\dadoASerEscritoTest[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[16]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\dadoASerEscritoTest[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[17]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\dadoASerEscritoTest[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a18\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[18]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\dadoASerEscritoTest[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[19]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\dadoASerEscritoTest[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[20]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\dadoASerEscritoTest[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[21]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\dadoASerEscritoTest[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[22]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\dadoASerEscritoTest[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[23]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\dadoASerEscritoTest[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[24]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\dadoASerEscritoTest[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[25]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\dadoASerEscritoTest[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[26]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\dadoASerEscritoTest[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[27]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\dadoASerEscritoTest[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[28]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\dadoASerEscritoTest[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[29]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\dadoASerEscritoTest[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[30]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\dadoASerEscritoTest[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => \dadoASerEscritoTest[31]~output_o\);

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

-- Location: LCCOMB_X67_Y3_N12
\FD|add4toPC|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|add4toPC|Add0~0_combout\ = \FD|PC|DOUT\(2) $ (VCC)
-- \FD|add4toPC|Add0~1\ = CARRY(\FD|PC|DOUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datad => VCC,
	combout => \FD|add4toPC|Add0~0_combout\,
	cout => \FD|add4toPC|Add0~1\);

-- Location: LCCOMB_X66_Y3_N6
\FD|PC|DOUT[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[2]~4_combout\ = (\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & (\FD|add4toPC|Add0~0_combout\ $ (VCC))) # (!\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & (\FD|add4toPC|Add0~0_combout\ & VCC))
-- \FD|PC|DOUT[2]~5\ = CARRY((\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & \FD|add4toPC|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	datab => \FD|add4toPC|Add0~0_combout\,
	datad => VCC,
	combout => \FD|PC|DOUT[2]~4_combout\,
	cout => \FD|PC|DOUT[2]~5\);

-- Location: LCCOMB_X67_Y3_N22
\UC|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal2~0_combout\ = (!\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(3) & (\FD|PC|DOUT\(2) & !\FD|PC|DOUT\(4))))

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
	combout => \UC|Equal2~0_combout\);

-- Location: LCCOMB_X66_Y4_N26
\FD|muxDepoisULA|X[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[0]~0_combout\ = (\FD|ALU|somaSub[0]~0_combout\ & ((!\FD|PC|DOUT\(2)) # (!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|ALU|somaSub[0]~0_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|muxDepoisULA|X[0]~0_combout\);

-- Location: M9K_X64_Y4_N0
\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000010000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/MIPS_QuartusPrimeProject.ram0_registerBank32_8f8435ff.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "FluxoDeDados:FD|registerBank32:Banco_Regis|altsyncram:registers_rtl_1|altsyncram_8vn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \UC|Equal2~0_combout\,
	portbre => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y3_N0
\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000010000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/MIPS_QuartusPrimeProject.ram0_registerBank32_8f8435ff.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "FluxoDeDados:FD|registerBank32:Banco_Regis|altsyncram:registers_rtl_0|altsyncram_8vn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \UC|Equal2~0_combout\,
	portbre => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y4_N0
\FD|ALU|somaSub[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[0]~0_combout\ = (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ $ (VCC))) # 
-- (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & VCC))
-- \FD|ALU|somaSub[0]~1\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datad => VCC,
	combout => \FD|ALU|somaSub[0]~0_combout\,
	cout => \FD|ALU|somaSub[0]~1\);

-- Location: LCCOMB_X65_Y4_N2
\FD|ALU|somaSub[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[1]~2_combout\ = (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a1\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a1\ & (\FD|ALU|somaSub[0]~1\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a1\ & (!\FD|ALU|somaSub[0]~1\)))) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a1\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a1\ & (!\FD|ALU|somaSub[0]~1\)) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a1\ & ((\FD|ALU|somaSub[0]~1\) # (GND)))))
-- \FD|ALU|somaSub[1]~3\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a1\ & (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a1\ & !\FD|ALU|somaSub[0]~1\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a1\ & 
-- ((!\FD|ALU|somaSub[0]~1\) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a1\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a1\,
	datad => VCC,
	cin => \FD|ALU|somaSub[0]~1\,
	combout => \FD|ALU|somaSub[1]~2_combout\,
	cout => \FD|ALU|somaSub[1]~3\);

-- Location: LCCOMB_X65_Y4_N4
\FD|ALU|somaSub[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[2]~4_combout\ = ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a2\ $ (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a2\ $ (!\FD|ALU|somaSub[1]~3\)))) # (GND)
-- \FD|ALU|somaSub[2]~5\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a2\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a2\) # (!\FD|ALU|somaSub[1]~3\))) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a2\ & 
-- (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a2\ & !\FD|ALU|somaSub[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a2\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a2\,
	datad => VCC,
	cin => \FD|ALU|somaSub[1]~3\,
	combout => \FD|ALU|somaSub[2]~4_combout\,
	cout => \FD|ALU|somaSub[2]~5\);

-- Location: LCCOMB_X65_Y4_N6
\FD|ALU|somaSub[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[3]~6_combout\ = (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a3\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a3\ & (\FD|ALU|somaSub[2]~5\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a3\ & (!\FD|ALU|somaSub[2]~5\)))) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a3\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a3\ & (!\FD|ALU|somaSub[2]~5\)) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a3\ & ((\FD|ALU|somaSub[2]~5\) # (GND)))))
-- \FD|ALU|somaSub[3]~7\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a3\ & (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a3\ & !\FD|ALU|somaSub[2]~5\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a3\ & 
-- ((!\FD|ALU|somaSub[2]~5\) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a3\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a3\,
	datad => VCC,
	cin => \FD|ALU|somaSub[2]~5\,
	combout => \FD|ALU|somaSub[3]~6_combout\,
	cout => \FD|ALU|somaSub[3]~7\);

-- Location: LCCOMB_X65_Y4_N8
\FD|ALU|somaSub[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[4]~8_combout\ = ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a4\ $ (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a4\ $ (!\FD|ALU|somaSub[3]~7\)))) # (GND)
-- \FD|ALU|somaSub[4]~9\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a4\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a4\) # (!\FD|ALU|somaSub[3]~7\))) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a4\ & 
-- (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a4\ & !\FD|ALU|somaSub[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a4\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a4\,
	datad => VCC,
	cin => \FD|ALU|somaSub[3]~7\,
	combout => \FD|ALU|somaSub[4]~8_combout\,
	cout => \FD|ALU|somaSub[4]~9\);

-- Location: LCCOMB_X65_Y4_N10
\FD|ALU|somaSub[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[5]~10_combout\ = (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a5\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a5\ & (\FD|ALU|somaSub[4]~9\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a5\ & (!\FD|ALU|somaSub[4]~9\)))) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a5\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a5\ & (!\FD|ALU|somaSub[4]~9\)) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a5\ & ((\FD|ALU|somaSub[4]~9\) # (GND)))))
-- \FD|ALU|somaSub[5]~11\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a5\ & (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a5\ & !\FD|ALU|somaSub[4]~9\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a5\ & 
-- ((!\FD|ALU|somaSub[4]~9\) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a5\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a5\,
	datad => VCC,
	cin => \FD|ALU|somaSub[4]~9\,
	combout => \FD|ALU|somaSub[5]~10_combout\,
	cout => \FD|ALU|somaSub[5]~11\);

-- Location: LCCOMB_X65_Y4_N12
\FD|ALU|somaSub[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[6]~12_combout\ = ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a6\ $ (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a6\ $ (!\FD|ALU|somaSub[5]~11\)))) # (GND)
-- \FD|ALU|somaSub[6]~13\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a6\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a6\) # (!\FD|ALU|somaSub[5]~11\))) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a6\ & 
-- (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a6\ & !\FD|ALU|somaSub[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a6\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a6\,
	datad => VCC,
	cin => \FD|ALU|somaSub[5]~11\,
	combout => \FD|ALU|somaSub[6]~12_combout\,
	cout => \FD|ALU|somaSub[6]~13\);

-- Location: LCCOMB_X65_Y4_N14
\FD|ALU|somaSub[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[7]~14_combout\ = (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a7\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a7\ & (\FD|ALU|somaSub[6]~13\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a7\ & (!\FD|ALU|somaSub[6]~13\)))) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a7\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a7\ & (!\FD|ALU|somaSub[6]~13\)) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a7\ & ((\FD|ALU|somaSub[6]~13\) # (GND)))))
-- \FD|ALU|somaSub[7]~15\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a7\ & (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a7\ & !\FD|ALU|somaSub[6]~13\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a7\ & 
-- ((!\FD|ALU|somaSub[6]~13\) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a7\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a7\,
	datad => VCC,
	cin => \FD|ALU|somaSub[6]~13\,
	combout => \FD|ALU|somaSub[7]~14_combout\,
	cout => \FD|ALU|somaSub[7]~15\);

-- Location: LCCOMB_X65_Y4_N16
\FD|ALU|somaSub[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[8]~16_combout\ = ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a8\ $ (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a8\ $ (!\FD|ALU|somaSub[7]~15\)))) # (GND)
-- \FD|ALU|somaSub[8]~17\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a8\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a8\) # (!\FD|ALU|somaSub[7]~15\))) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a8\ & 
-- (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a8\ & !\FD|ALU|somaSub[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a8\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a8\,
	datad => VCC,
	cin => \FD|ALU|somaSub[7]~15\,
	combout => \FD|ALU|somaSub[8]~16_combout\,
	cout => \FD|ALU|somaSub[8]~17\);

-- Location: LCCOMB_X65_Y4_N18
\FD|ALU|somaSub[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[9]~18_combout\ = (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a9\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a9\ & (\FD|ALU|somaSub[8]~17\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a9\ & (!\FD|ALU|somaSub[8]~17\)))) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a9\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a9\ & (!\FD|ALU|somaSub[8]~17\)) # 
-- (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a9\ & ((\FD|ALU|somaSub[8]~17\) # (GND)))))
-- \FD|ALU|somaSub[9]~19\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a9\ & (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a9\ & !\FD|ALU|somaSub[8]~17\)) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a9\ & 
-- ((!\FD|ALU|somaSub[8]~17\) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a9\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a9\,
	datad => VCC,
	cin => \FD|ALU|somaSub[8]~17\,
	combout => \FD|ALU|somaSub[9]~18_combout\,
	cout => \FD|ALU|somaSub[9]~19\);

-- Location: LCCOMB_X65_Y4_N20
\FD|ALU|somaSub[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[10]~20_combout\ = ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a10\ $ (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a10\ $ (!\FD|ALU|somaSub[9]~19\)))) # (GND)
-- \FD|ALU|somaSub[10]~21\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a10\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a10\) # (!\FD|ALU|somaSub[9]~19\))) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a10\ & (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a10\ & !\FD|ALU|somaSub[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a10\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a10\,
	datad => VCC,
	cin => \FD|ALU|somaSub[9]~19\,
	combout => \FD|ALU|somaSub[10]~20_combout\,
	cout => \FD|ALU|somaSub[10]~21\);

-- Location: LCCOMB_X65_Y4_N22
\FD|ALU|somaSub[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[11]~22_combout\ = (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a11\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a11\ & (\FD|ALU|somaSub[10]~21\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a11\ & (!\FD|ALU|somaSub[10]~21\)))) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a11\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a11\ & 
-- (!\FD|ALU|somaSub[10]~21\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a11\ & ((\FD|ALU|somaSub[10]~21\) # (GND)))))
-- \FD|ALU|somaSub[11]~23\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a11\ & (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a11\ & !\FD|ALU|somaSub[10]~21\)) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a11\ 
-- & ((!\FD|ALU|somaSub[10]~21\) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a11\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a11\,
	datad => VCC,
	cin => \FD|ALU|somaSub[10]~21\,
	combout => \FD|ALU|somaSub[11]~22_combout\,
	cout => \FD|ALU|somaSub[11]~23\);

-- Location: LCCOMB_X65_Y4_N24
\FD|ALU|somaSub[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[12]~24_combout\ = ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a12\ $ (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a12\ $ (!\FD|ALU|somaSub[11]~23\)))) # (GND)
-- \FD|ALU|somaSub[12]~25\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a12\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a12\) # (!\FD|ALU|somaSub[11]~23\))) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a12\ & (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a12\ & !\FD|ALU|somaSub[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a12\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a12\,
	datad => VCC,
	cin => \FD|ALU|somaSub[11]~23\,
	combout => \FD|ALU|somaSub[12]~24_combout\,
	cout => \FD|ALU|somaSub[12]~25\);

-- Location: LCCOMB_X65_Y4_N26
\FD|ALU|somaSub[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[13]~26_combout\ = (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a13\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a13\ & (\FD|ALU|somaSub[12]~25\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a13\ & (!\FD|ALU|somaSub[12]~25\)))) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a13\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a13\ & 
-- (!\FD|ALU|somaSub[12]~25\)) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a13\ & ((\FD|ALU|somaSub[12]~25\) # (GND)))))
-- \FD|ALU|somaSub[13]~27\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a13\ & (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a13\ & !\FD|ALU|somaSub[12]~25\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a13\ 
-- & ((!\FD|ALU|somaSub[12]~25\) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a13\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a13\,
	datad => VCC,
	cin => \FD|ALU|somaSub[12]~25\,
	combout => \FD|ALU|somaSub[13]~26_combout\,
	cout => \FD|ALU|somaSub[13]~27\);

-- Location: LCCOMB_X65_Y4_N28
\FD|ALU|somaSub[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[14]~28_combout\ = ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a14\ $ (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a14\ $ (!\FD|ALU|somaSub[13]~27\)))) # (GND)
-- \FD|ALU|somaSub[14]~29\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a14\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a14\) # (!\FD|ALU|somaSub[13]~27\))) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a14\ & (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a14\ & !\FD|ALU|somaSub[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a14\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a14\,
	datad => VCC,
	cin => \FD|ALU|somaSub[13]~27\,
	combout => \FD|ALU|somaSub[14]~28_combout\,
	cout => \FD|ALU|somaSub[14]~29\);

-- Location: LCCOMB_X65_Y4_N30
\FD|ALU|somaSub[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[15]~30_combout\ = (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a15\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a15\ & (\FD|ALU|somaSub[14]~29\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a15\ & (!\FD|ALU|somaSub[14]~29\)))) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a15\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a15\ & 
-- (!\FD|ALU|somaSub[14]~29\)) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a15\ & ((\FD|ALU|somaSub[14]~29\) # (GND)))))
-- \FD|ALU|somaSub[15]~31\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a15\ & (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a15\ & !\FD|ALU|somaSub[14]~29\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a15\ 
-- & ((!\FD|ALU|somaSub[14]~29\) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a15\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a15\,
	datad => VCC,
	cin => \FD|ALU|somaSub[14]~29\,
	combout => \FD|ALU|somaSub[15]~30_combout\,
	cout => \FD|ALU|somaSub[15]~31\);

-- Location: LCCOMB_X65_Y3_N0
\FD|ALU|somaSub[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[16]~32_combout\ = ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a16\ $ (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a16\ $ (!\FD|ALU|somaSub[15]~31\)))) # (GND)
-- \FD|ALU|somaSub[16]~33\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a16\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a16\) # (!\FD|ALU|somaSub[15]~31\))) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a16\ & (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a16\ & !\FD|ALU|somaSub[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a16\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a16\,
	datad => VCC,
	cin => \FD|ALU|somaSub[15]~31\,
	combout => \FD|ALU|somaSub[16]~32_combout\,
	cout => \FD|ALU|somaSub[16]~33\);

-- Location: LCCOMB_X65_Y3_N2
\FD|ALU|somaSub[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[17]~34_combout\ = (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a17\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a17\ & (\FD|ALU|somaSub[16]~33\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a17\ & (!\FD|ALU|somaSub[16]~33\)))) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a17\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a17\ & 
-- (!\FD|ALU|somaSub[16]~33\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a17\ & ((\FD|ALU|somaSub[16]~33\) # (GND)))))
-- \FD|ALU|somaSub[17]~35\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a17\ & (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a17\ & !\FD|ALU|somaSub[16]~33\)) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a17\ 
-- & ((!\FD|ALU|somaSub[16]~33\) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a17\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a17\,
	datad => VCC,
	cin => \FD|ALU|somaSub[16]~33\,
	combout => \FD|ALU|somaSub[17]~34_combout\,
	cout => \FD|ALU|somaSub[17]~35\);

-- Location: LCCOMB_X65_Y3_N4
\FD|ALU|somaSub[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[18]~36_combout\ = ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a18\ $ (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a18\ $ (!\FD|ALU|somaSub[17]~35\)))) # (GND)
-- \FD|ALU|somaSub[18]~37\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a18\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a18\) # (!\FD|ALU|somaSub[17]~35\))) # 
-- (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a18\ & (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a18\ & !\FD|ALU|somaSub[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a18\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a18\,
	datad => VCC,
	cin => \FD|ALU|somaSub[17]~35\,
	combout => \FD|ALU|somaSub[18]~36_combout\,
	cout => \FD|ALU|somaSub[18]~37\);

-- Location: LCCOMB_X65_Y3_N6
\FD|ALU|somaSub[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[19]~38_combout\ = (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a19\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a19\ & (\FD|ALU|somaSub[18]~37\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a19\ & (!\FD|ALU|somaSub[18]~37\)))) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a19\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a19\ & 
-- (!\FD|ALU|somaSub[18]~37\)) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a19\ & ((\FD|ALU|somaSub[18]~37\) # (GND)))))
-- \FD|ALU|somaSub[19]~39\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a19\ & (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a19\ & !\FD|ALU|somaSub[18]~37\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a19\ 
-- & ((!\FD|ALU|somaSub[18]~37\) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a19\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a19\,
	datad => VCC,
	cin => \FD|ALU|somaSub[18]~37\,
	combout => \FD|ALU|somaSub[19]~38_combout\,
	cout => \FD|ALU|somaSub[19]~39\);

-- Location: LCCOMB_X65_Y3_N8
\FD|ALU|somaSub[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[20]~40_combout\ = ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a20\ $ (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a20\ $ (!\FD|ALU|somaSub[19]~39\)))) # (GND)
-- \FD|ALU|somaSub[20]~41\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a20\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a20\) # (!\FD|ALU|somaSub[19]~39\))) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a20\ & (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a20\ & !\FD|ALU|somaSub[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a20\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a20\,
	datad => VCC,
	cin => \FD|ALU|somaSub[19]~39\,
	combout => \FD|ALU|somaSub[20]~40_combout\,
	cout => \FD|ALU|somaSub[20]~41\);

-- Location: LCCOMB_X65_Y3_N10
\FD|ALU|somaSub[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[21]~42_combout\ = (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a21\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a21\ & (\FD|ALU|somaSub[20]~41\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a21\ & (!\FD|ALU|somaSub[20]~41\)))) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a21\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a21\ & 
-- (!\FD|ALU|somaSub[20]~41\)) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a21\ & ((\FD|ALU|somaSub[20]~41\) # (GND)))))
-- \FD|ALU|somaSub[21]~43\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a21\ & (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a21\ & !\FD|ALU|somaSub[20]~41\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a21\ 
-- & ((!\FD|ALU|somaSub[20]~41\) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a21\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a21\,
	datad => VCC,
	cin => \FD|ALU|somaSub[20]~41\,
	combout => \FD|ALU|somaSub[21]~42_combout\,
	cout => \FD|ALU|somaSub[21]~43\);

-- Location: LCCOMB_X65_Y3_N12
\FD|ALU|somaSub[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[22]~44_combout\ = ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a22\ $ (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a22\ $ (!\FD|ALU|somaSub[21]~43\)))) # (GND)
-- \FD|ALU|somaSub[22]~45\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a22\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a22\) # (!\FD|ALU|somaSub[21]~43\))) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a22\ & (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a22\ & !\FD|ALU|somaSub[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a22\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a22\,
	datad => VCC,
	cin => \FD|ALU|somaSub[21]~43\,
	combout => \FD|ALU|somaSub[22]~44_combout\,
	cout => \FD|ALU|somaSub[22]~45\);

-- Location: LCCOMB_X65_Y3_N14
\FD|ALU|somaSub[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[23]~46_combout\ = (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a23\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a23\ & (\FD|ALU|somaSub[22]~45\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a23\ & (!\FD|ALU|somaSub[22]~45\)))) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a23\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a23\ & 
-- (!\FD|ALU|somaSub[22]~45\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a23\ & ((\FD|ALU|somaSub[22]~45\) # (GND)))))
-- \FD|ALU|somaSub[23]~47\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a23\ & (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a23\ & !\FD|ALU|somaSub[22]~45\)) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a23\ 
-- & ((!\FD|ALU|somaSub[22]~45\) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a23\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a23\,
	datad => VCC,
	cin => \FD|ALU|somaSub[22]~45\,
	combout => \FD|ALU|somaSub[23]~46_combout\,
	cout => \FD|ALU|somaSub[23]~47\);

-- Location: LCCOMB_X65_Y3_N16
\FD|ALU|somaSub[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[24]~48_combout\ = ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a24\ $ (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a24\ $ (!\FD|ALU|somaSub[23]~47\)))) # (GND)
-- \FD|ALU|somaSub[24]~49\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a24\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a24\) # (!\FD|ALU|somaSub[23]~47\))) # 
-- (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a24\ & (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a24\ & !\FD|ALU|somaSub[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a24\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a24\,
	datad => VCC,
	cin => \FD|ALU|somaSub[23]~47\,
	combout => \FD|ALU|somaSub[24]~48_combout\,
	cout => \FD|ALU|somaSub[24]~49\);

-- Location: LCCOMB_X65_Y3_N18
\FD|ALU|somaSub[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[25]~50_combout\ = (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a25\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a25\ & (\FD|ALU|somaSub[24]~49\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a25\ & (!\FD|ALU|somaSub[24]~49\)))) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a25\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a25\ & 
-- (!\FD|ALU|somaSub[24]~49\)) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a25\ & ((\FD|ALU|somaSub[24]~49\) # (GND)))))
-- \FD|ALU|somaSub[25]~51\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a25\ & (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a25\ & !\FD|ALU|somaSub[24]~49\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a25\ 
-- & ((!\FD|ALU|somaSub[24]~49\) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a25\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a25\,
	datad => VCC,
	cin => \FD|ALU|somaSub[24]~49\,
	combout => \FD|ALU|somaSub[25]~50_combout\,
	cout => \FD|ALU|somaSub[25]~51\);

-- Location: LCCOMB_X65_Y3_N20
\FD|ALU|somaSub[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[26]~52_combout\ = ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a26\ $ (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a26\ $ (!\FD|ALU|somaSub[25]~51\)))) # (GND)
-- \FD|ALU|somaSub[26]~53\ = CARRY((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a26\ & ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a26\) # (!\FD|ALU|somaSub[25]~51\))) # 
-- (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a26\ & (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a26\ & !\FD|ALU|somaSub[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a26\,
	datab => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a26\,
	datad => VCC,
	cin => \FD|ALU|somaSub[25]~51\,
	combout => \FD|ALU|somaSub[26]~52_combout\,
	cout => \FD|ALU|somaSub[26]~53\);

-- Location: LCCOMB_X65_Y3_N22
\FD|ALU|somaSub[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[27]~54_combout\ = (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a27\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a27\ & (\FD|ALU|somaSub[26]~53\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a27\ & (!\FD|ALU|somaSub[26]~53\)))) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a27\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a27\ & 
-- (!\FD|ALU|somaSub[26]~53\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a27\ & ((\FD|ALU|somaSub[26]~53\) # (GND)))))
-- \FD|ALU|somaSub[27]~55\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a27\ & (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a27\ & !\FD|ALU|somaSub[26]~53\)) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a27\ 
-- & ((!\FD|ALU|somaSub[26]~53\) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a27\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a27\,
	datad => VCC,
	cin => \FD|ALU|somaSub[26]~53\,
	combout => \FD|ALU|somaSub[27]~54_combout\,
	cout => \FD|ALU|somaSub[27]~55\);

-- Location: LCCOMB_X65_Y3_N24
\FD|ALU|somaSub[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[28]~56_combout\ = ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a28\ $ (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a28\ $ (!\FD|ALU|somaSub[27]~55\)))) # (GND)
-- \FD|ALU|somaSub[28]~57\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a28\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a28\) # (!\FD|ALU|somaSub[27]~55\))) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a28\ & (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a28\ & !\FD|ALU|somaSub[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a28\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a28\,
	datad => VCC,
	cin => \FD|ALU|somaSub[27]~55\,
	combout => \FD|ALU|somaSub[28]~56_combout\,
	cout => \FD|ALU|somaSub[28]~57\);

-- Location: LCCOMB_X65_Y3_N26
\FD|ALU|somaSub[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[29]~58_combout\ = (\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a29\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a29\ & (\FD|ALU|somaSub[28]~57\ & VCC)) # 
-- (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a29\ & (!\FD|ALU|somaSub[28]~57\)))) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a29\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a29\ & 
-- (!\FD|ALU|somaSub[28]~57\)) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a29\ & ((\FD|ALU|somaSub[28]~57\) # (GND)))))
-- \FD|ALU|somaSub[29]~59\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a29\ & (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a29\ & !\FD|ALU|somaSub[28]~57\)) # (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a29\ 
-- & ((!\FD|ALU|somaSub[28]~57\) # (!\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a29\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a29\,
	datad => VCC,
	cin => \FD|ALU|somaSub[28]~57\,
	combout => \FD|ALU|somaSub[29]~58_combout\,
	cout => \FD|ALU|somaSub[29]~59\);

-- Location: LCCOMB_X65_Y3_N28
\FD|ALU|somaSub[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[30]~60_combout\ = ((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a30\ $ (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a30\ $ (!\FD|ALU|somaSub[29]~59\)))) # (GND)
-- \FD|ALU|somaSub[30]~61\ = CARRY((\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a30\ & ((\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a30\) # (!\FD|ALU|somaSub[29]~59\))) # 
-- (!\FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a30\ & (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a30\ & !\FD|ALU|somaSub[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a30\,
	datab => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a30\,
	datad => VCC,
	cin => \FD|ALU|somaSub[29]~59\,
	combout => \FD|ALU|somaSub[30]~60_combout\,
	cout => \FD|ALU|somaSub[30]~61\);

-- Location: LCCOMB_X65_Y3_N30
\FD|ALU|somaSub[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|somaSub[31]~62_combout\ = \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a31\ $ (\FD|ALU|somaSub[30]~61\ $ (\FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Banco_Regis|registers_rtl_1|auto_generated|ram_block1a31\,
	datad => \FD|Banco_Regis|registers_rtl_0|auto_generated|ram_block1a31\,
	cin => \FD|ALU|somaSub[30]~61\,
	combout => \FD|ALU|somaSub[31]~62_combout\);

-- Location: LCCOMB_X63_Y3_N10
\FD|muxDepoisULA|X[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[31]~31_combout\ = (\FD|ALU|somaSub[31]~62_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|ALU|somaSub[31]~62_combout\,
	combout => \FD|muxDepoisULA|X[31]~31_combout\);

-- Location: LCCOMB_X63_Y3_N0
\FD|muxDepoisULA|X[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[30]~30_combout\ = (\FD|ALU|somaSub[30]~60_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|ALU|somaSub[30]~60_combout\,
	combout => \FD|muxDepoisULA|X[30]~30_combout\);

-- Location: LCCOMB_X63_Y3_N22
\FD|muxDepoisULA|X[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[29]~29_combout\ = (\FD|ALU|somaSub[29]~58_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|ALU|somaSub[29]~58_combout\,
	combout => \FD|muxDepoisULA|X[29]~29_combout\);

-- Location: LCCOMB_X63_Y3_N16
\FD|muxDepoisULA|X[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[28]~28_combout\ = (\FD|ALU|somaSub[28]~56_combout\ & ((!\FD|PC|DOUT\(2)) # (!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|ALU|somaSub[28]~56_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|muxDepoisULA|X[28]~28_combout\);

-- Location: LCCOMB_X63_Y3_N26
\FD|muxDepoisULA|X[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[27]~27_combout\ = (\FD|ALU|somaSub[27]~54_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|ALU|somaSub[27]~54_combout\,
	combout => \FD|muxDepoisULA|X[27]~27_combout\);

-- Location: LCCOMB_X63_Y3_N28
\FD|muxDepoisULA|X[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[26]~26_combout\ = (\FD|ALU|somaSub[26]~52_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|ALU|somaSub[26]~52_combout\,
	combout => \FD|muxDepoisULA|X[26]~26_combout\);

-- Location: LCCOMB_X63_Y3_N2
\FD|muxDepoisULA|X[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[25]~25_combout\ = (\FD|ALU|somaSub[25]~50_combout\ & ((!\FD|PC|DOUT\(2)) # (!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|ALU|somaSub[25]~50_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|muxDepoisULA|X[25]~25_combout\);

-- Location: LCCOMB_X63_Y3_N4
\FD|muxDepoisULA|X[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[24]~24_combout\ = (\FD|ALU|somaSub[24]~48_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|ALU|somaSub[24]~48_combout\,
	combout => \FD|muxDepoisULA|X[24]~24_combout\);

-- Location: LCCOMB_X63_Y3_N18
\FD|muxDepoisULA|X[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[23]~23_combout\ = (\FD|ALU|somaSub[23]~46_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|ALU|somaSub[23]~46_combout\,
	combout => \FD|muxDepoisULA|X[23]~23_combout\);

-- Location: LCCOMB_X63_Y3_N24
\FD|muxDepoisULA|X[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[22]~22_combout\ = (\FD|ALU|somaSub[22]~44_combout\ & ((!\FD|PC|DOUT\(2)) # (!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|ALU|somaSub[22]~44_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|muxDepoisULA|X[22]~22_combout\);

-- Location: LCCOMB_X63_Y3_N14
\FD|muxDepoisULA|X[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[21]~21_combout\ = (\FD|ALU|somaSub[21]~42_combout\ & ((!\FD|PC|DOUT\(2)) # (!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|ALU|somaSub[21]~42_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|muxDepoisULA|X[21]~21_combout\);

-- Location: LCCOMB_X63_Y3_N20
\FD|muxDepoisULA|X[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[20]~20_combout\ = (\FD|ALU|somaSub[20]~40_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|ALU|somaSub[20]~40_combout\,
	combout => \FD|muxDepoisULA|X[20]~20_combout\);

-- Location: LCCOMB_X63_Y3_N6
\FD|muxDepoisULA|X[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[19]~19_combout\ = (\FD|ALU|somaSub[19]~38_combout\ & ((!\FD|PC|DOUT\(2)) # (!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|ALU|somaSub[19]~38_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|muxDepoisULA|X[19]~19_combout\);

-- Location: LCCOMB_X63_Y3_N8
\FD|muxDepoisULA|X[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[18]~18_combout\ = (\FD|ALU|somaSub[18]~36_combout\ & ((!\FD|PC|DOUT\(2)) # (!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|ALU|somaSub[18]~36_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|muxDepoisULA|X[18]~18_combout\);

-- Location: LCCOMB_X63_Y3_N30
\FD|muxDepoisULA|X[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[17]~17_combout\ = (\FD|ALU|somaSub[17]~34_combout\ & ((!\FD|PC|DOUT\(2)) # (!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|ALU|somaSub[17]~34_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|muxDepoisULA|X[17]~17_combout\);

-- Location: LCCOMB_X63_Y3_N12
\FD|muxDepoisULA|X[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[16]~16_combout\ = (\FD|ALU|somaSub[16]~32_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|ALU|somaSub[16]~32_combout\,
	combout => \FD|muxDepoisULA|X[16]~16_combout\);

-- Location: LCCOMB_X63_Y4_N24
\FD|muxDepoisULA|X[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[15]~15_combout\ = (\FD|ALU|somaSub[15]~30_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datac => \FD|ALU|somaSub[15]~30_combout\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|muxDepoisULA|X[15]~15_combout\);

-- Location: LCCOMB_X63_Y4_N18
\FD|muxDepoisULA|X[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[14]~14_combout\ = (\FD|ALU|somaSub[14]~28_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|ALU|somaSub[14]~28_combout\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|muxDepoisULA|X[14]~14_combout\);

-- Location: LCCOMB_X63_Y4_N8
\FD|muxDepoisULA|X[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[13]~13_combout\ = (\FD|ALU|somaSub[13]~26_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datac => \FD|ALU|somaSub[13]~26_combout\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|muxDepoisULA|X[13]~13_combout\);

-- Location: LCCOMB_X63_Y4_N10
\FD|muxDepoisULA|X[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[12]~12_combout\ = (\FD|ALU|somaSub[12]~24_combout\ & ((!\FD|PC|DOUT\(2)) # (!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|PC|DOUT\(2),
	datad => \FD|ALU|somaSub[12]~24_combout\,
	combout => \FD|muxDepoisULA|X[12]~12_combout\);

-- Location: LCCOMB_X66_Y4_N30
\FD|muxDepoisULA|X[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[11]~11_combout\ = (\FD|ALU|somaSub[11]~22_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|ALU|somaSub[11]~22_combout\,
	combout => \FD|muxDepoisULA|X[11]~11_combout\);

-- Location: LCCOMB_X63_Y4_N28
\FD|muxDepoisULA|X[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[10]~10_combout\ = (\FD|ALU|somaSub[10]~20_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datac => \FD|ALU|somaSub[10]~20_combout\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|muxDepoisULA|X[10]~10_combout\);

-- Location: LCCOMB_X66_Y4_N20
\FD|muxDepoisULA|X[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[9]~9_combout\ = (\FD|ALU|somaSub[9]~18_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|ALU|somaSub[9]~18_combout\,
	combout => \FD|muxDepoisULA|X[9]~9_combout\);

-- Location: LCCOMB_X63_Y4_N26
\FD|muxDepoisULA|X[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[8]~8_combout\ = (\FD|ALU|somaSub[8]~16_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|ALU|somaSub[8]~16_combout\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|muxDepoisULA|X[8]~8_combout\);

-- Location: LCCOMB_X63_Y4_N12
\FD|muxDepoisULA|X[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[7]~7_combout\ = (\FD|ALU|somaSub[7]~14_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datac => \FD|ALU|somaSub[7]~14_combout\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|muxDepoisULA|X[7]~7_combout\);

-- Location: LCCOMB_X63_Y4_N22
\FD|muxDepoisULA|X[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[6]~6_combout\ = (\FD|ALU|somaSub[6]~12_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datac => \FD|ALU|somaSub[6]~12_combout\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|muxDepoisULA|X[6]~6_combout\);

-- Location: LCCOMB_X63_Y4_N20
\FD|muxDepoisULA|X[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[5]~5_combout\ = (\FD|ALU|somaSub[5]~10_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datac => \FD|ALU|somaSub[5]~10_combout\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	combout => \FD|muxDepoisULA|X[5]~5_combout\);

-- Location: LCCOMB_X66_Y4_N2
\FD|muxDepoisULA|X[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[4]~4_combout\ = (\FD|ALU|somaSub[4]~8_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|ALU|somaSub[4]~8_combout\,
	combout => \FD|muxDepoisULA|X[4]~4_combout\);

-- Location: LCCOMB_X66_Y4_N12
\FD|muxDepoisULA|X[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[3]~3_combout\ = (\FD|ALU|somaSub[3]~6_combout\ & ((!\FD|PC|DOUT\(2)) # (!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|ALU|somaSub[3]~6_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|muxDepoisULA|X[3]~3_combout\);

-- Location: LCCOMB_X66_Y4_N6
\FD|muxDepoisULA|X[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[2]~2_combout\ = (\FD|ALU|somaSub[2]~4_combout\ & ((!\FD|PC|DOUT\(2)) # (!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datac => \FD|ALU|somaSub[2]~4_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|muxDepoisULA|X[2]~2_combout\);

-- Location: LCCOMB_X66_Y4_N4
\FD|muxDepoisULA|X[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxDepoisULA|X[1]~1_combout\ = (\FD|ALU|somaSub[1]~2_combout\ & ((!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\) # (!\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(2),
	datac => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datad => \FD|ALU|somaSub[1]~2_combout\,
	combout => \FD|muxDepoisULA|X[1]~1_combout\);

-- Location: LCCOMB_X66_Y4_N8
\FD|AndBEQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|AndBEQ~0_combout\ = (!\FD|ALU|somaSub[0]~0_combout\ & (!\FD|ALU|somaSub[2]~4_combout\ & (!\FD|ALU|somaSub[3]~6_combout\ & !\FD|ALU|somaSub[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|somaSub[0]~0_combout\,
	datab => \FD|ALU|somaSub[2]~4_combout\,
	datac => \FD|ALU|somaSub[3]~6_combout\,
	datad => \FD|ALU|somaSub[1]~2_combout\,
	combout => \FD|AndBEQ~0_combout\);

-- Location: LCCOMB_X66_Y3_N30
\FD|AndBEQ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|AndBEQ~1_combout\ = (!\FD|ALU|somaSub[4]~8_combout\ & (!\FD|ALU|somaSub[6]~12_combout\ & (!\FD|ALU|somaSub[7]~14_combout\ & !\FD|ALU|somaSub[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|somaSub[4]~8_combout\,
	datab => \FD|ALU|somaSub[6]~12_combout\,
	datac => \FD|ALU|somaSub[7]~14_combout\,
	datad => \FD|ALU|somaSub[5]~10_combout\,
	combout => \FD|AndBEQ~1_combout\);

-- Location: LCCOMB_X66_Y3_N4
\FD|AndBEQ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|AndBEQ~2_combout\ = (!\FD|ALU|somaSub[8]~16_combout\ & (!\FD|ALU|somaSub[11]~22_combout\ & (!\FD|ALU|somaSub[9]~18_combout\ & !\FD|ALU|somaSub[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|somaSub[8]~16_combout\,
	datab => \FD|ALU|somaSub[11]~22_combout\,
	datac => \FD|ALU|somaSub[9]~18_combout\,
	datad => \FD|ALU|somaSub[10]~20_combout\,
	combout => \FD|AndBEQ~2_combout\);

-- Location: LCCOMB_X66_Y3_N26
\FD|AndBEQ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|AndBEQ~3_combout\ = (!\FD|ALU|somaSub[13]~26_combout\ & (!\FD|ALU|somaSub[14]~28_combout\ & (!\FD|ALU|somaSub[15]~30_combout\ & !\FD|ALU|somaSub[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|somaSub[13]~26_combout\,
	datab => \FD|ALU|somaSub[14]~28_combout\,
	datac => \FD|ALU|somaSub[15]~30_combout\,
	datad => \FD|ALU|somaSub[12]~24_combout\,
	combout => \FD|AndBEQ~3_combout\);

-- Location: LCCOMB_X66_Y3_N0
\FD|AndBEQ~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|AndBEQ~4_combout\ = (!\FD|ALU|somaSub[17]~34_combout\ & (!\FD|ALU|somaSub[18]~36_combout\ & (!\FD|ALU|somaSub[16]~32_combout\ & !\FD|ALU|somaSub[19]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|somaSub[17]~34_combout\,
	datab => \FD|ALU|somaSub[18]~36_combout\,
	datac => \FD|ALU|somaSub[16]~32_combout\,
	datad => \FD|ALU|somaSub[19]~38_combout\,
	combout => \FD|AndBEQ~4_combout\);

-- Location: LCCOMB_X66_Y3_N22
\FD|AndBEQ~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|AndBEQ~5_combout\ = (!\FD|ALU|somaSub[23]~46_combout\ & (!\FD|ALU|somaSub[20]~40_combout\ & (!\FD|ALU|somaSub[21]~42_combout\ & !\FD|ALU|somaSub[22]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|somaSub[23]~46_combout\,
	datab => \FD|ALU|somaSub[20]~40_combout\,
	datac => \FD|ALU|somaSub[21]~42_combout\,
	datad => \FD|ALU|somaSub[22]~44_combout\,
	combout => \FD|AndBEQ~5_combout\);

-- Location: LCCOMB_X66_Y3_N20
\FD|AndBEQ~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|AndBEQ~6_combout\ = (!\FD|ALU|somaSub[24]~48_combout\ & (!\FD|ALU|somaSub[26]~52_combout\ & (!\FD|ALU|somaSub[25]~50_combout\ & !\FD|ALU|somaSub[27]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|somaSub[24]~48_combout\,
	datab => \FD|ALU|somaSub[26]~52_combout\,
	datac => \FD|ALU|somaSub[25]~50_combout\,
	datad => \FD|ALU|somaSub[27]~54_combout\,
	combout => \FD|AndBEQ~6_combout\);

-- Location: LCCOMB_X66_Y3_N18
\FD|AndBEQ~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|AndBEQ~7_combout\ = (\FD|AndBEQ~3_combout\ & (\FD|AndBEQ~4_combout\ & (\FD|AndBEQ~5_combout\ & \FD|AndBEQ~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|AndBEQ~3_combout\,
	datab => \FD|AndBEQ~4_combout\,
	datac => \FD|AndBEQ~5_combout\,
	datad => \FD|AndBEQ~6_combout\,
	combout => \FD|AndBEQ~7_combout\);

-- Location: LCCOMB_X66_Y3_N16
\FD|AndBEQ~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|AndBEQ~8_combout\ = (!\FD|ALU|somaSub[29]~58_combout\ & (!\FD|ALU|somaSub[31]~62_combout\ & (!\FD|ALU|somaSub[30]~60_combout\ & \FD|AndBEQ~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|somaSub[29]~58_combout\,
	datab => \FD|ALU|somaSub[31]~62_combout\,
	datac => \FD|ALU|somaSub[30]~60_combout\,
	datad => \FD|AndBEQ~7_combout\,
	combout => \FD|AndBEQ~8_combout\);

-- Location: LCCOMB_X66_Y3_N2
\FD|AndBEQ~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|AndBEQ~9_combout\ = (\FD|AndBEQ~1_combout\ & (!\FD|ALU|somaSub[28]~56_combout\ & (\FD|AndBEQ~2_combout\ & \FD|AndBEQ~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|AndBEQ~1_combout\,
	datab => \FD|ALU|somaSub[28]~56_combout\,
	datac => \FD|AndBEQ~2_combout\,
	datad => \FD|AndBEQ~8_combout\,
	combout => \FD|AndBEQ~9_combout\);

-- Location: LCCOMB_X66_Y3_N24
\FD|AndBEQ~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|AndBEQ~10_combout\ = (\FD|AndBEQ~0_combout\ & \FD|AndBEQ~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|AndBEQ~0_combout\,
	datad => \FD|AndBEQ~9_combout\,
	combout => \FD|AndBEQ~10_combout\);

-- Location: LCCOMB_X66_Y3_N14
\FD|AndBEQ~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|AndBEQ~11_combout\ = ((!\FD|PC|DOUT\(4) & (!\FD|PC|DOUT\(5) & !\FD|PC|DOUT\(3)))) # (!\FD|AndBEQ~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(4),
	datab => \FD|PC|DOUT\(5),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|AndBEQ~10_combout\,
	combout => \FD|AndBEQ~11_combout\);

-- Location: FF_X66_Y3_N7
\FD|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[2]~4_combout\,
	asdata => \FD|add4toPC|Add0~0_combout\,
	sload => \FD|AndBEQ~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(2));

-- Location: LCCOMB_X66_Y3_N28
\FD|Mem_Inst|MemoriaDeInstrucao~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ = (!\FD|PC|DOUT\(2) & (!\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(3) & !\FD|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datab => \FD|PC|DOUT\(5),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(4),
	combout => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\);

-- Location: LCCOMB_X67_Y3_N14
\FD|add4toPC|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|add4toPC|Add0~2_combout\ = (\FD|PC|DOUT\(3) & (!\FD|add4toPC|Add0~1\)) # (!\FD|PC|DOUT\(3) & ((\FD|add4toPC|Add0~1\) # (GND)))
-- \FD|add4toPC|Add0~3\ = CARRY((!\FD|add4toPC|Add0~1\) # (!\FD|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(3),
	datad => VCC,
	cin => \FD|add4toPC|Add0~1\,
	combout => \FD|add4toPC|Add0~2_combout\,
	cout => \FD|add4toPC|Add0~3\);

-- Location: LCCOMB_X66_Y3_N8
\FD|PC|DOUT[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[3]~6_combout\ = (\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & ((\FD|add4toPC|Add0~2_combout\ & (\FD|PC|DOUT[2]~5\ & VCC)) # (!\FD|add4toPC|Add0~2_combout\ & (!\FD|PC|DOUT[2]~5\)))) # (!\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & 
-- ((\FD|add4toPC|Add0~2_combout\ & (!\FD|PC|DOUT[2]~5\)) # (!\FD|add4toPC|Add0~2_combout\ & ((\FD|PC|DOUT[2]~5\) # (GND)))))
-- \FD|PC|DOUT[3]~7\ = CARRY((\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & (!\FD|add4toPC|Add0~2_combout\ & !\FD|PC|DOUT[2]~5\)) # (!\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\ & ((!\FD|PC|DOUT[2]~5\) # (!\FD|add4toPC|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	datab => \FD|add4toPC|Add0~2_combout\,
	datad => VCC,
	cin => \FD|PC|DOUT[2]~5\,
	combout => \FD|PC|DOUT[3]~6_combout\,
	cout => \FD|PC|DOUT[3]~7\);

-- Location: FF_X66_Y3_N9
\FD|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[3]~6_combout\,
	asdata => \FD|add4toPC|Add0~2_combout\,
	sload => \FD|AndBEQ~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(3));

-- Location: LCCOMB_X67_Y3_N16
\FD|add4toPC|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|add4toPC|Add0~4_combout\ = (\FD|PC|DOUT\(4) & (\FD|add4toPC|Add0~3\ $ (GND))) # (!\FD|PC|DOUT\(4) & (!\FD|add4toPC|Add0~3\ & VCC))
-- \FD|add4toPC|Add0~5\ = CARRY((\FD|PC|DOUT\(4) & !\FD|add4toPC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(4),
	datad => VCC,
	cin => \FD|add4toPC|Add0~3\,
	combout => \FD|add4toPC|Add0~4_combout\,
	cout => \FD|add4toPC|Add0~5\);

-- Location: LCCOMB_X66_Y3_N10
\FD|PC|DOUT[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[4]~8_combout\ = ((\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ $ (\FD|add4toPC|Add0~4_combout\ $ (!\FD|PC|DOUT[3]~7\)))) # (GND)
-- \FD|PC|DOUT[4]~9\ = CARRY((\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & ((\FD|add4toPC|Add0~4_combout\) # (!\FD|PC|DOUT[3]~7\))) # (!\FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ & (\FD|add4toPC|Add0~4_combout\ & !\FD|PC|DOUT[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\,
	datab => \FD|add4toPC|Add0~4_combout\,
	datad => VCC,
	cin => \FD|PC|DOUT[3]~7\,
	combout => \FD|PC|DOUT[4]~8_combout\,
	cout => \FD|PC|DOUT[4]~9\);

-- Location: FF_X66_Y3_N11
\FD|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[4]~8_combout\,
	asdata => \FD|add4toPC|Add0~4_combout\,
	sload => \FD|AndBEQ~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(4));

-- Location: LCCOMB_X67_Y3_N18
\FD|add4toPC|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|add4toPC|Add0~6_combout\ = \FD|add4toPC|Add0~5\ $ (\FD|PC|DOUT\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|DOUT\(5),
	cin => \FD|add4toPC|Add0~5\,
	combout => \FD|add4toPC|Add0~6_combout\);

-- Location: LCCOMB_X66_Y3_N12
\FD|PC|DOUT[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[5]~10_combout\ = \FD|add4toPC|Add0~6_combout\ $ (\FD|PC|DOUT[4]~9\ $ (\FD|Mem_Inst|MemoriaDeInstrucao~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|add4toPC|Add0~6_combout\,
	datad => \FD|Mem_Inst|MemoriaDeInstrucao~1_combout\,
	cin => \FD|PC|DOUT[4]~9\,
	combout => \FD|PC|DOUT[5]~10_combout\);

-- Location: FF_X66_Y3_N13
\FD|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[5]~10_combout\,
	asdata => \FD|add4toPC|Add0~6_combout\,
	sload => \FD|AndBEQ~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(5));

-- Location: LCCOMB_X67_Y3_N8
\FD|Mem_Inst|MemoriaDeInstrucao~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\ = (!\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(3) & !\FD|PC|DOUT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(4),
	combout => \FD|Mem_Inst|MemoriaDeInstrucao~0_combout\);

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

ww_enderecoASerEscritoTest(0) <= \enderecoASerEscritoTest[0]~output_o\;

ww_enderecoASerEscritoTest(1) <= \enderecoASerEscritoTest[1]~output_o\;

ww_enderecoASerEscritoTest(2) <= \enderecoASerEscritoTest[2]~output_o\;

ww_enderecoASerEscritoTest(3) <= \enderecoASerEscritoTest[3]~output_o\;

ww_enderecoASerEscritoTest(4) <= \enderecoASerEscritoTest[4]~output_o\;

ww_enderecoASerEscritoTest(5) <= \enderecoASerEscritoTest[5]~output_o\;

ww_enderecoASerEscritoTest(6) <= \enderecoASerEscritoTest[6]~output_o\;

ww_enderecoASerEscritoTest(7) <= \enderecoASerEscritoTest[7]~output_o\;

ww_enderecoASerEscritoTest(8) <= \enderecoASerEscritoTest[8]~output_o\;

ww_enderecoASerEscritoTest(9) <= \enderecoASerEscritoTest[9]~output_o\;

ww_enderecoASerEscritoTest(10) <= \enderecoASerEscritoTest[10]~output_o\;

ww_enderecoASerEscritoTest(11) <= \enderecoASerEscritoTest[11]~output_o\;

ww_enderecoASerEscritoTest(12) <= \enderecoASerEscritoTest[12]~output_o\;

ww_enderecoASerEscritoTest(13) <= \enderecoASerEscritoTest[13]~output_o\;

ww_enderecoASerEscritoTest(14) <= \enderecoASerEscritoTest[14]~output_o\;

ww_enderecoASerEscritoTest(15) <= \enderecoASerEscritoTest[15]~output_o\;

ww_enderecoASerEscritoTest(16) <= \enderecoASerEscritoTest[16]~output_o\;

ww_enderecoASerEscritoTest(17) <= \enderecoASerEscritoTest[17]~output_o\;

ww_enderecoASerEscritoTest(18) <= \enderecoASerEscritoTest[18]~output_o\;

ww_enderecoASerEscritoTest(19) <= \enderecoASerEscritoTest[19]~output_o\;

ww_enderecoASerEscritoTest(20) <= \enderecoASerEscritoTest[20]~output_o\;

ww_enderecoASerEscritoTest(21) <= \enderecoASerEscritoTest[21]~output_o\;

ww_enderecoASerEscritoTest(22) <= \enderecoASerEscritoTest[22]~output_o\;

ww_enderecoASerEscritoTest(23) <= \enderecoASerEscritoTest[23]~output_o\;

ww_enderecoASerEscritoTest(24) <= \enderecoASerEscritoTest[24]~output_o\;

ww_enderecoASerEscritoTest(25) <= \enderecoASerEscritoTest[25]~output_o\;

ww_enderecoASerEscritoTest(26) <= \enderecoASerEscritoTest[26]~output_o\;

ww_enderecoASerEscritoTest(27) <= \enderecoASerEscritoTest[27]~output_o\;

ww_enderecoASerEscritoTest(28) <= \enderecoASerEscritoTest[28]~output_o\;

ww_enderecoASerEscritoTest(29) <= \enderecoASerEscritoTest[29]~output_o\;

ww_enderecoASerEscritoTest(30) <= \enderecoASerEscritoTest[30]~output_o\;

ww_enderecoASerEscritoTest(31) <= \enderecoASerEscritoTest[31]~output_o\;

ww_dadoASerEscritoTest(0) <= \dadoASerEscritoTest[0]~output_o\;

ww_dadoASerEscritoTest(1) <= \dadoASerEscritoTest[1]~output_o\;

ww_dadoASerEscritoTest(2) <= \dadoASerEscritoTest[2]~output_o\;

ww_dadoASerEscritoTest(3) <= \dadoASerEscritoTest[3]~output_o\;

ww_dadoASerEscritoTest(4) <= \dadoASerEscritoTest[4]~output_o\;

ww_dadoASerEscritoTest(5) <= \dadoASerEscritoTest[5]~output_o\;

ww_dadoASerEscritoTest(6) <= \dadoASerEscritoTest[6]~output_o\;

ww_dadoASerEscritoTest(7) <= \dadoASerEscritoTest[7]~output_o\;

ww_dadoASerEscritoTest(8) <= \dadoASerEscritoTest[8]~output_o\;

ww_dadoASerEscritoTest(9) <= \dadoASerEscritoTest[9]~output_o\;

ww_dadoASerEscritoTest(10) <= \dadoASerEscritoTest[10]~output_o\;

ww_dadoASerEscritoTest(11) <= \dadoASerEscritoTest[11]~output_o\;

ww_dadoASerEscritoTest(12) <= \dadoASerEscritoTest[12]~output_o\;

ww_dadoASerEscritoTest(13) <= \dadoASerEscritoTest[13]~output_o\;

ww_dadoASerEscritoTest(14) <= \dadoASerEscritoTest[14]~output_o\;

ww_dadoASerEscritoTest(15) <= \dadoASerEscritoTest[15]~output_o\;

ww_dadoASerEscritoTest(16) <= \dadoASerEscritoTest[16]~output_o\;

ww_dadoASerEscritoTest(17) <= \dadoASerEscritoTest[17]~output_o\;

ww_dadoASerEscritoTest(18) <= \dadoASerEscritoTest[18]~output_o\;

ww_dadoASerEscritoTest(19) <= \dadoASerEscritoTest[19]~output_o\;

ww_dadoASerEscritoTest(20) <= \dadoASerEscritoTest[20]~output_o\;

ww_dadoASerEscritoTest(21) <= \dadoASerEscritoTest[21]~output_o\;

ww_dadoASerEscritoTest(22) <= \dadoASerEscritoTest[22]~output_o\;

ww_dadoASerEscritoTest(23) <= \dadoASerEscritoTest[23]~output_o\;

ww_dadoASerEscritoTest(24) <= \dadoASerEscritoTest[24]~output_o\;

ww_dadoASerEscritoTest(25) <= \dadoASerEscritoTest[25]~output_o\;

ww_dadoASerEscritoTest(26) <= \dadoASerEscritoTest[26]~output_o\;

ww_dadoASerEscritoTest(27) <= \dadoASerEscritoTest[27]~output_o\;

ww_dadoASerEscritoTest(28) <= \dadoASerEscritoTest[28]~output_o\;

ww_dadoASerEscritoTest(29) <= \dadoASerEscritoTest[29]~output_o\;

ww_dadoASerEscritoTest(30) <= \dadoASerEscritoTest[30]~output_o\;

ww_dadoASerEscritoTest(31) <= \dadoASerEscritoTest[31]~output_o\;
END structure;


