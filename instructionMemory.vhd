library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
ENTITY InstructionMemory IS
	PORT (
		Endereco : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		Dado : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END InstructionMemory;
ARCHITECTURE Behavioral OF InstructionMemory IS
	TYPE ArrayMemoria IS ARRAY(0 TO 15) OF std_logic_vector(31 DOWNTO 0);
	SIGNAL MemoriaDeInstrucao : ArrayMemoria := (
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000"
	);
BEGIN
		Dado <= MemoriaDeInstrucao(conv_integer(Endereco(6 downto 2)));
END Behavioral;