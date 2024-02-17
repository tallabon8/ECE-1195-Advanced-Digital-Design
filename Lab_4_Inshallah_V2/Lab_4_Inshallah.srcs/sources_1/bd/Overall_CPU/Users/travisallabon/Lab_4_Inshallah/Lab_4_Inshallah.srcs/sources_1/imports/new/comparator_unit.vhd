----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2023 08:16:02 AM
-- Design Name: 
-- Module Name: comparator_unit - Behavioral
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

entity comparator_unit is
generic (
    n : positive := 32
);
Port (
    A_31 : in std_logic;
    B_31 : in  std_logic;
    S_31 : in std_logic;
    CO : in std_logic;
    ALUOp : in std_logic_vector(1 downto 0);
    R : out std_logic_vector(n-1 downto 0)
 );
end comparator_unit;

architecture Behavioral of comparator_unit is
begin
    process (A_31,B_31,S_31, CO, ALUOp)
        begin
            case ALUOp is 
                when "10" =>
                    if (S_31='1' and A_31='0' and B_31='0') or (S_31='1' and A_31='1' and B_31='1') or (A_31='1' and B_31='0') then 
                        R<=x"00000001";
                    else 
                        R<=x"00000000";
                    end if;
                when "11" =>
                    if CO = '1' then
                        R<=x"00000000";
                    else 
                        R<=x"00000001";
                    end if;
               when "00" => 
                    R<=x"00000000";
               when "01" =>
                    R<=x"00000000";
               when others =>
                    R<=x"00000000";
           end case;
  --           R(31 downto 0) <= (others=>'0');
    end process;
end Behavioral;
