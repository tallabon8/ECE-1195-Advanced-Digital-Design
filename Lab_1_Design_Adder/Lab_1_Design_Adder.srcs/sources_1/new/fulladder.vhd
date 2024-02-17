----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/18/2023 04:41:34 PM
-- Design Name: 
-- Module Name: fulladder - Behavioral
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

entity fulladder is
 Port ( 
    A, B, K: in std_logic;  
    Cout, S : out std_logic
    );
end fulladder;

architecture Behavioral of fulladder is

begin
    -- Logic for Sum (S) output
    S <= A xor B xor K;

    -- Logic for Carry-out (Cout) output
    Cout <= (A and B) or (K and (A xor B));
    
end Behavioral;
