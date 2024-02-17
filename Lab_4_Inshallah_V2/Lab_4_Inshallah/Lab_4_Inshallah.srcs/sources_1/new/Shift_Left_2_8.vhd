library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Shift_Left_2_8 is
Port ( 
    EN : in std_logic;
    SignExtOut : in std_logic_vector(31 downto 0); --output from the sign extend 
    Shift_2_Out : out std_logic_vector(31 downto 0)
);
end Shift_Left_2_8;

architecture Behavioral of Shift_Left_2_8 is
begin
    process(EN, SignExtOut)
        begin
            case EN is 
            when '0' =>
                Shift_2_Out <= std_logic_vector(shift_left(unsigned(SignExtOut),2));
            when '1' => 
                Shift_2_Out <= std_logic_vector(shift_left(unsigned(SignExtOut),16));
            when others => 
                Shift_2_Out <= (others => '0');
            end case;      
        end process;
end Behavioral;
