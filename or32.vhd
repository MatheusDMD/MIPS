library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std;
entity or32 is
    generic (
        larguraDados : natural := 32
    );
    Port ( A   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           B   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           X   : out STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0'));
end or32;

architecture Behavioral of or32 is
begin
    X <= A or B;
end Behavioral;