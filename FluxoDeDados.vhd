LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY FluxoDeDados IS
	PORT (
		CLK				 : IN STD_LOGIC;
		RST_PC			 : IN STD_LOGIC := '0';
		mux_PC   		 : IN STD_LOGIC;
		Mux_RtRd 		 : IN STD_LOGIC;
		habEscritaReg   : IN STD_LOGIC;
		mux_RtIm		    : IN STD_LOGIC;
		ULAOPer 	 		 : IN STD_LOGIC_VECTOR(1 downto 0);
		mux_ULAMem		 : IN STD_LOGIC;
		BEQ   		    : IN STD_LOGIC;
		habLeituraMEM	 : IN STD_LOGIC;
		habEscritaMEM	 : IN STD_LOGIC;
		enderecoDisplay : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		ResultadoUla    : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		habEscritaDisplay:OUT STD_LOGIC;
		DadoLido1		 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		DadoLido2		 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		enderecoReg1Test: OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
		enderecoReg2Test: OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
		enderecoReg3Test: OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
		instrucaoTest   : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		entraAULATest   : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		entraBULATest   : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		dadoASerEscrito : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		A,B,I,J,L,M,N,O,Q,R,S,V,W : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		D,E,G  		 : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
		C					 : OUT STD_LOGIC_VECTOR (25 DOWNTO 0);
--		H					 : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
--		T					 : OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
		Y					 : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		U					 : OUT STD_LOGIC;
--		K					 : OUT STD_LOGIC;
--		PCdisplay	    : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		OpCode		    : OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
	);
END FluxoDeDados;
ARCHITECTURE fluxo of FluxoDeDados is
	signal PROXpc,saidaPC, dadoMemInst,saidaExtSin,dadoReg1,dadoReg2,saidaParaULA,ULARes,saidaMemDados,dadoEsc3,quatro,PC_4,entraMuxPc,saidaExtSin2,PC4Mux,saidaMuxtoMux: std_logic_vector(31 downto 0);
	signal SaidaMuxRtRd: std_logic_vector(4 downto 0);
	signal ULAoperation: std_logic_vector(3 downto 0);
	signal saidaExt2632: std_logic_vector(27 downto 0);
	signal fun: std_logic_vector(5 downto 0);
	signal z, AndBEQ: std_logic;
begin
	PC : entity work.registrador
		port map (DIN=> PROXpc, DOUT =>saidaPC, CLK=> CLK, RST=> RST_PC, ENABLE=> '1');
	
--	PCdisplay<= saidaPC;
	A<= saidaPC;
	
	Mem_Inst : entity work.InstructionMemory
		port map (Endereco=> saidaPC, Dado=> dadoMemInst);
	
--	instrucaoTest<= dadoMemInst;
	B<=dadoMemInst;
	
	muxRt_Rd: entity work.mux5
		port map (A=>dadoMemInst(20 downto 16), B=>dadoMemInst(15 downto 11), SEL=> Mux_RtRd, X=> SaidaMuxRtRd);
	
	E<=dadoMemInst(20 downto 16);
--	F<=dadoMemInst(15 downto 11);
	G<=SaidaMuxRtRd;
	D<=dadoMemInst(25 downto 21);
	
	Banco_Regis: entity work.registerBank32
		port map (EndReg1=>dadoMemInst(25 downto 21), 
					 EndReg2=>dadoMemInst(20 downto 16),
					 EndReg3=>SaidaMuxRtRd,
					 habEscritaReg => habEscritaReg,
					 DadoEscritoReg3 => dadoEsc3,
					 DadoLidoReg1 => dadoReg1,
					 DadoLidoReg2 => dadoReg2,
					 clk=> CLK);
					 
--	enderecoReg1Test<= dadoMemInst(25 downto 21);
--	enderecoReg2Test<= dadoMemInst(20 downto 16);
--	enderecoReg3Test<= SaidaMuxRtRd;
	OpCode<= dadoMemInst(31 downto 26);
	
--	DadoLido1 <=dadoReg1;
--	DadoLido2 <=dadoReg2;

	I<= dadoReg1;
	J<= dadoReg2;
	
	Esten_Sinal: entity work.ext16to32
		port map (A => dadoMemInst(15 downto 0), X=>saidaExtSin);
	
--	H<= dadoMemInst(15 downto 0);
--	P<= saidaExtSin;
	
	muxAntesULA: entity work.mux32
		port map (A => dadoReg2, B=> saidaExtSin, SEL =>mux_RtIm, X => saidaParaULA);
	
	L<= saidaParaULA;
	
	fun <= dadoMemInst(5 downto 0);
--	T<=fun;
	
	UC_ULA : entity work.ALUControl
		port map(ULAOp=>ULAOPer, funct=> fun, ULActrl=> ULAoperation);
	
	Y<=ULAoperation;
	
	
	ALU : entity work.ULA 
		port map(A=> dadoReg1,B=> saidaParaULA,invA=> ULAoperation(3),invB=> ULAoperation(2),Sel=> ULAoperation(1 downto 0),ZERO => z,RES => ULARes);
	
	U<=z;
	M<=ULARes;
	
--	entraAULATest<=dadoReg1;
--	entraBULATest<=saidaParaULA;
	
	Mem_dados: entity work.memory
		port map(Endereco=> ULARes,
					DadoASeEscritos=> dadoReg2,
					Ler => habLeituraMEM,
					Escrever => habEscritaMEM,
					DadoLido => saidaMemDados,
					CLK => CLK);
					
	N<=saidaMemDados;
	
--	ResultadoUla<= ULARes;
--	dadoASerEscrito <= dadoReg2;
	
	comparadorDisplay: entity work.xor32
		port map (A=> ULARes, B=>enderecoDisplay, X=> habEscritaDisplay);
	
	muxDepoisULA: entity work.mux32
		port map(A=> ULARes, B=> saidaMemDados, SEL => mux_ULAMem, X=> dadoEsc3);
	
	O<=dadoEsc3;
	
	AndBEQ <= Z and BEQ;
	
--	K<= Z and BEQ;
	
	quatro<="00000000000000000000000000000100";
	
	add4toPC: entity work.add32
		port map (A=> saidaPC, B=> quatro, X=> PC_4);
	
	R<= PC_4;
	
	shifter26to32: entity work.shifter2_26to32
		port map (A=> dadoMemInst(25 downto 0), X=> saidaExt2632);
	
	C<=dadoMemInst(25 downto 0);
	
	entraMuxPc(31 downto 28)<= PC_4(31 downto 28);
	entraMuxPc(27 downto 0) <= saidaExt2632;
	
	S<=entraMuxPc;
	
	shifter32to32: entity work.shifter2_32to32
		port map(A=> saidaExtSin, X=> saidaExtSin2);
	
	Q<=saidaExtSin2;
	
	AddPC4andExtSin: entity work.add32
		port map(A=> PC_4, B=> saidaExtSin2, X=> PC4Mux);
	
	V<=PC4Mux;

	MuxBEQ: entity work.mux32
		port map(A=> PC_4, B=> PC4Mux, SEL=> AndBEQ, X=> saidaMuxtoMux);
	
	W<= saidaMuxtoMux;
	
	MuxProxPC: entity work.mux32
		port map(A=> saidaMuxtoMux, B=> entraMuxPc, SEL=> mux_PC,X=> PROXpc);
	
--	X<=PROXpc;
		
END fluxo;