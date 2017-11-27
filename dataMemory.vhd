library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity memory is
	port (
		Endereco, DadoASeEscritos: in STD_LOGIC_VECTOR (31 downto 0);
		Ler, Escrever,clk: in STD_LOGIC;
		DadoLido: out STD_LOGIC_VECTOR (31 downto 0)
	);
end memory;


architecture behavioral of memory is	  

type ArrayMemoria is array(0 to 31) of STD_LOGIC_VECTOR (31 downto 0);

signal Memoria: ArrayMemoria := (
    X"00000010",
    X"00000001",
    X"00000002",
    X"00ABCDEF",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000", 
    X"00000000", 
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",  
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000", 
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000", 
    X"00000000", 
    X"00000000");

begin
-- data read:
-- independent from clock
DadoLido <= Memoria(conv_integer(Endereco(31 downto 2))) when Ler = '1' else X"00000000";

-- data write:
-- requires clock rising_edge to store value on addrr
process(Endereco, DadoASeEscritos,clk)
begin
	if (rising_edge(clk)) then 
		if (Escrever = '1') then
			Memoria(conv_integer(Endereco(31 downto 2))) <= DadoASeEscritos;
		end if;
	end if;
end process;

end behavioral;