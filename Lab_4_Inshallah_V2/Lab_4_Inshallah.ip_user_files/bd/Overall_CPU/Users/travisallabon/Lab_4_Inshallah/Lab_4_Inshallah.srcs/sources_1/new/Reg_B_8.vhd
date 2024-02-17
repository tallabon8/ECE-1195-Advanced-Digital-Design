library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Reg_B_8 is
Port (
    ReadData2 : in std_logic_vector(31 downto 0); --takes in the 32 bit vector output from Register_file
    EN, RST, CLK : in std_logic;
    B_Q : out std_logic_vector(31 downto 0)
 );
end Reg_B_8;

architecture Behavioral of Reg_B_8 is
begin
    process(CLK, RST, ReadData2, EN)
        begin 
            if (RST='1') then 
                B_Q <= (others=>'0');
            elsif (CLK' event and CLK = '1') then
                if (EN = '1') then  
                    B_Q<=ReadData2;
                end if; 
            end if;
        end process;
end Behavioral;
