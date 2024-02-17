library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity HILO_reg is
Port (
    D : in std_logic_vector(31 downto 0);
    CLK, EN, RST : in std_logic;
    Q : out std_logic_vector(31 downto 0)
 );
end HILO_reg;

architecture Behavioral of HILO_reg is
begin
   process(CLK, RST, EN, D)
     begin
        if(RST = '1') then
           Q <= (others=>'0');
        elsif(CLK'event AND CLK = '1') then
           if(EN = '1') then
              Q <= D;
           end if;
        end if;
     end process;
end Behavioral;
