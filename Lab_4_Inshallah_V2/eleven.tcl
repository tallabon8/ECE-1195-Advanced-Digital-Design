restart 
add_force {/Overall_CPU_wrapper/Overall_CPU_i/U_1/U0/mw_U_0ram_table[0]} -radix hex {20070011}

add_force {/Overall_CPU_wrapper/Overall_CPU_i/U_1/U0/mw_U_0ram_table[1]} -radix hex {200BFFFD}

add_force {/Overall_CPU_wrapper/Overall_CPU_i/U_1/U0/mw_U_0ram_table[2]} -radix hex {00EB5824}

add_force {/Overall_CPU_wrapper/Overall_CPU_i/U_1/U0/mw_U_0ram_table[3]} -radix hex {ACEB000F}


#forcing a clock with 10 ns period
add_force CLK 1 {0 5ns} -repeat_every 10ns

#give a reset signal
add_force RST 0
run 2500ps
add_force RST 1
run 5 ns
add_force RST 0
