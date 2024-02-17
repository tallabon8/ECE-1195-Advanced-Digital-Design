library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Reg_A_8 is
Port (
    ReadData1 : in std_logic_vector(31 downto 0); --takes in the 32 bit vector output from Register_file
    EN, RST, CLK : in std_logic;
    A_Q : out std_logic_vector(31 downto 0);
    A4to0 : out std_logic_vector(4 downto 0)
 );
end Reg_A_8;

architecture Behavioral of Reg_A_8 is
begin
    process(CLK, RST, EN, ReadData1)
        begin 
            if (RST='1') then 
                A_Q <= (others=>'0');
            elsif (CLK' event and CLK = '1') then
                if (EN = '1') then  
                    A_Q<=ReadData1;
                    A4to0<=ReadData1(4 downto 0);
                end if; 
            end if;
        end process;
end Behavioral;
