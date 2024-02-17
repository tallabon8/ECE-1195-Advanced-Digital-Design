library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Two2one_1bit_mux is
Port (
    A, B, Selector : in std_logic;
    R : out std_logic
 );
end Two2one_1bit_mux;

architecture Behavioral of Two2one_1bit_mux is
begin
    process(Selector, A, B)
        begin 
            if (Selector = '0') then 
                R <= A;
            else 
                R <= (not B);
            end if;
        end process;
end Behavioral;
