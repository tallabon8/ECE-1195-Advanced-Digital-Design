library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity shift_32_bit_test_bench_8 is
    generic(
        n : integer := 32
    );
end shift_32_bit_test_bench_8;

architecture Behavioral of shift_32_bit_test_bench_8 is
  signal CLK, LOAD, SHIFT, RST : std_logic;
  signal D : std_logic_vector(n-1 downto 0);
  signal Q : std_logic_vector(n-1 downto 0);
  
    component shift_32_bit_8 is 
    generic(
        n : integer := 32
    );
    Port ( 
        CLK, LOAD, SHIFT, RST : in std_logic;
        D : in std_logic_vector(n-1 downto 0);
        Q : out std_logic_vector(n-1 downto 0)
    );
  end component;
begin
    Multiplier : shift_32_bit_8
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
                D<=x"00000002";
                LOAD<='1';
                SHIFT<='0';
                wait for 10 ns;
                LOAD<='0';
                assert(Q<=x"00000002") report "test 1 fail" severity error;
                
                --Test 2: shift left
                SHIFT<='1';
                wait for 10 ns;
                assert (Q<=x"00000001") report "test 2 fail" severity error;
                
                --Test 3: reset the output vector
                RST<='1';
                wait for 10 ns;
                assert (Q<=x"00000000") report "test 3 fail" severity error;
            wait;
        end process Multiplicand_TEST;
end Behavioral;
