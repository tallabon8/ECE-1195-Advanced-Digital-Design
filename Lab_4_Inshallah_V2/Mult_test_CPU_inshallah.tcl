# restart the simulation
restart
add_wave {{/Overall_CPU_wrapper/Overall_CPU_i/U_1}} 
#forcing a clock with 10 ns period
add_force CLK 1 {0 5ns} -repeat_every 10ns

#Test 6 - Pass
add_force {/Overall_CPU_wrapper/Overall_CPU_i/U_1/U0/mw_U_0ram_table[0]} -radix hex {20000004} 
add_force {/Overall_CPU_wrapper/Overall_CPU_i/U_1/U0/mw_U_0ram_table[1]} -radix hex {20210004} 
add_force {/Overall_CPU_wrapper/Overall_CPU_i/U_1/U0/mw_U_0ram_table[2]} -radix hex {00008019} 
add_force {/Overall_CPU_wrapper/Overall_CPU_i/U_1/U0/mw_U_0ram_table[3]} -radix hex {00001010} 
add_force {/Overall_CPU_wrapper/Overall_CPU_i/U_1/U0/mw_U_0ram_table[4]} -radix hex {AE020020} 


add_force RST -radix bin 1
run 10 ns

add_force RST -radix bin 0
run 600 ns
