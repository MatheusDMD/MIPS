library ieee;
use ieee.std_logic_1164.all;

ENTITY MIPS IS
PORT (
	CLK: IN STD_LOGIC);
END MIPS;

architecture bhv of MIPS is
	signal OC: std_logic_vector(5 downto 0);
	signal PalavraDeControle: std_logic_vector(9 downto 0);
begin
	UC : entity work.UnidadedeControle
				port map (OpCode=> OC, Controle =>PalavraDeControle);
	
	FD : entity work.FluxoDeDados
			port map (CLK=> CLK, 
						 mux_PC =>PalavraDeControle(0), 
						 Mux_RtRd=>PalavraDeControle(1), 
						 habEscritaReg=>PalavraDeControle(2), 
						 mux_RtIm=>PalavraDeControle(3), 
						 ULAOPer=>PalavraDeControle(5 downto 4), 
						 mux_ULAMem=>PalavraDeControle(6), 
						 BEQ=>PalavraDeControle(7), 
						 habLeituraMEM=>PalavraDeControle(8), 
						 habEscritaMEM=>PalavraDeControle(9),
						 OpCode=> OC);
end bhv;