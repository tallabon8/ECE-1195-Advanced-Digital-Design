----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/17/2023 04:17:34 PM
-- Design Name: 
-- Module Name: adder_subtractor - Behavioral
-- Project Name: Lab 1 Adder
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

entity AdderSubtractor is
    generic(
        WIDTH : integer := 32
    );
    port(
        A, B : in std_logic_vector(WIDTH-1 downto 0);
        S : out std_logic_vector(WIDTH-1 downto 0);
        K : in std_logic;  -- 0 for addition, 1 for subtraction
        Cout : out std_logic
    );
end AdderSubtractor;

architecture Behavioral of AdderSubtractor is
    signal B_muxed: std_logic_vector(WIDTH-1 downto 0);
    signal carry : std_logic_vector(WIDTH downto 0);  -- carry signal, Cout is the final output

begin

    -- 2-to-1 MUX using for-generate
    gen_mux : for i in 0 to WIDTH-1 generate
    begin
        B_muxed(i) <= B(i) when K = '0' else B(i) xor '1';
    end generate gen_mux;

    -- Initial carry input
    carry(0) <= K;

    -- Adder using for-generate
    gen_adder : for i in 0 to WIDTH-1 generate
    begin
        S(i) <= A(i) xor B_muxed(i) xor carry(i);
        carry(i+1) <= (A(i) and B_muxed(i)) or (B_muxed(i) and carry(i)) or (A(i) and carry(i));
    end generate gen_adder;

    Cout <= carry(WIDTH);  -- final carry out

end Behavioral;
