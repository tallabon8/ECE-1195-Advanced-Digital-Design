restart
add_force RST_0 1
add_force {CLK_0} -radix bin {1 0ns} {0 25000ps} -repeat_every 50000ps
#Test ADDI
add_force MemData_0 00100000000000000000001110000001
# store in reg 0, the immediate add of reg 0 and 1 
run 50 ns
add_force RST_0 0
run 150 ns


add_force MemData_0 00110100000000000000000000000011
run 250 ns

add_force MemData_0 001010 00001 000000111111111111111
run 250 ns