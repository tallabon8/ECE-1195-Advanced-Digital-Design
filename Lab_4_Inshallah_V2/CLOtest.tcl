restart 
add_force RST_0 1
add_force {CLK_0} -radix bin {1 0ns} {0 25000ps} -repeat_every 50000ps
add_force MemData_0 00100000000000001111111111111100 
run 50 ns
add_force RST_0 0
run 200 ns

add_force MemData_0 01110000000111111111100000100001 
run 200 ns

