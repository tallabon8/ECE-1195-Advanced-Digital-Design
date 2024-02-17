library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Logical_TB is
end Logical_TB;

architecture Behavioral of Logical_TB is
  signal A, B, R: std_logic_vector(31 downto 0);
  signal Op: std_logic_vector(1 downto 0);

  component Logical
    generic (
      n: positive := 32
    );
    port (
      A: in std_logic_vector(n-1 downto 0);
      B: in std_logic_vector(n-1 downto 0);
      Op: in std_logic_vector(1 downto 0);
      R: out std_logic_vector(n-1 downto 0)
    );
  end component;

begin
  UUT: Logical
    generic map (
      n => 32  -- Set the width according to your needs
    )
    port map (
      A => A,
      B => B,
      Op => Op,
      R => R
    );

  process
  begin
    -- Test case 1: AND operation (Op = "00")
    A <= x"00000000";
    B <= x"00000000";
    Op <= "00";
    wait for 10 ns;
    assert R = x"00000000"
      report "Test case 1 failed" severity error;

    -- Test case 2: OR operation (Op = "01")
    A <= x"FFFFFFFF";
    B <= x"00000000";
    Op <= "01";
    wait for 10 ns;
    assert R = x"FFFFFFFF"
      report "Test case 2 failed" severity error;

    -- Test case 3: XOR operation (Op = "10")
    A <= x"FFFFFFFF";
    B <= x"FFFFFFFF";
    Op <= "10";
    wait for 10 ns;
    assert R = x"00000000"
      report "Test case 3 failed" severity error;

    -- Test case 4: NOR operation (Op = "11")
    A <= x"00000000";
    B <= x"00000000";
    Op <= "11";
    wait for 10 ns;
    assert R = x"FFFFFFFF"
      report "Test case 4 failed" severity error;

    wait;
  end process;
end Behavioral;
