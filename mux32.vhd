library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux32 is
    generic (
        larguraDados : natural := 32
    );
    Port ( SEL : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           B   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           X   : out STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0'));
end mux32;

architecture Behavioral of mux32 is
begin
    X <= A when (SEL = '0') else B;
end Behavioral;