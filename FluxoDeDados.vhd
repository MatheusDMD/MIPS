LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY FluxoDeDados IS
	PORT (
		CLK				  : IN STD_LOGIC;
		RST_PC			  : IN STD_LOGIC := '0';
		mux_PC   		  : IN STD_LOGIC := '0';
		Mux_RtRd 		  : IN STD_LOGIC := '0';
		habEscritaReg    : IN STD_LOGIC := '0';
		mux_RtIm		     : IN STD_LOGIC := '0';
		ULAOPer 	 		  : IN STD_LOGIC_VECTOR(1 downto 0) := (others=> '0');
		mux_ULAMem		  : IN STD_LOGIC := '0';
		BEQ   		     : IN STD_LOGIC := '0';
		habLeituraMEM	  : IN STD_LOGIC := '0';
		habEscritaMEM	  : IN STD_LOGIC := '0';
		enderecoDisplay  : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		habEscritaDisplay: OUT STD_LOGIC := '0';
		PCdisplay		  : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		dadoDisplay	     : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		OpCode		     : OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
	);
END FluxoDeDados;
ARCHITECTURE fluxo of FluxoDeDados is
	signal PROXpc,saidaPC, dadoMemInst,saidaEstSin,dadoReg1,
			 dadoReg2,saidaParaULA,ULARes,saidaMemDados,writeData,
			 quatro,PC_4,entraMuxPc,saidaShift,PC4Mux,saidaMuxtoMux: std_logic_vector(31 downto 0);
	signal entradaP1, saidaP1 : std_logic_vector(63 downto 0) := (others=> '0');
	signal entradaP2, saidaP2 : std_logic_vector(146 downto 0) := (others=> '0');
	signal entradaP3, saidaP3 : std_logic_vector(106 downto 0) := (others=> '0');
	signal entradaP4, saidaP4 : std_logic_vector(70 downto 0) := (others=> '0');
	signal ULAoperation: std_logic_vector(3 downto 0);
	signal writeRegister: std_logic_vector(4 downto 0);
	signal saidaExt2632: std_logic_vector(27 downto 0);
	signal fun: std_logic_vector(5 downto 0);
