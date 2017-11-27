library ieee;
use ieee.std_logic_1164.all;

-- control bits order:
	-- mux([PC+4, BEQ]/J) | mux(Rt/Rd) | HabEscritaReg | mux(Rt/imediato) | mux(ULA/mem) | BEQ | HabLeMEM | HabEscMEM | ULAop(1 downto 0)
	--          9 				8			   7				6				 5 			4		3			2			 1/0
ENTITY UnidadeDeControle IS
    PORT(
        OpCode		: 	IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        Controle	:	OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
END UnidadeDeControle;

architecture bhv of UnidadeDeControle is
begin
	-- control unit process:
	-- assign values to the control bits based on OpCode
	process(OpCode)
	begin
		if(OpCode = "000000") then 	   -- R-type
			Controle <= "0110000010";
		elsif (OpCode = "100011") then -- LW
			Controle <= "0011101000";
		elsif(OpCode = "101011") then  -- SW
			Controle <= "0001000100";
		elsif(OpCode = "000100") then  -- BEQ
			Controle <= "0000010001";
		elsif(OpCode = "000010") then  -- JUMP
			Controle <= "1000000000";
		else 
			Controle <= "0000000000";
		end if;
	end process;
end bhv;