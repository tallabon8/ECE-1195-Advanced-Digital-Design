library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity addSUB_testbench is
end addSUB_testbench;

architecture TB of addSUB_testbench is
    constant WIDTH : integer := 32;
    signal A : std_logic_vector(WIDTH-1 downto 0);
    signal B : std_logic_vector(WIDTH-1 downto 0);
    signal S : std_logic_vector(WIDTH-1 downto 0);
    signal K : std_logic;
    signal Cout : std_logic;

    component adder32bit is 
        generic (
            WIDTH : integer := 32
        );
        port (
            A, B : in std_logic_vector(WIDTH-1 downto 0);
            K : in std_logic;
            S : out std_logic_vector(WIDTH-1 downto 0);
            Cout : out std_logic
        );
    end component;
begin
    DUT : adder32bit
    generic map (
        WIDTH => WIDTH
    )
    port map (
        A => A,
        B => B,
        K => K,
        S => S,
        Cout => Cout
    );
    
    process
    begin 

    -- Test vector 1: A + B, and the result is less than or equal to +2^32-1 (no Carry out).
    A <= X"7FFFFFFF";
    B <= X"00000001";
    K <= '0';
    wait for 10ps;
    assert (S = X"80000000") report "A+B within 32-bit range" severity ERROR;
    assert (Cout = '0') report "A+B within 32-bit range no carry" severity ERROR;

    -- Test vector 2: A + B, and the result is greater than +2^32-1 (Carry out).
    A <= X"FFFFFFFF";
    B <= X"00000001";
    K <= '0';
    wait for 10ps;
    assert (S = X"00000000") report "A+B exceeds 32-bit range" severity ERROR;
    assert (Cout = '1') report "A+B exceeds 32-bit range with carry" severity ERROR;

    -- Test vector 3: A - B is positive (Carry out).
    A <= X"00000003";
    B <= X"00000001";
    K <= '1';
    wait for 10ps;
    assert (S = X"00000002") report "A-B positive" severity ERROR;
    assert (Cout = '1') report "A-B positive with carry" severity ERROR;

    -- Test vector 4: A - B is zero (Carry out).
    A <= X"00000002";
    B <= X"00000002";
    K <= '1';
    wait for 10ps;
    assert (S = X"00000000") report "A-B zero" severity ERROR;
    assert (Cout = '1') report "A-B zero with carry" severity ERROR;

    -- Test vector 5: A - B is negative (no Carry out).
    A <= X"00000001";
    B <= X"00000002";
    K <= '1';
    wait for 10ps;
    assert (S = X"FFFFFFFF") report "A-B negative" severity ERROR;
    assert (Cout = '0') report "A-B negative no carry" severity ERROR;

        wait;
    end process;

end TB;
