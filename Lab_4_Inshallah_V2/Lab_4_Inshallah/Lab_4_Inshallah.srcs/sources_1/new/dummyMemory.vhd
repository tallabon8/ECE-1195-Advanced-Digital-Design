library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity dummyMemory is
Port (
    MemRead : in std_logic_vector(31 downto 0);
    MemWrite : in std_logic;
    WriteData : in std_logic_vector(31 downto 0);
    Address : in std_logic_vector(31 downto 0);
    MemData : out std_logic_vector(31 downto 0)
 );
end dummyMemory;

architecture Behavioral of dummyMemory is

begin
    MemData<=x"00000008";

end Behavioral;
