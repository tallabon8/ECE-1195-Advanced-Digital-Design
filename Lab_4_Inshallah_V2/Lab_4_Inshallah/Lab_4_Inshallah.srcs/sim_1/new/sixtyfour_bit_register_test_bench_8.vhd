library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sixtyfour_bit_register_test_bench_8 is
    generic(
        n : integer := 64
    );
end sixtyfour_bit_register_test_bench_8;

architecture Behavioral of sixtyfour_bit_register_test_bench_8 is
    signal CLK : std_logic;
    signal EN : std_logic;
    signal RST : std_logic;
    signal D : std_logic_vector(n-1 downto 0);
    signal Q : std_logic_vector(n-1 downto 0);
    
   component flipflop_8 is 
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
     FF: flipflop_8 
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
