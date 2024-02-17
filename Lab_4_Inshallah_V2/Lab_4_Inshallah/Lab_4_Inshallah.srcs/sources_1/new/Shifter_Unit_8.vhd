library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Shifter_Unit_8 is
generic (
    n : positive := 32
);
Port ( 
    A : in std_logic_vector(n-1 downto 0);
    SHAMT : in std_logic_vector(4 downto 0);
    ALUOp : in std_logic_vector(1 downto 0);
    R : out std_logic_vector(n-1 downto 0)
);
end Shifter_Unit_8;

architecture Behavioral of Shifter_Unit_8 is
    signal L0, L1, L2, L3, L4 : std_logic_vector(n-1 downto 0); --for left shifts
    signal fill, R0, R1, R2, R3, R4 : std_logic_vector(n-1 downto 0);
begin
    L0 <= A(30 downto 0) & '0' when (SHAMT(0)='1') 
        else A;
    L1 <= L0(29 downto 0) & "00" when (SHAMT(1)='1') else L0; 
    L2 <= L1(27 downto 0) & "0000" when (SHAMT(2)='1') else L1;
    L3 <= L2(23 downto 0) & "00000000" when (SHAMT(3)='1') else L2;
    L4 <= L3(15 downto 0) & "0000000000000000" when (SHAMT(4)='1') else L3;
    
    fill <= (others => ALUOp(0) and A(31));
    
    R0 <= fill(0) & A(n-1 downto 1) when SHAMT(0)='1' else A;
    R1 <= fill(1 downto 0) & R0(n-1 downto 2) when SHAMT(1)='1' else R0;
    R2 <= fill(3 downto 0) & R1(n-1 downto 4) when SHAMT(2)='1' else R1;
    R3 <= fill(7 downto 0) & R2(n-1 downto 8) when SHAMT(3)='1' else R2;
    R4 <= fill(15 downto 0) & R3(n-1 downto 16) when SHAMT(4)='1' else R3;
    
    R <= L4 when ALUOp(1)='0' else R4; --essentialy its a 2:1 mux, if 0 we shift left, if 1 we shift right
end Behavioral;
