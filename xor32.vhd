library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor32 is
    Port ( A : in  STD_LOGIC_VECTOR(31 downto 0);      -- XOR gate input 1
           B: in  STD_LOGIC_VECTOR(31 downto 0);      -- XOR gate input 2
           X : out  STD_LOGIC:= '0'    -- XOR gate output
			  );
end xor32;

architecture Behavioral of xor32 is
begin
	process(A,B)
		begin
			if(A = B) then
				X <= '1';		
			else
				X <= '0';
			end if;
	end process;
end Behavioral;