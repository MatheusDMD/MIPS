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
   LEDG            : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)  := (others => '0');
   HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7: OUT STD_LOGIC_VECTOR(6 downto 0);
	
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
	signal btn_set_output, btn_clock: std_logic_vector(3 downto 0) := (others=>'0');
	--signal endDisp : std_logic_vector(31 downto 0) := x"0000000F";
	signal dadoDisplay, saidaDisplay, PCdisplay: std_logic_vector(31 downto 0) := (others=> '0'); 
	signal enableDisplay: std_logic := '0';

begin

	BTN_RST : entity work.debounce
				port map (CLK => CLOCK_50, BTN => (not KEY(0)), output => btn_set_output);
				
	BTN_CLK : entity work.debounce
				port map (CLK => CLOCK_50, BTN => (not KEY(1)), output => btn_clock);
	
	LEDG(2) <= btn_set_output(0);
				
	UC : entity work.UnidadedeControle
				port map (OpCode=> OC, Controle =>PalavraDeControle);
	
	FD : entity work.FluxoDeDados
			port map (CLK=> btn_clock(0), 
						 enderecoDisplay => "00000000000000000000000000010000",
						 RST_PC=> btn_set_output(0),
						 mux_PC =>PalavraDeControle(0), 
						 Mux_RtRd=>PalavraDeControle(1), 
						 habEscritaReg=>PalavraDeControle(2), 
						 mux_RtIm=>PalavraDeControle(3), 
						 ULAOPer=>PalavraDeControle(9 downto 8), 
						 mux_ULAMem=>PalavraDeControle(4), 
						 BEQ=>PalavraDeControle(5), 
						 habLeituraMEM=>PalavraDeControle(6), 
						 habEscritaMEM=>PalavraDeControle(7),
						 OpCode=> OC,
						 habEscritaDisplay=> enableDisplay,
						 instrucaoTest => instrucaoTest,
						 enderecoReg1Test=> enderecoReg1Test,
						 enderecoReg2Test=> enderecoReg2Test,
						 entraAULATest=> entraAULATest,
						 entraBULATest=> entraBULATest,
						 dadoASerEscrito=> dadoDisplay,
						 PCdisplay => PCdisplay);
			
		registradosDisplay : entity work.registrador
			port map (DIN=> dadoDisplay, DOUT =>saidaDisplay, CLK=> btn_clock(0), ENABLE=> enableDisplay);
			
		display0 : entity work.conversorHex7seg
				port map (saida7seg => HEX0, dadoHex => saidaDisplay(3 DOWNTO 0), apaga => btn_set_output(0));
		
		display1 : entity work.conversorHex7seg
				port map (saida7seg => HEX1, dadoHex => saidaDisplay(7 DOWNTO 4), apaga => btn_set_output(0));
				
		display2 : entity work.conversorHex7seg
				port map (saida7seg => HEX2, dadoHex => saidaDisplay(11 DOWNTO 8), apaga => btn_set_output(0));
		
		display3 : entity work.conversorHex7seg
				port map (saida7seg => HEX3, dadoHex => saidaDisplay(15 DOWNTO 12), apaga => btn_set_output(0));
				
		display4 : entity work.conversorHex7seg
				port map (saida7seg => HEX4, dadoHex => saidaDisplay(19 DOWNTO 16), apaga => btn_set_output(0));
		
		display5 : entity work.conversorHex7seg
				port map (saida7seg => HEX5, dadoHex => saidaDisplay(23 DOWNTO 20), apaga => btn_set_output(0));
		
		display6 : entity work.conversorHex7seg
				port map (saida7seg => HEX6, dadoHex => PCdisplay(3 DOWNTO 0));
		
		display7 : entity work.conversorHex7seg
			port map (saida7seg => HEX7, dadoHex => PCdisplay(7 DOWNTO 4));
end bhv;