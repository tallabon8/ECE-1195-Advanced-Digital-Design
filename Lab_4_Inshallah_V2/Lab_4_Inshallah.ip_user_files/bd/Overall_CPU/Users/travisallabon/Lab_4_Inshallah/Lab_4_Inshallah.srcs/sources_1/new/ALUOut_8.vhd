library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALUOut_8 is
Port (
    CLK, EN, RST : in std_logic;
    ALUResult : in std_logic_vector(31 downto 0);
    ALUOut : out std_logic_vector(31 downto 0)
 );
end ALUOut_8;

architecture Behavioral of ALUOut_8 is
begin
    process(CLK, RST, EN, ALUResult)
        begin 
            if (RST = '1') then 
                ALUOut <= (others=> '0');
            elsif (CLK' event and CLK = '1') then 
                if (EN = '1') then 
                    ALUOut <= ALUResult;
                end if;
            end if;
        end process;
end Behavioral;
