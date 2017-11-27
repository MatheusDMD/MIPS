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
	TYPE ArrayMemoria IS ARRAY(0 TO 63) OF std_logic_vector(31 DOWNTO 0);
	SIGNAL MemoriaDeInstrucao : ArrayMemoria := (
		x"8C080004", --lw t0, 0x0004(zero)
		x"8C090008", --lw t1, 0x0008(zero)
		x"8C100000", --lw s0, 0x0000(zero) mudanca de ordem para dimunuir numero de nops 
		x"00000000",
		x"00000000",
		x"01095020", --add t2, t0, t1
		x"01285822", --sub t3, t1, t0
		x"00000000",
		x"00000000",
		x"AE0A0000", --sw t2, 0x0000(s0)
		x"016A602A", --slt t4, t3, t2
		x"AE0B0000", --sw t3, 0x0000(s0)
		x"014B682A", --slt t5, t2, t3
		x"AE0C0000", --sw t4, 0x0000(s0)
		x"01097024", --and t6, t0, t1
		x"00000000",
		x"AE0D0000", --sw t5, 0x0000(s0) --16
		x"00000000",
		x"AE0E0000", --sw t6, 0x0000(s0)
		x"114E0009", --beq t2, t6, 0x0009
		x"01097025", --or t6, t0, t1
		x"00000000",
		x"00000000",
		x"00000000",
		x"AE0E0000", --sw t6, 0x0000(s0)
		x"114E0004", --beq t2, t6, 0x0004
		x"00000000",
		x"00000000",
		x"00000000",
		x"0800001D", --j 0x001D
		x"8C0F000C", --lw t7, 0x000C(zero)
		x"00000000",
		x"00000000",--32
		x"00000000",
		x"AE0F0000", --sw t7, 0x0000(s0)
		x"00000000",
		x"00000000",
		x"00000000",
		x"08000026", --j 0x0026 --38
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
		Dado <= MemoriaDeInstrucao(conv_integer(Endereco(8 downto 2)));
END Behavioral;