library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity flipflop64bit is
Port (
      CLK : IN     std_logic;
      D   : IN     std_logic_vector(63 downto 0);
      EN  : IN     std_logic;
      RST : IN     std_logic;
      Q   : OUT    std_logic_vector(63 downto 0)
 );
end flipflop64bit;

architecture Behavioral of flipflop64bit is
begin
   process(CLK, RST)
     begin
        if(RST = '1') then
           Q <= X"0000000000000000";
        elsif(CLK'event AND CLK = '1') then
           if(EN = '1') then
              Q <= D;
           end if;
        end if;
     end process;
end Behavioral;
