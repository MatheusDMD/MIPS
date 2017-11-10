library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registerBank32 is
  port(
    DadoLidoReg1        : out std_logic_vector(31 downto 0);
    DadoLidoReg2        : out std_logic_vector(31 downto 0);
    DadoEscritoReg3       : in  std_logic_vector(31 downto 0);
    habEscritaReg : in  std_logic;
    EndReg1     : in  std_logic_vector(4 downto 0);
    EndReg2     : in  std_logic_vector(4 downto 0);
    EndReg3 : in  std_logic_vector(4 downto 0);
    clk         : in  std_logic :='1'
    );
end registerBank32;


architecture behavioral of registerBank32 is
  type registerFile is array(0 to 31) of std_logic_vector(31 downto 0);
  signal registers : registerFile;
begin
  regFile : process (clk) is
  begin
    if rising_edge(clk) then
      DadoLidoReg1 <= registers(to_integer(unsigned(EndReg1)));
      DadoLidoReg2 <= registers(to_integer(unsigned(EndReg2)));
      if habEscritaReg = '1' then
        registers(to_integer(unsigned(EndReg3))) <= DadoEscritoReg3;  -- Write
        if EndReg1 = EndReg3 then
          DadoLidoReg1 <= DadoEscritoReg3;
        end if;
        if EndReg2 = EndReg3 then
          DadoLidoReg2 <= DadoEscritoReg3;
        end if;
      end if;
    end if;
  end process;
end behavioral;