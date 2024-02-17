library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Memory_Data_Register_8 is
Port (
    CLK, RST, EN : in std_logic;
    MemData : in std_logic_vector(31 downto 0);
    MemRegOut : out std_logic_vector(31 downto 0)
 );
end Memory_Data_Register_8;

architecture Behavioral of Memory_Data_Register_8 is
begin
    process(CLK, RST, EN, MemData) 
        begin 
            if (RST = '1') then 
                MemRegOut <= (others => '0');
            elsif (CLK' event and CLK = '1') then 
                if (EN ='1') then 
                    MemRegOut<=MemData;
                end if;
            end if;
    end process;
end Behavioral;
