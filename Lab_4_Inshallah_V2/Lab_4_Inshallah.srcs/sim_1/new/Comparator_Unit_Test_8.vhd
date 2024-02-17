library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Comparator_Unit_Test_8 is
end Comparator_Unit_Test_8;

architecture Behavioral of Comparator_Unit_Test_8 is
signal   A_31  : std_logic;
signal   B_31  : std_logic;
signal   S_31  : std_logic;
signal   CO    : std_logic;
signal   ALUOp : std_logic_vector(1 downto 0);
signal   R     : std_logic_vector(31 downto 0);

component comparator_unit_8 is 

generic(
 n : positive := 32
);

port(
    A_31 : in std_logic;
    B_31 : in  std_logic;
    S_31 : in std_logic;
    CO : in std_logic;
    ALUOp : in std_logic_vector(1 downto 0);
    R : out std_logic_vector(n-1 downto 0)
);
end component;
begin
        UUT:comparator_unit_8
        generic map(
        n=>32
        )
        port map(
        A_31=>A_31,
        B_31=>B_31,
        S_31=>S_31,
        CO=>CO,
        ALUOp=>ALUOp,
        R=>R
        );

   process
        begin
            --Test 1
            ALUOp<="00";
            wait for 10ns;
            assert R=x"00000000" report "Test 1 fail" severity error;
            
            --Test 2
            ALUOp<="01";
            wait for 10ns;
            assert R=x"00000000" report "Test 2 fail" severity error;
            
            --Test 3
            ALUOp<="10";
            A_31<='0';
            B_31<='0';
            S_31<='0';
            wait for 10ns;
            assert R=x"00000000" report "Test 3 fail" severity error;
            
            --Test 4
            ALUOp<="10";
            A_31<='0';
            B_31<='0';
            S_31<='1';
            wait for 10ns;
            assert R=x"00000001" report "Test 4 fail" severity error;
            
            --Test 5
            ALUOp<="10";
            A_31<='1';
            B_31<='1';
            S_31<='0';
            wait for 10ns;
            assert R=x"00000000" report "Test 5 fail" severity error;
            
            --Test 6
            ALUOp<="10";
            A_31<='1';
            B_31<='1';
            S_31<='1';
            wait for 10ns;
            assert R=x"00000001" report "Test 6 fail" severity error;
            
            --Test 7
            ALUOp<="10";
            A_31<='1';
            B_31<='0';
            wait for 10ns;
            assert R=x"00000001" report "Test 7 fail" severity error;
            
            --Test 8
            ALUOp<="10";
            A_31<='0';
            B_31<='1';
            wait for 10ns;
            assert R=x"00000000" report "Test 8 fail" severity error;
            
            --Test 9
            ALUOp<="11";
            CO <= '1';
            wait for 10ns;
            assert R=x"00000000" report "Test 9 fail" severity error;
            
            
            --Test 10
            ALUOp<="11";
            CO <= '0';
            wait for 10ns;
            assert R=x"00000001" report "Test 10 fail" severity error;
           
        wait;
    end process;
end Behavioral;
