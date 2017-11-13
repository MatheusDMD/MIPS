library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;

entity inversor32 is
    generic (
        larguraDados : natural := 32
    );
    Port ( A   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           X   : out STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0'));
end inversor32;

architecture Behavioral of inversor32 is
begin
    X <= not (A) + 1;
end Behavioral;