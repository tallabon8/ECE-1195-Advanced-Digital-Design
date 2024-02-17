LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY flipflop IS
    generic(
        n : integer := 64
    );
   PORT( 
      CLK : IN     std_logic;  --clock 
      D   : IN     std_logic_vector(n-1 downto 0); --inpu t64 bit vector
      EN  : IN     std_logic; --enable/write bit
      RST : IN     std_logic; --reset bit
      Q   : OUT    std_logic_vector(n-1 downto 0)  --64 bit output vector
   );
END flipflop ;

--
ARCHITECTURE flipflop OF flipflop IS
    signal Q_reg : std_logic_vector(n-1 downto 0); --temp signal 
BEGIN
     CLKD : process(CLK, RST)
     begin
        if(RST = '1') then  --if reset is 1 then it sets the output vector to all zeros
           Q_reg <= (others=>'0');
        elsif(CLK'event AND CLK = '1') then --if there is a change in the clock value, and it equals 1, this in my opinion was better than just using rising_edge for timing purposes
           if(EN = '1') then  --if enable is high, then input is sent to output
              Q_reg <= D;
           end if;
        end if;
     end process CLKD;
     Q<=Q_reg; --intermediate signal is given to actual output
END flipflop;
