library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PC_8 is
Port (
    EN, RST, CLK : in std_logic;
    PC_D : in std_logic_vector(31 downto 0); --represents address of instruction in memory 
    PC31to28 : out std_logic_vector(3 downto 0);
    PC_Q: out std_logic_vector(31 downto 0) 
 );
end PC_8;

architecture Behavioral of PC_8 is
begin
    process(CLK, RST, EN, PC_D)
        begin 
            if (RST='1') then 
                PC_Q <= (others=>'0');
            elsif (CLK' event and CLK = '1') then
                if (EN = '1') then  
                    PC_Q<=PC_D; --represents memory address getting shifted by 1 byte for each instruction
                    PC31to28 <= PC_D(31 downto 28);
                end if; 
            end if;
        end process;
end Behavioral;
