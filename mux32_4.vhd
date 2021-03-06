library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux32_4 is
    generic (
        larguraDados : natural := 32
    );
    Port ( SEL : in  STD_LOGIC_VECTOR := "00";
           A   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           B   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
			  C   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
			  D   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           X   : out STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0'));
end mux32_4;

architecture Behavioral of mux32_4 is
begin
    X <= A when (SEL = "00") else 
			B when (SEL = "01") else
			C when (SEL = "10") else
			D;
end Behavioral;