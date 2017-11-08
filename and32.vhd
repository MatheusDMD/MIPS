library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std;
entity and32 is
    generic (
        larguraDados : natural := 32
    );
    Port ( A   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           B   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           X   : out STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0'));
end and32;

architecture Behavioral of and32 is
begin
    X <= A and B;
end Behavioral;