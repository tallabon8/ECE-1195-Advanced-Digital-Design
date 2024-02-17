library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplier_32_bit_tb is
end Multiplier_32_bit_tb;

architecture Behavioral of Multiplier_32_bit_tb is
    -- Constants for signal widths
    constant W64: integer := 64;
    constant W32: integer := 32;

    -- Signals
    signal A, B: std_logic_vector(W32-1 downto 0);
    signal CLK, RST, DONE: std_logic := '0';
    signal R: std_logic_vector(W64-1 downto 0);

    -- Instantiate the Multiplier_32_bit entity
    component Multiplier_32_bit
        generic (
            W64: integer := 64;
            W32: integer := 32
        );
        Port (
            A, B: in std_logic_vector(W32-1 downto 0);
            CLK, RST: in std_logic;
            R: out std_logic_vector(W64-1 downto 0);
            DONE: out std_logic
        );
    end component;
begin
    -- Instantiate the Multiplier_32_bit entity
    UUT: Multiplier_32_bit
        generic map (
            W64 => W64,
            W32 => W32
        )
        port map (
            A => A,
            B => B,
            CLK => CLK,
            RST => RST,
            R => R,
            DONE => DONE
        );

    -- Clock generation process
    process
    begin
        CLK <= '0';
        wait for 5 ns;
        CLK <= '1';
        wait for 5 ns;
    end process;
    -- Stimulus process
    process
    begin
        -- Initialize test inputs
        A <= "10101010101010101010101010101010";
        B <= "11001100110011001100110011001100";
        RST <= '1';
        wait for 10 ns;
        RST <= '0';

        -- Test 1: Multiplication of 1 with 0
        A <= "00000000000000000000000000000001";
        B <= "00000000000000000000000000000000";
        wait for 10 ns;
        assert R = "00000000000000000000000000000000"
            and DONE = '1'
            report "Test 1 failed" severity error;
        
        -- Test 2: Multiplication of 42 with 42
        A <= "00101010101010101010101010101010";
        B <= "00101010101010101010101010101010";
        wait for 10 ns;
        assert R = "01011011110011001011011110011000"
            and DONE = '1'
            report "Test 2 failed" severity error;

        -- Test 3: Multiplication of 255 with 1
        A <= "11111111";
        B <= "00000001";
        wait for 10 ns;
        assert R = "11111111"
            and DONE = '1'
            report "Test 3 failed" severity error;

        -- Test 4: Multiplication of 0 with 255
        A <= "00000000";
        B <= "11111111";
        wait for 10 ns;
        assert R = "00000000"
            and DONE = '1'
            report "Test 4 failed" severity error;

        wait;
    end process;

end Behavioral;
