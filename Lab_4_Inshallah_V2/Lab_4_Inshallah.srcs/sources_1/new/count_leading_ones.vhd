library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity count_leading_ones is
Port (
    CLO_in : std_logic_vector(31 downto 0);
    CLO_out : out std_logic_vector(31 downto 0)
 );
end count_leading_ones;

architecture Behavioral of count_leading_ones is
begin
    process(CLO_in)
        variable count : unsigned(31 downto 0);
        begin 
            count := x"00000000";
            for i in 31 downto 0 loop 
                if (CLO_in(i)='0') then
                    exit;
                end if;
                count := count + 1;
             end loop;
             CLO_out <= std_logic_vector(count);
        end process;
end Behavioral;
