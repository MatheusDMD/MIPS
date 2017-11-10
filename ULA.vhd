library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
entity ULA is
    Port ( 	  A :  in  std_logic_vector(31 downto 0);
				  B :  in  std_logic_vector(31 downto 0);
			  invA :  in  std_logic;
			  invB :  in  std_logic;
				Sel :  in  std_logic_vector(1 downto 0);
				RES :  out std_logic_vector(31 downto 0);
			  ZERO :  out std_logic := '0'
   );
end entity;

architecture comportamento of ULA is
	signal notA, notB, saidamuxA, saidamuxB, saidaAnd, saidaOr, somaSub, slt, Result: std_logic_vector(31 downto 0);
	signal v, z: std_logic := '0';
	begin
		Anot : entity work.not32
				port map (A => A, X => notA);
				
		Bnot : entity work.not32
				port map (A=> B, X => notB);
		
		muxA : entity work.mux32
				port map (A=>A, B=> notA, SEL=>invA, X=> saidamuxA);

		muxB : entity work.mux32
				port map (A=>A, B=> notB, SEL=>invB, X=> saidamuxB);
		
		andop: entity work.and32
				port map (A=> saidamuxA, B=> saidamuxB, X=> saidaAnd);
		
		orop: entity work.or32
				port map (A=> saidamuxA, B=> saidamuxB, X=> saidaOr);
		
		somaSub <= saidamuxA + saidamuxB;
		
		overf: entity work.overflow
				port map (A=> saidamuxA, B=> saidamuxB, R=> somaSub, X=> v);
		
		process (v, somaSub)
		begin
			if((somaSub(31) xor v)  = '1') then
				slt<= (0 => '1', others => '0');
			else
				slt <= (others => '0');
			end if;
		end process;
		
		opmux: entity work.mux32_4
				port map (A=> saidaAnd, B=> saidaOr, C=> somaSub, D=> slt, SEL => Sel, X=> Result);
		
		RES <= Result;
		
		norZero: entity work.nor32
				port map(A=> Result, O=> z);
		
		ZERO <= z;
end architecture;