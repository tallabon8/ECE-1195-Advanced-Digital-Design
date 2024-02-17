library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity loading_mux is
Port (
    A, B : in std_logic_vector(31 downto 0);
    Hi, Lo : in std_logic_vector(31 downto 0);
    Selector : in std_logic_vector(2 downto 0);
    R : out std_logic_vector(31 downto 0)
 );
end loading_mux;

architecture Behavioral of loading_mux is
begin
   process(A, B, Selector)
        begin
            if (Selector = "000") then 
                R<=A;
            elsif (Selector = "001") then
                R<=B;
            elsif (Selector = "010") then --LH
                if (B(15)='0') then
                    R<="0000000000000000" & B(15 downto 0);
                elsif (B(15)='1') then
                    R<="1111111111111111" & B(15 downto 0);
                end if;
            elsif (Selector = "011") then --LUI 
                R<=B(31 downto 16) & "0000000000000000";
            elsif (Selector = "100") then
                R<=Hi;
            elsif (Selector = "101") then
                R<=Lo;
           end if;
        end process;
end Behavioral;
