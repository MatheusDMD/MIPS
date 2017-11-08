library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ext16to32 is
    Port ( A   : in  STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
           X   : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0'));
end ext16to32;

architecture Behavioral of ext16to32 is
	signal special_bits : std_logic_vector(15 downto 0) := (others => unsigned(A(15)));
begin
    X <= (31 downto 16 => special_bits, 15 downto 0 => A); 
end Behavioral;