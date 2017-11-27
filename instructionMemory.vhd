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
	TYPE ArrayMemoria IS ARRAY(0 TO 31) OF std_logic_vector(31 DOWNTO 0);
	SIGNAL MemoriaDeInstrucao : ArrayMemoria := (
		x"00000000", --lw s0, 0x0000(zero)
		x"01095020", --lw t0, 0x0004(zero)
		x"AD680000", --lw t1, 0x0008(zero)
		x"00000000", --add t2, t0, t1
		x"00000000", --sw t2, 0x0000(s0)
		x"AD6A0000", --sub t3, t1, t0
		x"00000000", --sw t3, 0x0000(s0)
		x"00000000", --slt t4, t3, t2
		x"00000000", --sw t4, 0x0000(s0)
		x"00000000", --slt t5, t2, t3
		x"00000000", --sw t5, 0x0000(s0)
		x"00000000", --and t6, t0, t1
		x"00000000", --sw t6, 0x0000(s0)
		x"00000000", --beq t2, t6, 0x0004
		x"00000000", --or t6, t0, t1
		x"00000000", --sw t6, 0x0000(s0)
		x"00000000", --beq t2, t6, 0x0001
		x"00000000", --j 0x0044
		x"00000000", --lw t7, 0x000C(zero)
		x"00000000", --sw t7, 0x0000(s0)
		x"00000000", --j 0x0014
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
		Dado <= MemoriaDeInstrucao(conv_integer(Endereco(7 downto 2)));
END Behavioral;