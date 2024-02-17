----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2023 04:12:53 PM
-- Design Name: 
-- Module Name: ALU_test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_test is
generic(
    n: positive :=32);
--  Port ( );
end ALU_test;

architecture Behavioral of ALU_test is

signal    A, B :  std_logic_vector(n-1 downto 0);
signal    SHAMT :  std_logic_vector(4 downto 0);
signal    ALUOp :  std_logic_vector(3 downto 0);
signal    R :  std_logic_vector(31 downto 0);
signal    zero, overflow :  std_logic;

   component ALU
    generic(
        n : positive := 32
    );
    port(
        A, B : in std_logic_vector(n-1 downto 0);
        SHAMT : in std_logic_vector(4 downto 0);
        ALUOp : in std_logic_vector(3 downto 0);
        R : out std_logic_vector(n-1 downto 0);
        zero, overflow : out std_logic
    );
   end component;
begin
    
    ALU8 : ALU 
    generic map(
        n=>n
        )
    port map(
        A=>A,
        B=>B, 
        SHAMT=>SHAMT, 
        ALUOp=>ALUOp, 
        R=>R, 
        zero=>zero, 
        overflow=>overflow 
    );
--    process
--        begin
--            --Test Signed Addition
--            ALUOp<="0100";--arithmatic, signed add
--            A<=x"FFFFFFF6"; --(-10)
--            B<=x"FFFFFFF8";--(-8)
--            SHAMT<="00000";
--            wait for 10 ns;
--            assert R=x"FFFFFFEE" report "Failed Signed Add" severity error;
--            assert zero='0' report "Failed Signed Add Zero" severity error;
--            assert overflow='0' report "Failed Signed Add Overflow" severity error;
            
--            --Test Unsigned Addition
--            ALUOp<="0101";--arithmatic, unsigned add
--            A<=x"00000008";--8
--            B<=x"00000002";--2
--            SHAMT<="00000";
--            wait for 10 ns;
--            assert R=x"0000000A" report "Failed Unsigned Add" severity error;
--            assert zero='0' report "Failed Unsigned Add Zero" severity error;
--            assert overflow='0' report "Failed Unsigned Add Overflow" severity error;
            
--            --Test Signed Subtraction 
--            ALUOp<="0110";--arithmatic, signed sub
--            A<=x"00000002";--2
--            B<=x"FFFFFFF8";--(-8)
--            SHAMT<="00000";
--            wait for 10 ns;
--            assert R=x"0000000A" report "Failed Signed Sub" severity error;
--            assert zero='0' report "Failed Signed Sub Zero" severity error;
--            assert overflow='0' report "Failed Signed Sub Overflow" severity error;
            
--            --Test Unsigned Subtraction
--            ALUOp<="0111";--arithmatic, unsigned sub
--            A<=x"00000008";--8
--            B<=x"00000008";--8
--            SHAMT<="00000";
--            wait for 10 ns;
--            assert R=x"00000000" report "Failed unsigned add" severity error;
--            assert zero='1' report "Failed Unsigned Sub Zero" severity error;
--            assert overflow='0' report "Failed Unsigned Sub Overflow" severity error;
            
--            --Test Bitwise AND
--            ALUOp<="0000";--and, logical
--            A<=x"00000001";
--            B<=X"00000010";
--            SHAMT<="00000";
--            wait for 10 ns;
--            assert R=x"00000000" report "Failed Bitwise AND" severity error;
            
--            --Test Bitwise NOR
--            ALUOp<="0011";--nor, logical
--            A<=x"00000000";
--            B<=x"00000000";
--            SHAMT<="00000";
--            wait for 10 ns;
--            assert R=x"FFFFFFFF" report "Failed Bitwise NOR" severity error;
            
--            --Test Bitwise OR
--            ALUOp<="0001";--or, logical
--            A<=x"10101010";
--            B<=x"01010101";
--            SHAMT<="00000";
--            wait for 10 ns;
--            assert R=x"11111111" report "Failed Bitwise OR" severity error;
            
--            --Test Bitwise XOR
--            ALUOp<="0010";--xor, logical
--            A<=x"11111111";
--            B<=x"11111111";
--            SHAMT<="00000";
--            wait for 10 ns;
--            assert R=x"00000000" report "Failed Bitwise XOR" severity error;
            
--            --Set on Less Than Signed
--            ALUOp<="1010";
--            A<=x"FFFFFFF6"; --(-10)
--            B<=x"FFFFFFF8";--(-8)
--            assert R = x"00000000" report "Failed Comp Signed" severity error;
            
--            --Set on Less than Unsigned
--            ALUOp<="1011";
--            A<=x"00000008";
--            B<=x"00000007";
--            assert R = x"00000000" report "Failed Comp Unsigned" severity error;
            
--            --Shift Left Logical
--            ALUOp<="1100";
--            A<=x"FEDCBA98";
--            SHAMT<="10011";
--            wait for 10 ns;
--            assert R = x"D4C00000" report "Test 20 R" severity error; 
            
--            --Shift Right Arithmetic
--            ALUOp<="1111";
--            A<=x"FEDCBA98";
--            SHAMT<="00001";
--            wait for 10 ns;
--            assert R = x"FF6E5D4C" report "Test 2 R" severity error;
          
--            --Shift Right Logical
--            ALUOp<="1110";
--            A<=x"FEDCBA98";
--            SHAMT<="01110";
--            wait for 10 ns;
--            assert R = x"0003FB72" report "Test 15 R" severity error; 
 
             
--        wait;
--    end process;
end Behavioral;
    