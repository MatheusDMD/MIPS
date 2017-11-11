LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY FluxoDeDados IS
	PORT (
		CLK				 : IN STD_LOGIC;
		mux_PC   		 : IN STD_LOGIC;
		Mux_RtRd 		 : IN STD_LOGIC;
		habEscritaReg   : IN STD_LOGIC;
		mux_RtIm		    : IN STD_LOGIC;
		ULAOPer 	 		 : IN STD_LOGIC_VECTOR(1 downto 0);
		mux_ULAMem		 : IN STD_LOGIC;
		BEQ   		    : IN STD_LOGIC;
		habLeituraMEM	 : IN STD_LOGIC;
		habEscritaMEM	 : IN STD_LOGIC;
		OpCode		    : OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
		Escrita3 		 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		Address3 		 : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
		A 		 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		B 		 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		S 		 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		ULAOPERATIONOUT : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		funct1 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
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
		port map (DIN=> PROXpc, DOUT =>saidaPC, CLK=> CLK); --clk, rst?
	
	Mem_Inst : entity work.InstructionMemory
		port map (Endereco=> saidaPC, Dado=> dadoMemInst);
		
	muxRt_Rd: entity work.mux5
		port map (A=>dadoMemInst(20 downto 16), B=>dadoMemInst(15 downto 11), SEL=> Mux_RtRd, X=> SaidaMuxRtRd);
	
	Banco_Regis: entity work.registerBank32
		port map (EndReg1=>dadoMemInst(25 downto 21), 
					 EndReg2=>dadoMemInst(20 downto 16),
					 EndReg3=>SaidaMuxRtRd,
					 habEscritaReg => habEscritaReg,
					 DadoEscritoReg3 => dadoEsc3,
					 DadoLidoReg1 => dadoReg1,
					 DadoLidoReg2 => dadoReg2,
					 clk=> CLK);
	
	--Debugging--	
	Escrita3<=dadoEsc3;
	Address3<=SaidaMuxRtRd;
	
	OpCode<= dadoMemInst(31 downto 26);
	
	Esten_Sinal: entity work.ext16to32 
		port map (A => dadoMemInst(15 downto 0), X=>saidaExtSin);
	
	muxAntesULA: entity work.mux32
		port map (A => dadoReg2, B=> saidaExtSin, SEL =>mux_RtIm, X => saidaParaULA);
	
	fun <= dadoMemInst(5 downto 0);
	funct1 <= dadoMemInst;
	UC_ULA : entity work.ALUControl
		port map(ULAOp=>ULAOPer, funct=> fun, ULActrl=> ULAoperation);
	
	ALU : entity work.ULA 
		port map(A=> dadoReg1,B=> saidaParaULA,invA=> ULAoperation(3),invB=> ULAoperation(2),Sel=> ULAoperation(1 downto 0),ZERO => z,RES => ULARes);
	A <= dadoReg1;
	B <=saidaParaULA;
	S <= ULARes;
	ULAOPERATIONOUT <= ULAoperation;
	Mem_dados: entity work.memory
		port map(Endereco=> ULARes,
					DadoASeEscritos=> dadoReg2,
					Ler => habLeituraMEM,
					Escrever => habEscritaMEM,
					DadoLido => saidaMemDados,
					CLK => CLK);
					  
	muxDepoisULA: entity work.mux32
		port map(A=> ULARes, B=> saidaMemDados, SEL => mux_ULAMem, X=> dadoEsc3);
	
	AndBEQ <= Z and BEQ;
	
	quatro<="00000000000000000000000000000100";
	
	add4toPC: entity work.add32
		port map (A=> saidaPC, B=> quatro, X=> PC_4);
		
	shifter26to32: entity work.shifter2_26to32
		port map (A=> dadoMemInst(25 downto 0), X=> saidaExt2632);
		
	entraMuxPc(31 downto 28)<= PC_4(31 downto 28);
	entraMuxPc(27 downto 0) <= saidaExt2632(27 downto 0);
	
	shifter32to32: entity work.shifter2_32to32
		port map(A=> saidaExtSin, X=> saidaExtSin2);
		
	AddPC4andExtSin: entity work.add32
		port map(A=> PC_4, B=> saidaExtSin2, X=> PC4Mux);

	MuxBEQ: entity work.mux32
		port map(A=> PC_4, B=> PC4Mux, SEL=> AndBEQ, X=> saidaMuxtoMux);
		
	MuxProxPC: entity work.mux32
		port map(A=> saidaMuxtoMux, B=> entraMuxPc, SEL=> mux_PC,X=> PROXpc);
		
END fluxo;