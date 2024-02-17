library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fivebit_2to1_mux_8 is
Port (
    A, B : in std_logic_vector(4 downto 0);
    Selector : in std_logic;
    R : out std_logic_vector(4 downto 0)
 );
end fivebit_2to1_mux_8;

architecture Behavioral of fivebit_2to1_mux_8 is
begin
    process(Selector, A, B)
        begin 
            if (Selector = '0') then
                R <= A;
             else 
                R <= B;
             end if;
    end process;
end Behavioral;
