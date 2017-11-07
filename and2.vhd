library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and2 is
    Port ( A : in  STD_LOGIC := '0';
           B : in  STD_LOGIC := '0';     
           X : out  STD_LOGIC := '0'    
			  );
end and2;

architecture Behavioral of and2 is
begin
	process(A,B)
		begin
			if((A = '1') and (B = '1')) then
				X <= '1';
			else
				X <= '0';
			end if;
	end process;
end Behavioral;