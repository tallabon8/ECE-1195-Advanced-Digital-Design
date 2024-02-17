library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Shifter_Unit_Test_8 is
end Shifter_Unit_Test_8;

architecture Behavioral of Shifter_Unit_Test_8 is
    signal A : std_logic_vector(31 downto 0);
    signal ALUOp : std_logic_vector(1 downto 0);
    signal SHAMT : std_logic_vector(4 downto 0);
    signal R : std_logic_vector(31 downto 0);

component Shifter_Unit_8 is 
    generic(
        n : positive := 32    
    );
    port(
        A : in std_logic_vector(n-1 downto 0);
        SHAMT : in std_logic_vector(4 downto 0);
        ALUOp : in std_logic_vector(1 downto 0);
        R : out std_logic_vector(n-1 downto 0)
    );
end component;   
    begin
        UUT : Shifter_Unit_8
        generic map(
            n=>32
        )
        port map(
            A=>A, 
            SHAMT=>SHAMT, 
            ALUOp=>ALUOp, 
            R=>R
        );
    process 
        begin
            --Test 1, SRA
            A<=x"FEDCBA98";
            SHAMT<="00000";
            ALUOp<="11";
            wait for 10 ns; 
            assert R = x"FEDCBA98" report "Test 1 R" severity error;
            

            --Test 2, SRA
            A<=x"FEDCBA98";
            SHAMT<="00001";
            ALUOp<="11";
            wait for 10 ns; 
            assert R = x"FF6E5D4C" report "Test 2 R" severity error;
            

            --Test 3, SRA
            A<=x"FEDCBA98";
            SHAMT<="00010";
            ALUOp<="11";
            wait for 10 ns; 
            assert R = x"FFB72EA6" report "Test 3 R" severity error;
            

            --Test 4, SRA
            A<=x"FEDCBA98";
            SHAMT<="00011";
            ALUOp<="11";
            wait for 10 ns; 
            assert R = x"FFDB9753" report "Test 4 R" severity error;
            

            --Test 5, SRA
            A<=x"FEDCBA98";
            SHAMT<="00100";
            ALUOp<="11";
            wait for 10 ns; 
            assert R = x"FFEDCBA9" report "Test 5 R" severity error;
            
 
            --Test 6, SRA
            A<=x"FEDCBA98";
            SHAMT<="00101";
            ALUOp<="11";
            wait for 10 ns; 
            assert R = x"FFF6E5D4" report "Test 6 R" severity error;
            

            --Test 7, SRA
            A<=x"FEDCBA98";
            SHAMT<="00110";
            ALUOp<="11";
            wait for 10 ns; 
            assert R = x"FFFB72EA" report "Test 7 R" severity error;           
            

            --Test 8, SRA
            A<=x"FEDCBA98";
            SHAMT<="00111";
            ALUOp<="11";
            wait for 10 ns; 
            assert R = x"FFFDB975" report "Test 8 R" severity error;  
            
 
            --Test 9, SRL
            A<=x"FEDCBA98";
            SHAMT<="01000";
            ALUOp<="10";
            wait for 10 ns; 
            assert R = x"00FEDCBA" report "Test 9 R" severity error; 
            
            --Test 10, SRL
            A<=x"FEDCBA98";
            SHAMT<="01001";
            ALUOp<="10";
            wait for 10 ns; 
            assert R = x"007F6E5D" report "Test 10 R" severity error;
            
  
            --Test 11, SRL
            A<=x"FEDCBA98";
            SHAMT<="01010";
            ALUOp<="10";
            wait for 10 ns; 
            assert R = x"003FB72E" report "Test 11 R" severity error;
            

            --Test 12, SRL
            A<=x"FEDCBA98";
            SHAMT<="01011";
            ALUOp<="10";
            wait for 10 ns; 
            assert R = x"001FDB97" report "Test 12 R" severity error;  
            
            --Test 13, SRL
            A<=x"FEDCBA98";
            SHAMT<="01100";
            ALUOp<="10";
            wait for 10 ns; 
            assert R = x"000FEDCB" report "Test 13 R" severity error;
            
            --Test 14, SRL
            A<=x"FEDCBA98";
            SHAMT<="01101";
            ALUOp<="10";
            wait for 10 ns; 
            assert R = x"0007F6E5" report "Test 14 R" severity error;
            
            --Test 15, SRL
            A<=x"FEDCBA98";
            SHAMT<="01110";
            ALUOp<="10";
            wait for 10 ns; 
            assert R = x"0003FB72" report "Test 15 R" severity error; 
            
            --Test 16, SRL
            A<=x"FEDCBA98";
            SHAMT<="01111";
            ALUOp<="10";
            wait for 10 ns; 
            assert R = x"0001FDB9" report "Test 16 R" severity error;
            
            --Test 17, SRL
            A<=x"FEDCBA98";
            SHAMT<="10000";
            ALUOp<="10";
            wait for 10 ns; 
            assert R = x"0000FEDC" report "Test 17 R" severity error;
            
            --Test 18, SLL
            A<=x"FEDCBA98";
            SHAMT<="10001";
            ALUOp<="00";
            wait for 10 ns; 
            assert R = x"75300000" report "Test 18 R" severity error;
            
            --Test 19, SLL
            A<=x"FEDCBA98";
            SHAMT<="10010";
            ALUOp<="00";
            wait for 10 ns; 
            assert R = x"EA600000" report "Test 19 R" severity error;
            
            --Test 20, SLL
            A<=x"FEDCBA98";
            SHAMT<="10011";
            ALUOp<="00";
            wait for 10 ns; 
            assert R = x"D4C00000" report "Test 20 R" severity error; 
            
            --Test 21, SLL
            A<=x"FEDCBA98";
            SHAMT<="10100";
            ALUOp<="00";
            wait for 10 ns; 
            assert R = x"A9800000" report "Test 21 R" severity error;
            
            --Test 22, SLL
            A<=x"FEDCBA98";
            SHAMT<="10101";
            ALUOp<="00";
            wait for 10 ns; 
            assert R = x"53000000" report "Test 22 R" severity error;
            
            --Test 23, SLL
            A<=x"FEDCBA98";
            SHAMT<="10110";
            ALUOp<="00";
            wait for 10 ns; 
            assert R = x"A6000000" report "Test 23 R" severity error;
            
            --Test 24, SLL
            A<=x"FEDCBA98";
            SHAMT<="10111";
            ALUOp<="00";
            wait for 10 ns; 
            assert R = x"4C000000" report "Test 24 R" severity error;
            
            -- Test 25, SRA
            A <= x"01234567";  -- Set the highest order bit to '0' for a positive number
            SHAMT <= "00100";   
            ALUOp <= "11";      
            wait for 10 ns;
            assert R = x"00123456" report "Test 25 R" severity error;

            -- Test 26, SRA
            A <= x"01234567";  -- Set the highest order bit to '0' for a positive number
            SHAMT <= "01100";   
            ALUOp <= "11";      
            wait for 10 ns;
            assert R = x"00001234" report "Test 26 R" severity error;

            -- Test 27, SRL
            A <= x"01234567";  -- Set the highest order bit to '0' for a positive number
            SHAMT <= "01100";   
            ALUOp <= "10";      
            wait for 10 ns;
            assert R = x"00001234" report "Test 27 R" severity error;

            -- Test 28, SRL
            A <= x"01234567";  -- Set the highest order bit to '0' for a positive number
            SHAMT <= "00100";   
            ALUOp <= "10";      
            wait for 10 ns;
            assert R = x"00123456" report "Test 28 R" severity error;
            wait;
    end process;
end Behavioral;
