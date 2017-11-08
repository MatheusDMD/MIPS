library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity add32 is
    generic (
        larguraDados : natural := 32
    );
    Port ( A   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           B   : in  STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0');
           X   : out STD_LOGIC_VECTOR (larguraDados-1 downto 0) := (others => '0'));
end add32;

architecture Behavioral of add32 is
begin
    X <= A + B;
end Behavioral;