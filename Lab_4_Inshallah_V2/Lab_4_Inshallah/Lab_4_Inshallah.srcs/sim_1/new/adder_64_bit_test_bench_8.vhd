library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder_64_bit_test_bench_8 is
    generic (
        n : integer := 64
    );
end adder_64_bit_test_bench_8;

architecture Behavioral of adder_64_bit_test_bench_8 is
    signal A : std_logic_vector(n-1 downto 0);
    signal B : std_logic_vector(n-1 downto 0);
    signal S : std_logic_vector(n-1 downto 0);
        
    component adder_64_bit_8 is 
    port (
        A, B : in std_logic_vector(n-1 downto 0);
        S : out std_logic_vector(n-1 downto 0)
    );
    end component;
begin
    A64 : adder_64_bit_8 
    port map (
        A=>A,
        B=>B, 
        S=>S 
    );
    process 
        begin 
        --Test vector 1: A+B, and the result is less than or equal to 2^64-1(no carry out)
        A<=X"7FFFFFFFFFFFFFFF";
        B<=X"1000000000000000";
        wait for 10 ns;
        assert (S = X"8FFFFFFFFFFFFFFF") report "A+B within 64 bit range" severity ERROR;
        
        --Test vector 2: A+B, and the result is greater than 2^64-1(Carry Out).
        A<=X"FFFFFFFFFFFFFFFF";
        B<=X"0000000000000001";
        wait for 10 ns;
        assert (S=X"0000000000000000") report "A+B exceeds 64 bit range" severity ERROR;
        
        --Test 3: A-B is positive (Carry Out)
        A<=X"0000000000000003";
        B<=X"0000000000000001";
        wait for 10 ns;
        assert (S=X"0000000000000002") report "A-B positive" severity ERROR;
                
        --Test 4: A-B is zero (Carry Out)
        A<=X"0000000000000002";
        B<=X"0000000000000002";
        wait for 10 ns;
        assert (S=X"0000000000000000") report "A-B zero" severity ERROR;
        
        --Test 5: A-B is negative (No Carry Out) 
        A<=X"0000000000000001";
        B<=X"0000000000000002";
        wait for 10 ns;
        assert(S=X"FFFFFFFFFFFFFFFF") report "A-B negative" severity ERROR;
        
        -- Test vector 6: Random Addition A + B (64-bit)
        A <= X"3F56A7B2A9CDEF01";
        B <= X"0A45BCD1F2345678";
        wait for 10ns;
        assert (S = X"499C64849C024579") report "Random A + B addition test" severity ERROR;

        -- Test vector 7: Random Subtraction A - B (64-bit)
        A <= X"6B4509FA12345678";
        B <= X"1542BC8E90ABCDEF";
        wait for 10ns;
        assert (S = X"56024D6B81888889") report "Random A - B subtraction test" severity ERROR;     
        wait;
    end process;
end Behavioral;
