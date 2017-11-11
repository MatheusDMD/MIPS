library ieee;
use ieee.std_logic_1164.all;

ENTITY UnidadeDeControle IS
    PORT(
        OpCode		: 	IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        Controle	:	OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
		  -- mux([PC+4, BEQ]/J) | mux(Rt/Rd) | HabEscritaReg | mux(Rt/imediato) | mux(ULA/mem) | BEQ | HabLeMEM | HabEscMEM | ULAop(1 downto 0)
END ALUControl;

architecture bhv of UnidadeDeControle is
begin
	process(OpCode, funct)
	begin
		if(OpCode = "000000") then 	 -- TIPO R
			Controle <= "0110000010";
		elsif (OpCode = "100011") then -- LW
			Controle <= "0011101000";
		elsif(OpCode = "101011") then  -- SW
			Controle <= "0001000100";
		elsif(OpCode = "000100") then  -- BEQ
			Controle <= "0000010001";
		elsif(OpCode = "000010") then  -- JUMP
			Controle <= "1000000000";
		end if;
	end process;
end bhv;