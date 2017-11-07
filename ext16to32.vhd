library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ext16to32 is
    Port ( A   : in  STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
           X   : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0'));
end ext16to32;

architecture Behavioral of ext16to32 is
begin
    X <=(31 downto 17 => A(16), 16 downto 0 => A); 
end Behavioral;