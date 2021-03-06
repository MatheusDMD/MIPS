library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux5 is
    generic (
        larguraDados : natural := 5
    );
    Port ( SEL : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           B   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           X   : out STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0'));
end mux5;

architecture Behavioral of mux5 is
begin
    X <= A when (SEL = '0') else B;
end Behavioral;