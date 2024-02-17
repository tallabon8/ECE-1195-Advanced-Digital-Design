----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/17/2023 08:35:30 PM
-- Design Name: 
-- Module Name: addSUB_testbench - Behavioral
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

    component adder_subtractor is 
        generic (
            WIDTH : integer := 32
        );
        port (
            A, B : in std_logic_vector(WIDTH-1 downto 0);
            S : out std_logic_vector(WIDTH-1 downto 0);
            K : in std_logic;
            Cout : out std_logic
        );
    end component;
begin
    DUT : adder_subtractor
    port map (
        A => A,
        B => B,
        S => S,
        K => K,
        Cout => Cout
    );
    
    process
    begin 
        -- Test vector 1
        A <= X"fffffffd";
        B <= X"00000001";
        K <= '0';
        wait for 10ps;
        assert (S = X"FFFFFFFE") report "A+B nC" severity ERROR;
        assert (Cout = '0') report "A+B nC" severity ERROR;

        wait for 10ps;

        -- Test vector 2
        A <= X"FFFFFFFE";
        B <= X"00000001";
        K <= '0';
        wait for 10ps;
        assert (S = X"FFFFFFFF") report "A+B C" severity ERROR;
        assert (Cout = '1') report "A+B C" severity ERROR;

        wait for 10ps;

        -- Test vector 3
        A <= X"00000008";
        B <= X"00000001";
        K <= '1';
        wait for 10ps;
        assert (S = X"00000007") report "A-B +" severity ERROR;
        assert (Cout = '1') report "A-B +" severity ERROR;

        wait for 10ps;

        -- Test vector 4
        A <= X"00000001";
        B <= X"00000001";
        K <= '1';
        wait for 10ps;
        assert (S = X"00000000") report "A-B 0" severity ERROR;
        assert (Cout = '1') report "A-B 0" severity ERROR;

        wait for 10ps;

        -- Test vector 5
        A <= X"00000001";
        B <= X"00000002";
        K <= '1';
        wait for 10ps;
        assert (Cout = '0') report "A-B negative" severity ERROR;

        wait for 10ps;

        -- Test vector 6 (Random Test)
        A <= X"00000004";
        B <= X"00000004";
        K <= '0';
        wait for 10ps; 
        assert (S = X"00000008") report "rand add" severity ERROR;

        wait for 10ps;

        -- Test vector 7 (Random Test)
        A <= X"00000008";
        B <= X"00000004";
        K <= '1';
        wait for 10ps;
        assert (S = X"00000004") report "rand sub" severity ERROR;

        wait for 10ps;

        wait;
    end process;

end TB;
