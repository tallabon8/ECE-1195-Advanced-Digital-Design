library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Data_Path_8 is
Port (
    CLK, RST : in std_logic;
    MemoryDataIn : in std_logic_vector(31 downto 0);
    MemoryAddress, MemoryDataOut : out std_logic_vector(31 downto 0);
    MemWrite : out std_logic
 );
end Data_Path_8;

architecture Behavioral of Data_Path_8 is

begin
 
 
 
end Behavioral;
