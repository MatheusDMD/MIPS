library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std;

entity shifter2_26to32 is
    port(
        A  : in  std_logic_vector(25 downto 0);
        X  : out std_logic_vector(27 downto 0));
end shifter2_26to32 ;

architecture bhv of shifter2_26to32 is
begin
    X(27 downto 2 )<= A(25 downto 0);
	 X(1 downto 0)<= "00"; 
end bhv;