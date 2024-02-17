----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/25/2023 05:13:57 PM
-- Design Name: 
-- Module Name: Logical - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Logical is
generic(
    n : positive :=32);
  Port (
  A : in std_logic_vector(n-1 downto 0);
  B: in std_logic_vector(n-1 downto 0);
  Op : in std_logic_vector(1 downto 0);
  R : out std_logic_vector(n-1 downto 0)
   );
end Logical;

architecture Behavioral of Logical is

begin
    process(A, B, Op)
    begin 
        case Op is
            when "00" => --AND operation
                R <=A and B;
            when "01" => -- OR operatiom 
                R <= A or B;
            when "10" => -- XOR operation
                R <=A xor B;
            when "11" => --NOR operation
                R <= A nor B;
            when others =>
                R <= (others => '0');
        end case;
end process;

end Behavioral;
