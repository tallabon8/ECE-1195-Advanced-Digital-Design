----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/09/2023 04:08:04 PM
-- Design Name: 
-- Module Name: register_tb - Behavioral
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

entity register_tb is
    generic(
        n : integer := 64
    );
end register_tb;

architecture Behavioral of register_tb is
    signal CLK : std_logic;
    signal EN : std_logic;
    signal RST : std_logic;
    signal D : std_logic_vector(n-1 downto 0);
    signal Q : std_logic_vector(n-1 downto 0);
    
   component flipflop is 
      generic (
        n : integer := 64
      );
      PORT( 
        CLK : IN     std_logic;
        D   : IN     std_logic_vector(n-1 downto 0);
        EN  : IN     std_logic;
        RST : IN     std_logic;
        Q   : OUT    std_logic_vector(n-1 downto 0)
   );
    end component;
begin
     FF: flipflop 
        port map(
           CLK=>CLK, 
           D=>D,
           EN=>EN, 
           RST=>RST,
           Q=>Q
       );
    CLK_GEN : process
        begin
            CLK<='0';
            wait for 5 ns;
            CLK <= '1';
            wait for 5 ns;
        end process CLK_GEN;
    TEST_PROCESS : process
    begin 
    -- Test 1: Set Q to '1'
        D <= (others => '1');
        EN <= '1';
        RST <= '0';  -- Ensure reset is deasserted
        wait for 10 ns;
        assert (Q = x"FFFFFFFFFFFFFFFF") report "Test 1 failed" severity error;

        -- Test 2: Set Q to '1' and then reset
        D <= (others => '1');
        EN <= '1';
        RST <= '1';  -- Assert reset
        wait for 10 ns;
        --RST <= '0';  -- Deassert reset
        --wait for 10 ns;
        assert (Q = x"0000000000000000") report "Test 2 failed" severity error;

        -- Test 3: Set reset to '1' and then to '0', and set Q to '1'
        D <= (others => '1');
        EN <= '1';
        RST <= '1';  -- Assert reset
        wait for 10 ns;
        RST <= '0';  -- Deassert reset
        wait for 10 ns;
        assert (Q = x"FFFFFFFFFFFFFFFF") report "Test 3 failed" severity error;
        wait;
    end process TEST_PROCESS;
end Behavioral;
