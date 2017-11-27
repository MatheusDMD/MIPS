library ieee;
use ieee.std_logic_1164.all;

ENTITY MIPS IS
PORT (
   -- board input (found in ¨.qsf¨ file)
   CLOCK_50 : IN STD_LOGIC;
   KEY      : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- buttons   
   SW       : IN STD_LOGIC_VECTOR(17 DOWNTO 0); -- switches

   -- board output (found in ¨.qsf¨ file)
   LEDR            : OUT STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0'); -- red LEDs
   LEDG            : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)  := (others => '0'); -- green LEDs
   HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7: OUT STD_LOGIC_VECTOR(6 downto 0) -- 7-segments Display
	);
END MIPS;

architecture bhv of MIPS is
	signal OC: std_logic_vector(5 downto 0);
	signal PalavraDeControle: std_logic_vector(9 downto 0);
	signal btn_set_output, btn_clock: std_logic_vector(3 downto 0) := (others=>'0');
	signal dadoDisplay, saidaDisplay, PCdisplay: std_logic_vector(31 downto 0) := (others=> '0'); 
	signal enableDisplay: std_logic := '0';
	signal CLK : std_logic := '0';

begin
	-- reset button: 
	-- resets the program counter
	BTN_RST : entity work.debounce
				port map (CLK => CLOCK_50, BTN => (not KEY(0)), output => btn_set_output);

	-- clock button: 
	-- used for debug and demonstration, acts as clock to monitor step-by-step
	BTN_CLK : entity work.debounce
				port map (CLK => CLOCK_50, BTN => (not KEY(1)), output => btn_clock);

	-- pipeline control unit:
	-- control bits order:
	-- mux([PC+4, BEQ]/J) | mux(Rt/Rd) | HabEscritaReg | mux(Rt/imediato) | mux(ULA/mem) | BEQ | HabLeMEM | HabEscMEM | ULAop(1 downto 0)
	--          9 				8			   7				6				 5 			4		3			2			 1/0
	UC : entity work.UnidadedeControle
				port map (OpCode=> OC, Controle =>PalavraDeControle);
	
	-- pipeline data flow:
	-- contains the logic for all the MIPS operations
	FD : entity work.FluxoDeDados
			port map (CLK=> CLK, 
						 enderecoDisplay => "00000000000000000000000000010000",
						 RST_PC=> btn_set_output(0),
						 mux_PC =>PalavraDeControle(9), 
						 Mux_RtRd=>PalavraDeControle(8), 
						 habEscritaReg=>PalavraDeControle(7), 
						 mux_RtIm=>PalavraDeControle(6), 
						 ULAOPer=>PalavraDeControle(1 downto 0), 
						 mux_ULAMem=>PalavraDeControle(5), 
						 BEQ=>PalavraDeControle(4), 
						 habLeituraMEM=>PalavraDeControle(3), 
						 habEscritaMEM=>PalavraDeControle(2),
						 OpCode=> OC,
						 dadoDisplay => dadoDisplay,
						 habEscritaDisplay=> enableDisplay,
						 PCdisplay=> PCdisplay);
		

		-- debug diplay resgister:
		-- classroom demonstration requirement
		-- contains the data to be diplayed at the 6 first 7-segments
		registradosDisplay : entity work.registrador
			port map (DIN=> dadoDisplay, DOUT =>saidaDisplay, CLK=> CLK, ENABLE=> enableDisplay);
		
		-- 7-segments displays:
		-- classroom demonstration requirement
		-- diplay the data stored at the debug diplay resgister
		display0 : entity work.conversorHex7seg
				port map (saida7seg => HEX0, dadoHex => saidaDisplay(3 DOWNTO 0));
		display1 : entity work.conversorHex7seg
				port map (saida7seg => HEX1, dadoHex => saidaDisplay(7 DOWNTO 4));				
		display2 : entity work.conversorHex7seg
				port map (saida7seg => HEX2, dadoHex => saidaDisplay(11 DOWNTO 8));
		display3 : entity work.conversorHex7seg
				port map (saida7seg => HEX3, dadoHex => saidaDisplay(15 DOWNTO 12));	
		display4 : entity work.conversorHex7seg
				port map (saida7seg => HEX4, dadoHex => saidaDisplay(19 DOWNTO 16));
		display5 : entity work.conversorHex7seg
				port map (saida7seg => HEX5, dadoHex => saidaDisplay(23 DOWNTO 20));	
		
		-- classroom demonstration extra feature
		-- diplay the value of the program counter for debug porpuses	
		display6 : entity work.conversorHex7seg
				port map (saida7seg => HEX6, dadoHex => PCdisplay(3 DOWNTO 0));
		display7 : entity work.conversorHex7seg
				port map (saida7seg => HEX7, dadoHex => PCdisplay(7 DOWNTO 4));
		
		-- debug LED output:
		-- classroom demonstration extra feature
		-- designed to show the control unit output
		LEDG(7) <= enableDisplay;
		LEDG(5 downto 0) <= OC;
		LEDR(9) <= PalavraDeControle(9);
		LEDR(8) <= PalavraDeControle(8);
		LEDR(7) <= PalavraDeControle(7);
		LEDR(6) <= PalavraDeControle(6);
		LEDR(5) <= PalavraDeControle(1);
		LEDR(4) <= PalavraDeControle(0);
		LEDR(3) <= PalavraDeControle(5);
		LEDR(2) <= PalavraDeControle(4);
		LEDR(1) <= PalavraDeControle(3);
		LEDR(0) <= PalavraDeControle(2);

		-- debug clock switch:
		-- classroom demonstration extra feature
		-- to change between debug button and clock output
		process(CLK,SW)
			begin
				if(SW(17) = '0') then
					CLK <= btn_clock(0);
				else
					CLK <= CLOCK_50;
				end if;
			end process;
			
end bhv;