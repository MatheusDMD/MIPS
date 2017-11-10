library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std;

entity shifter2_32to32 is
    generic (
        larguraDados  : integer := 32);
    port(
        A  : in  std_logic_vector(larguraDados-1 downto 0);
        X  : out std_logic_vector(larguraDados-1 downto 0));
end shifter2_32to32 ;

architecture bhv of shifter2_32to32 is
begin
    X(31 downto 2) <=  A(29 downto 0);
	 X(1 downto 0) <="00"; 
end bhv;