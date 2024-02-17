----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/31/2023 11:08:09 AM
-- Design Name: 
-- Module Name: shift_64_bit_8 - Behavioral
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

entity shift_64_bit_8 is
  generic(
        n : integer := 64
    );
  Port ( 
  CLK, LOAD, SHIFT, RST : in std_logic; --clock, shift, reset, and load(enable) bits
  D : in std_logic_vector(n-1 downto 0); --32 bit input multiplier vector
  Q : out std_logic_vector(n-1 downto 0) --32 bit output vector
  );end shift_64_bit_8;

architecture Behavioral of shift_64_bit_8 is
    signal Q_reg : std_logic_vector(n-1 downto 0);
begin
    SHFT : process(CLK,RST)
        begin 
        if(RST = '1') then --if rst then output is set to 0.......0
           Q_reg <= (others=>'0');
         elsif(CLK'event AND CLK = '1') then --if there is a change in the clock, and the value of the clock at that time is 1 
            if (LOAD = '1') then --if load is 1 and shift is 0, Q equals D 
                    Q_reg <= D;
             elsif (SHIFT = '1') then --if shift is 1 it takes priority over load
                 Q_reg <= std_logic_vector(shift_left(unsigned(Q_reg), 1)); --left shifts by 1 bit
                end if;
            end if;
        end process SHFT;
    Q<=Q_reg;
end Behavioral;
