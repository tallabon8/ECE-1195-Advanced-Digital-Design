library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity slicer is
generic(
    n : integer := 64 --width 
);
Port (
    R : in std_logic_vector(n-1 downto 0); --64 bti input vector
    Upper, Lower : out std_logic_vector(n-1 downto 0) --2 32 bit output vectors
 );
end slicer;

architecture Behavioral of slicer is
begin
    Upper <= R(n-1 downto 32); --takes the upper 32 bits
    Lower <= R(31 downto 0); --takes the lower 32 bits
end Behavioral;
