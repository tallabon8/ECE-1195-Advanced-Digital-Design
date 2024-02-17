----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/18/2023 05:25:34 PM
-- Design Name: 
-- Module Name: adder32bit - Behavioral
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

entity adder32bit is
    generic (
        WIDTH : integer := 32
    );
    port(
        A, B : in std_logic_vector(WIDTH-1 downto 0);
        K : in std_logic;
        S : out std_logic_vector(WIDTH-1 downto 0);
        Cout : out std_logic
    );
end adder32bit;

architecture Behavioral of adder32bit is

    component fulladder
        port (
            A, B, K : in std_logic;
            Cout, S : out std_logic
        );
    end component;

    signal int_carry: std_logic_vector(WIDTH downto 0);
    signal BXORK : std_logic_vector(WIDTH-1 downto 0); -- XOR result of B with K for all bits

begin

    -- XORing each bit of B with K
    gen_xor: for i in 0 to WIDTH-1 generate
    begin
        BXORK(i) <= B(i) xor K;
    end generate gen_xor;

    int_carry(0) <= K; --first carry bit is K
    
    gen_adder: for i in 0 to WIDTH-1 generate
    begin
        fa: fulladder port map (
            A => A(i),
            B => BXORK(i),      -- Use BXORK instead of B
            K => int_carry(i),
            S => S(i),
            Cout => int_carry(i+1)
        );
    end generate gen_adder;

    Cout <= int_carry(WIDTH);

end Behavioral;
