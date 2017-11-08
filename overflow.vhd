library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity overflow is
    generic (
        larguraDados : natural := 32
    );
    Port ( A   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           B   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
			  R   : in 	STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           X   : out STD_LOGIC := '0');
end overflow;

architecture Behavioral of overflow is
	signal saida_and1, saida_and2: std_logic;
begin
	and3_1 : entity work.and3
				port map (A => not(A(31)), B => not(B(31)), C => R(31), X => saida_and1);
				
	and3_2 : entity work.and3
				port map (A => A(31), B => B(31), C => not(R(31)), X => saida_and2);
				
	X<= saida_and1 or saida_and2;
end Behavioral;