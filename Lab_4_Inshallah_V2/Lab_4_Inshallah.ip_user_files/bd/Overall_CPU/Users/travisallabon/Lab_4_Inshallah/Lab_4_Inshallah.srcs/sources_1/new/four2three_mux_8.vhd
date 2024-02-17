library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity four2three_mux_8 is
Port (
    A, B, D : in std_logic_vector(31 downto 0);
    C : in std_logic_vector(27 downto 0);
    PC31to28 : in std_logic_vector(3 downto 0);
    Selector : in std_logic_vector(1 downto 0);
    R : out std_logic_vector(31 downto 0)
 );
end four2three_mux_8;

architecture Behavioral of four2three_mux_8 is
begin
    process(Selector, A, B, C, D, PC31to28)
        begin
            if (Selector = "00") then 
                R <= A;
            elsif (Selector = "01") then 
                R <= B; 
            elsif (Selector = "10") then 
                R <= PC31to28 & C;
            elsif (Selector = "11") then 
                R <= D;
            end if;
    end process;
end Behavioral;
