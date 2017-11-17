library ieee;
use ieee.std_logic_1164.all;

ENTITY ALUControl IS
    PORT(ULAOp: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        funct: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        ULActrl:OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END ALUControl;

architecture bhv of ALUControl is
begin
	process(ULAOp, funct)
	begin
		if(ULAOp = "00") then
			ULActrl <= "0010";
		elsif (ULAOp = "01") then
			ULActrl <= "0110";
		elsif(ULAOp = "10") then
			if(funct = "100000") then
				ULActrl <= "0010";
			elsif(funct = "100010") then
				ULActrl <= "0110";
			elsif(funct = "100100") then
				ULActrl <= "0000";
			elsif(funct = "100101") then 
				ULActrl <= "0001";
			elsif(funct = "101010") then
				ULActrl <= "0111";
			else
				ULActrl <= "0000";
			end if;
		else 
			ULActrl <= "0000";
		end if;
	end process;
end bhv;