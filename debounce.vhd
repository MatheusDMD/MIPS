library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity debounce is
  Port (
    CLK : in  STD_LOGIC;
    BTN : in  STD_LOGIC;
    output : out  STD_LOGIC_VECTOR(3 downto 0) := (others => '0')
  );
end debounce;

architecture Behavioral of debounce is
signal temp, division: std_logic_vector(0 to 25) := (others => '0');
begin   process(CLK,BTN)
   begin
		division <= "00100110001001011010000000";
      if (BTN='1' and (rising_edge(CLK))) then
            if (temp=division) then
               temp<="00000000000000000000000000";
            else
					output <= "0000";
					temp <= temp + 1;
            end if;
				if (temp="00000000000000000000000000") then
					output <= "0001";
				end if;
         end if;
		if (BTN='0') then
			temp<="00000000000000000000000000";
		end if;
  end process;
end Behavioral;