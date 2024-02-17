LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY pre_lab IS
   PORT( 
	  btn      	: IN	std_logic_vector (3 DOWNTO 0);
      led  		: out	std_logic_vector (3 DOWNTO 0)
   );

END pre_lab ;

ARCHITECTURE struct OF pre_lab IS
	signal led_3, led_1 : std_logic;
begin
	led(0) <= not(btn(0));
	led_1 <= btn(1) and not(btn(2));
	led_3 <= btn(3) and btn(2);
	led(2) <= led_1 or led_3;
	led(1) <= led_1;
	led(3) <= led_3;

END struct;