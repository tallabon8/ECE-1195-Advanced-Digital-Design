----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/06/2023 08:57:02 PM
-- Design Name: 
-- Module Name: adder64bit_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder64bit_tb is
    generic (
        n : integer := 64
    );
end adder64bit_tb;

architecture TB of adder64bit_tb is
    signal A : std_logic_vector(n-1 downto 0);
    signal B : std_logic_vector(n-1 downto 0);
    signal S : std_logic_vector(n-1 downto 0);
    signal K : std_logic;
    signal Cout : std_logic;
    
    component adder64bit is 
    
    port (
        A, B : in std_logic_vector(n-1 downto 0);
        K : in std_logic;
        S : out std_logic_vector(n-1 downto 0);
        Cout : out std_logic
    );
    end component;
begin
    A64 : adder64bit 
    port map (
        A=>A,
        B=>B, 
        K=>K, 
        S=>S, 
        Cout=>Cout
    );
    process 
        begin 
        --Test vector 1: A+B, and the result is less than or equal to 2^64-1(no carry out)
        A<=X"7FFFFFFFFFFFFFFF";
        B<=X"1000000000000000";
        K<='0';
        wait for 10 ns;
        assert (S = X"8FFFFFFFFFFFFFFF") report "A+B within 64 bit range" severity ERROR;
        assert (Cout = '0') report "A+B within 64 bit range, no carry" severity ERROR;
        
        --Test vector 2: A+B, and the result is greater than 2^64-1(Carry Out).
        A<=X"FFFFFFFFFFFFFFFF";
        B<=X"0000000000000001";
        K<='0';
        wait for 10 ns;
        assert (S=X"0000000000000000") report "A+B exceeds 64 bit range" severity ERROR;
        assert (Cout = '1') report "A+B exceeeds 64 bit range with carry" severity ERROR;
        
        --Test 3: A-B is positive (Carry Out)
        A<=X"0000000000000003";
        B<=X"0000000000000001";
        K<='1';
        wait for 10 ns;
        assert (S=X"0000000000000002") report "A-B positive" severity ERROR;
        assert (Cout = '1') report "A-B positive with carry" severity ERROR;
        
        --Test 4: A-B is zero (Carry Out)
        A<=X"0000000000000002";
        B<=X"0000000000000002";
        wait for 10 ns;
        assert (S=X"0000000000000000") report "A-B zero" severity ERROR;
        assert (Cout = '1') report "A-B zero with carry" severity ERROR;
        
        --Test 5: A-B is negative (No Carry Out) 
        A<=X"0000000000000001";
        B<=X"0000000000000002";
        wait for 10 ns;
        assert(S=X"FFFFFFFFFFFFFFFF") report "A-B negative" severity ERROR;
        assert (Cout = '0') report "A-B negative, no carry" severity ERROR;
        
        -- Test vector 6: Random Addition A + B (64-bit)
        A <= X"3F56A7B2A9CDEF01";
        B <= X"0A45BCD1F2345678";
        K <= '0'; -- Addition
        wait for 10ns;
        assert (S = X"499C64849C024579") report "Random A + B addition test" severity ERROR;
        assert (Cout = '0') report "Random A + B addition test no carry" severity ERROR;

        -- Test vector 7: Random Subtraction A - B (64-bit)
        A <= X"6B4509FA12345678";
        B <= X"1542BC8E90ABCDEF";
        K <= '1'; -- Subtraction
        wait for 10ns;
        assert (S = X"56024D6B81888889") report "Random A - B subtraction test" severity ERROR;
        assert (Cout = '1') report "Random A - B subtraction test with carry" severity ERROR;
     
        wait;
    end process;
end TB;
