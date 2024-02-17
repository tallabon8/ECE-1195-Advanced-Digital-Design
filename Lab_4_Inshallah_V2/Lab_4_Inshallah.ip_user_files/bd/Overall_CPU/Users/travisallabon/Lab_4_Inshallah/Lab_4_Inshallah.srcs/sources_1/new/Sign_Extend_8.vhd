library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Sign_Extend_8 is
Port (
    DataInstructionIn : in std_logic_vector(15 downto 0);
    DataInstructionOut : out std_logic_vector(31 downto 0)
 );
end Sign_Extend_8;

architecture Behavioral of Sign_Extend_8 is
begin
    process(DataInstructionIn)
        begin 
            case DataInstructionIn(15) is
               when '0' => 
                    DataInstructionOut <= ("0000000000000000" & DataInstructionIn(15 downto 0));
               when '1' =>
                    DataInstructionOut <= ("1111111111111111" & DataInstructionIn(15 downto 0));
               when others =>
                    DataInstructionOut <= (others => '0');
            end case;
    end process;
end Behavioral;