signal z, AndBEQ: std_logic;
begin
	PC : entity work.registrador
		port map (DIN=> PROXpc, DOUT =>saidaPC, CLK=> CLK, RST=> RST_PC, ENABLE=> '1');
	
	PCdisplay<= saidaPC;
	
	Mem_Inst : entity work.InstructionMemory
		port map (Endereco=> saidaPC, Dado=> dadoMemInst);
	
	quatro<="00000000000000000000000000000100";
	
	add4toPC: entity work.add32
		port map (A=> saidaPC, B=> quatro, X=> PC_4);
		
	entradaP1(31 downto 0)<= dadoMemInst;
	entradaP1(63 downto 32)<= PC_4;
	
	Registrador_pipeline1: entity work.registrador
		generic map(larguraDados=> 64) port map (DIN=> entradaP1, DOUT=> saidaP1, CLK=> CLK, ENABLE=> '1');
	
	Banco_Regis: entity work.registerBank32
		port map (EndReg1=>saidaP1(25 downto 21), 
					 EndReg2=>saidaP1(20 downto 16),
					 EndReg3=>saidaP4(4 downto 0),
					 habEscritaReg => saidaP4(70),
					 DadoEscritoReg3 => writeData,
					 DadoLidoReg1 => dadoReg1,
					 DadoLidoReg2 => dadoReg2,
					 clk=> CLK);
					 
	Esten_Sinal: entity work.ext16to32
		port map (A => saidaP1(15 downto 0), X=>saidaEstSin);
	
	entradaP2(4 downto 0)<= saidaP1(20 downto 16);
	entradaP2(9 downto 5)<= saidaP1(15 downto 11);
	entradaP2(41 downto 10)<= saidaEstSin;
	entradaP2(73 downto 42)<= dadoReg2;
	entradaP2(105 downto 74)<= dadoReg1;
	entradaP2(137 downto 106)<= saidaP1(63 downto 32);
	entradaP2(138)<=mux_RtIm;
	entradaP2(140 downto 139)<= ULAOPer;
	entradaP2(141)<=Mux_RtRd;
	entradaP2(142)<=habEscritaMEM;
	entradaP2(143)<=habLeituraMEM;
	entradaP2(144)<=BEQ;
	entradaP2(145)<=mux_ULAMem;
	entradaP2(146)<=habEscritaReg;
	
	OpCode<=saidaP1(31 downto 26);
		
	Registrador_pipeline2: entity work.registrador
		generic map(larguraDados=> 147)
		port map (DIN=> entradaP2, DOUT=> saidaP2, CLK=> CLK, ENABLE=> '1');
		
	shifter32to32: entity work.shifter2_32to32
		port map(A=> saidaP2(41 downto 10), X=> saidaShift);
		
	AddPC4andExtSin: entity work.add32
		port map(A=> saidaP2(137 downto 106), B=> saidaShift, X=> PC4Mux);
		
	muxAntesULA: entity work.mux32
		port map (A => saidaP2(73 downto 42), B=> saidaP2(41 downto 10), SEL =>saidaP2(138), X => saidaParaULA);
	
	fun<= saidaP2(15 downto 10);
	
	UC_ULA : entity work.ALUControl
		port map(ULAOp=>saidaP2(140 downto 139), funct=> fun, ULActrl=> ULAoperation);
		
	ALU : entity work.ULA 
		port map(A=> saidaP2(105 downto 74),B=> saidaParaULA,invA=> ULAoperation(3),invB=> ULAoperation(2),Sel=> ULAoperation(1 downto 0),ZERO => z, RES => ULARes);
	
	muxRt_Rd: entity work.mux5
		port map (A=>saidaP2(4 downto 0), B=>saidaP2(9 downto 5), SEL=> saidaP2(141), X=> writeRegister);
	
	entradaP3(4 downto 0)<= writeRegister;
	entradaP3(36 downto 5)<=saidaP2(73 downto 42);
	entradaP3(68 downto 37)<= ULARes;
	entradaP3(69)<= z;
	entradaP3(101 downto 70)<=PC4Mux;
	entradaP3(106 downto 102)<=saidaP2(146 downto 142);

	Registrador_pipeline3: entity work.registrador
		generic map(larguraDados=> 107)
		port map (DIN=> entradaP3, DOUT=> saidaP3, CLK=> CLK, ENABLE=> '1');	
	
	Mem_dados: entity work.memory
		port map(Endereco=> saidaP3(68 downto 37),
					DadoASeEscritos=> saidaP3(36 downto 5),
					Ler => saidaP3(103),
					Escrever => saidaP3(102),
					DadoLido => saidaMemDados,
					CLK => CLK);
	dadoDisplay <= saidaP3(36 downto 5);
	comparadorDisplay: entity work.xor32
		port map (A=> saidaP3(68 downto 37), B=>enderecoDisplay, X=> habEscritaDisplay);
	
	AndBEQ<= saidaP3(69) and saidaP3(104);
	
	entradaP4(4 downto 0) <= saidaP3(4 downto 0);
	entradaP4(36 downto 5) <= saidaP3(68 downto 37);
	entradaP4(68 downto 37) <= saidaMemDados;
	entradaP4(70 downto 69) <= saidaP3(106 downto 105);
	
	Registrador_pipeline4: entity work.registrador
		generic map(larguraDados=> 71)
		port map (DIN=> entradaP4, DOUT=> saidaP4, CLK=> CLK, ENABLE=> '1');
	
	muxDepoisULA: entity work.mux32
		port map(A=> saidaP4(36 downto 5), B=> saidaP4(68 downto 37), SEL => saidaP4(69), X=> writeData);
	
	MuxBEQ: entity work.mux32
		port map(A=> PC_4, B=> saidaP3(101 downto 70), SEL=> AndBEQ, X=> saidaMuxtoMux);
		
	
	shifter26to32: entity work.shifter2_26to32
		port map (A=> saidaP1(25 downto 0), X=> saidaExt2632);
		
	entraMuxPc(31 downto 28)<= PC_4(31 downto 28);
	entraMuxPc(27 downto 0) <= saidaExt2632;
		
	MuxProxPC: entity work.mux32
		port map(A=> saidaMuxtoMux, B=> entraMuxPc, SEL=> mux_PC,X=> PROXpc);
			
END fluxo;