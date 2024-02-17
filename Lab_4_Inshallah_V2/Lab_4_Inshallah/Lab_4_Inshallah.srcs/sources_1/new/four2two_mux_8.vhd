library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity four2two_mux_8 is
Port (
    A, C, D : in std_logic_vector(31 downto 0);
    Selector : in std_logic_vector(1 downto 0);
    R : out std_logic_vector(31 downto 0)
 );
end four2two_mux_8;

architecture Behavioral of four2two_mux_8 is
begin
    process(Selector, A, C, D)
        begin 
            if (Selector = "00") then 
                R <= A;
            elsif (Selector = "01") then 
                R <= x"00000004";
            elsif (Selector = "10") then 
                R <= C;
            else 
                R <= D;
            end if;
     end process;
end Behavioral;
