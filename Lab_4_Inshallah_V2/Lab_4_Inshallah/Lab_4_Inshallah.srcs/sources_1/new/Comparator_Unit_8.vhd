library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Comparator_Unit_8 is
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
end Comparator_Unit_8;

architecture Behavioral of Comparator_Unit_8 is
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
