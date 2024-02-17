library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Logic_Unit_8 is
generic(
    n : positive :=32);
Port (
  A : in std_logic_vector(n-1 downto 0);
  B: in std_logic_vector(n-1 downto 0);
  Op : in std_logic_vector(1 downto 0);
  R : out std_logic_vector(n-1 downto 0)
   );
end Logic_Unit_8;

architecture Behavioral of Logic_Unit_8 is
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
