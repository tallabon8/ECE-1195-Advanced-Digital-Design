restart 
add_force RST_0 1
add_force {CLK_0} -radix bin {1 0ns} {0 25000ps} -repeat_every 50000ps
add_force MemData_0 00111100000000011111111100000000
run 50 ns
add_force RST_0 0
run 250 ns