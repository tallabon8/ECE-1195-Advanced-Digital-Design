library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter5bit is
    Port (
        countup : in std_logic; --passes 1 in each time, essentially it's like a +1
        clk, rst : in std_logic; --clock and reset
        count : out std_logic_vector(4 downto 0) --goes from 0 to 31, which ensures 32 iterations
    );
end counter5bit;

architecture Behavioral of counter5bit is
    signal counter : std_logic_vector(4 downto 0) := "00000";
begin
    process(clk, rst, countup)
    begin
        if rst = '1' then
            counter <= "00000"; --resets if reset is high 
        elsif rising_edge(clk) then
            if countup = '1' then --if 1 is input it checks on signal 
                if counter = "11111" then --this means it's done 32 repititions
                    counter <= "00000"; --resets back down to 0
                else
                    counter <= std_logic_vector(unsigned(counter) + 1); --adds 1 to signal, essentialy x=x+1
                end if;
            end if;
        end if;
    end process;

    count <= counter; --send intermediate signal to actual output
end Behavioral;
