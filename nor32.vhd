library ieee;
use ieee.std_logic_1164.all;


entity nor32 is
	port (A: in std_logic_vector(31 downto 0):= (others => '0');
	      O: out  STD_LOGIC := '0');
end nor32;

architecture behavior of nor32 is

begin
	process(A)
	begin
		if(A = (others => '0')) then
			O <= '1';
		else
			O<='0';
		end if;
	end process;
end behavior;