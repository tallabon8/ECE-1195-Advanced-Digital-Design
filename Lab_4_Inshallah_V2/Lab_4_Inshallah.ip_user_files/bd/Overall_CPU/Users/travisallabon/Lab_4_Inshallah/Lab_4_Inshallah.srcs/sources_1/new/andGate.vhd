library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity andGateorGate is
Port (
    A, B, C : in std_logic;
    R : out std_logic
 );
end andGateorGate;

architecture Behavioral of andGateorGate is
begin
    R <= (A and B) or C;
    
end Behavioral;
