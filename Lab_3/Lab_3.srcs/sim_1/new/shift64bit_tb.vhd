----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/09/2023 07:12:18 PM
-- Design Name: 
-- Module Name: shift64bit_tb - Behavioral
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

entity shift64bit_tb is
    generic(
        n : integer := 64
    );
end shift64bit_tb;

architecture Behavioral of shift64bit_tb is
  signal CLK, LOAD, SHIFT, RST : std_logic;
  signal D : std_logic_vector(n-1 downto 0);
  signal Q : std_logic_vector(n-1 downto 0);
  
  component shift64bit is 
    generic(
        n : integer := 64
    );
    Port ( 
        CLK, LOAD, SHIFT, RST : in std_logic;
        D : in std_logic_vector(n-1 downto 0);
        Q : out std_logic_vector(n-1 downto 0)
    );
  end component;

begin
    Multiplicand : shift64bit
    port map(
        CLK=>CLK, 
        LOAD=>LOAD,
        SHIFT=>SHIFT, 
        RST=>RST, 
        D=>D, 
        Q=>Q
    );
    CLK_GEN : process
        begin
            CLK<='0';
            wait for 5 ns;
            CLK <= '1';
            wait for 5 ns;
        end process CLK_GEN;
    Multiplicand_TEST: process
        begin 
                --Test 1: testing load
                D<=x"0000000000000001";
                LOAD<='1';
                SHIFT<='0';
                wait for 10 ns;
                LOAD<='0';
                assert(Q<=x"0000000000000001") report "test 1 fail" severity error;
                
                --Test 2: shift left
                SHIFT<='1';
                wait for 10 ns;
                assert (Q<=x"0000000000000002") report "test 2 fail" severity error;
                
                --Test 3: reset the output vector
                RST<='1';
                wait for 10 ns;
                assert (Q<=x"0000000000000000") report "test 3 fail" severity error;
            wait;
        end process Multiplicand_TEST;
end Behavioral;
