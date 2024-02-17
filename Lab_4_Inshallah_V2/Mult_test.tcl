restart 
add_force RST_0 1
add_force {CLK_0} -radix bin {1 0ns} {0 25000ps} -repeat_every 50000ps
add_force MemData_0 00100000000000000000000000001000 
run 50 ns
add_force RST_0 0
run 200 ns

add_force MemData_0 00100000001000010000000000001000 
run 200 ns

add_force MemData_0 00000000000000010000000000011001
run 300 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
run 50 ns
