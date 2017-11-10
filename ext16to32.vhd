library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ext16to32 is
    Port ( A   : in  STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
           X   : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0'));
end ext16to32;

architecture Behavioral of ext16to32 is
signal Xout: std_logic_vector(15 downto 0);
begin	
		Xout <= (A(15),A(15),A(15),A(15),A(15),A(15),A(15),A(15),A(15),A(15),A(15),A(15),A(15),A(15),A(15),A(15));
		X(15 downto 0) <= A(15 downto 0); 
		X(31 downto 16)<= Xout(15 downto 0);		
end Behavioral;
