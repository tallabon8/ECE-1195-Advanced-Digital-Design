library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder_64_bit_8 is
generic (
        n : integer := 64 --width
    );
Port ( 
   A, B : in std_logic_vector(n-1 downto 0); --32 bit input vectors
   S : out std_logic_vector(n-1 downto 0) --64 bit output vectors
);
end adder_64_bit_8;

architecture Behavioral of adder_64_bit_8 is
begin
    S <= std_logic_vector(unsigned(A)+unsigned(B)); --adds both 64 bit input vectors, and outputs it to the 64 bit output vector
end Behavioral;
