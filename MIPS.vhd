library ieee;
use ieee.std_logic_1164.all;

ENTITY MIPS IS
PORT (
	--CLK: IN STD_LOGIC;
	-- Entradas (nomenclatura definida no arquivo ¨.qsf¨)
   CLOCK_50 : IN STD_LOGIC;
   KEY      : IN STD_LOGIC_VECTOR(3 DOWNTO 0);    --chaves de contato momentaneo.
   --SW       : IN STD_LOGIC_VECTOR(17 DOWNTO 0);    --chaves liga/desliga.

   -- Saidas da placa (nomenclatura definida no arquivo ¨.qsf¨)
   --LEDR            : OUT STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
   --LEDG            : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)  := (others => '0');
   HEX0, HEX1, HEX2, HEX3: OUT STD_LOGIC_VECTOR(6 downto 0);
	
	enderecoReg1Test: OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
	enderecoReg2Test: OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
	instrucaoTest   : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
	entraAULATest   : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
	entraBULATest   : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END MIPS;

architecture bhv of MIPS is
	signal OC: std_logic_vector(5 downto 0);
	signal PalavraDeControle: std_logic_vector(9 downto 0);
	signal btn_set_output: std_logic_vector(3 downto 0) := (others=>'0');
	--signal endDisp : std_logic_vector(31 downto 0) := x"0000000F";
	signal dadoDisplay, saidaDisplay: std_logic_vector(31 downto 0) := (others=> '0'); 
	signal enableDisplay: std_logic := '0';

begin

	BTN_RST : entity work.debounce
				port map (CLK => CLOCK_50, BTN => (not KEY(0)), output => btn_set_output);
				
	UC : entity work.UnidadedeControle
				port map (OpCode=> OC, Controle =>PalavraDeControle);
	
	FD : entity work.FluxoDeDados
			port map (CLK=> CLOCK_50, 
						 enderecoDisplay => x"0000000F",
						 RST_PC=> btn_set_output(0),
						 mux_PC =>PalavraDeControle(0), 
						 Mux_RtRd=>PalavraDeControle(1), 
						 habEscritaReg=>PalavraDeControle(2), 
						 mux_RtIm=>PalavraDeControle(3), 
						 ULAOPer=>PalavraDeControle(5 downto 4), 
						 mux_ULAMem=>PalavraDeControle(6), 
						 BEQ=>PalavraDeControle(7), 
						 habLeituraMEM=>PalavraDeControle(8), 
						 habEscritaMEM=>PalavraDeControle(9),
						 OpCode=> OC,
						 habEscritaDisplay=> enableDisplay,
						 instrucaoTest => instrucaoTest,
						 enderecoReg1Test=> enderecoReg1Test,
						 enderecoReg2Test=> enderecoReg2Test,
						 entraAULATest=> entraAULATest,
						 entraBULATest=> entraBULATest,
						 dadoASerEscrito=> dadoDisplay);
			
		registradosDisplay : entity work.registrador
			port map (DIN=> dadoDisplay, DOUT =>saidaDisplay, CLK=> CLOCK_50, ENABLE=> enableDisplay);
			
		display0 : entity work.conversorHex7seg
				port map (saida7seg => HEX0, dadoHex => saidaDisplay(3 DOWNTO 0), apaga => btn_set_output(0));
		
		display1 : entity work.conversorHex7seg
				port map (saida7seg => HEX1, dadoHex => saidaDisplay(7 DOWNTO 4), apaga => btn_set_output(0));
				
		display2 : entity work.conversorHex7seg
				port map (saida7seg => HEX2, dadoHex => saidaDisplay(11 DOWNTO 8), apaga => btn_set_output(0));
		
		display3 : entity work.conversorHex7seg
				port map (saida7seg => HEX3, dadoHex => saidaDisplay(15 DOWNTO 12), apaga => btn_set_output(0));
			
end bhv;