library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity register_file_8 is
Port ( 
    CLK, RST, RegWrite : in std_logic;
    ReadRegister1, ReadRegister2, WriteRegister : in std_logic_vector(4 downto 0);
    WriteData : in std_logic_vector(31 downto 0);
    ReadData1, ReadData2 : out std_logic_vector(31 downto 0)
);
end register_file_8;

architecture Behavioral of register_file_8 is
    type RArray is array (0 to 31) of std_logic_vector(31 downto 0);
    signal regarray : RArray;

begin
    ReadData1 <= regarray(to_integer(unsigned(ReadRegister1)));
    ReadData2 <= regarray(to_integer(unsigned(ReadRegister2)));

    process(CLK, RST, RegWrite, ReadRegister1, ReadRegister2, WriteRegister, WriteData)
        begin
            if (RST='1') then 
                for i in 0 to 31 loop 
                    regarray(i)<=(others=>'0');
                end loop;
            elsif (CLK' event and CLK='1') then 
                if (RegWrite='1') then --sets value into index of regarray
                    regarray(to_integer(unsigned(WriteRegister)))<=WriteData;
                end if;
            end if;
            
    end process;
end Behavioral;
