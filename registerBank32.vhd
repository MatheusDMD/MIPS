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
    clk         : in  std_logic
    );
end registerBank32;


architecture behavioral of registerBank32 is
	
    type registerFile is array(0 to 31) of std_logic_vector(31 downto 0);
    
    -- register bank:
    -- hard coded so that values could be add in compilation time
	signal registers : registerFile := (
        "00000000000000000000000000000000", -- $zero
        "00000000000000000000000000000000", -- mem 1
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000001", -- t0
        "00000000000000000000000000000010", -- t1
        "00000000000000000000000000000000", -- t2 
        "00000000000000000000000000010000", -- t3
        "00000000000000000000000000000000", -- t4
        "00000000000000000000000000000000", -- t5
        "00000000000000000000000000000000", -- t6
        "00000000000000000000000000000000", -- t7
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",  
        "00000000000000000000000000000000", -- mem 20
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000", 
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000", 
        "00000000000000000000000000000000", -- mem 30
        "00000000000000000000000000000000"
    );

begin
	process (clk, EndReg1, registers, EndReg2) is
    begin
        
    -- register write:
    -- only active with clock and the control point EnableWrite
	if (rising_edge(clk)) then
		if habEscritaReg = '1' then
			registers(to_integer(unsigned(EndReg3))) <= DadoEscritoReg3;
		end if;
	end if;
    
    -- register default value:
    -- just like the original MIPS design, it blocks the use of addrr 0, returning always the value 0. 
	if(not(EndReg1 = "00000")) then
		DadoLidoReg1 <= registers(to_integer(unsigned(EndReg1)));
    else
    -- register value assignment:
    -- doesn't require clock to read stored value
		DadoLidoReg1 <= (others=>'0');
    end if;
    
    -- same to the SecondAddrr
	if(not(EndReg2 = "00000")) then
		DadoLidoReg2 <= registers(to_integer(unsigned(EndReg2)));
    else
        DadoLidoReg2 <= (others=>'0');
	end if;

end process;
end behavioral;