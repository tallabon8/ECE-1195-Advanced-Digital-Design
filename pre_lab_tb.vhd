LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity pre_lab_tb is  
end pre_lab_tb;

architecture TB of pre_lab_tb is

  signal leds, btns, exp_leds : std_logic_vector(3 DOWNTO 0);
  
  component pre_lab
    port (
      btn      	: IN	std_logic_vector (3 DOWNTO 0);
      led  		: out	std_logic_vector (3 DOWNTO 0)
    );
end component;
  
begin  -- TB

  UUT :  pre_lab
    port map (
      led    => leds,
      btn    => btns);
	  
	exp_leds(0) <= not(btns(0));
	exp_leds(1) <= btns(1) and not(btns(2));
	exp_leds(3) <= btns(3) and btns(2);
	exp_leds(2) <= exp_leds(1) or exp_leds(3);

  process
    variable temp : std_logic_vector(3 downto 0);
  begin

    for i in 0 to 15 loop
      temp := std_logic_vector(to_unsigned(i,4));
      btns <= temp;
	  wait for 40 ns;
      assert(leds = exp_leds) report "failed at i: " & integer'image(i);
      
    end loop;  -- i

    report "SIMLUATION FINISHED!";
    wait;
    
  end process;
  

end TB;