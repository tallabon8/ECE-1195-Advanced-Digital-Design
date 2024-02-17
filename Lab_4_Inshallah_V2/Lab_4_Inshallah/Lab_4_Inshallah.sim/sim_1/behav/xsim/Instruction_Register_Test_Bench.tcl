restart 
add_force CLK 0 
add_force RST 1 
add_force IRWrite 1 
add_force MemData 00000000000000000000000000001000
run 10 ns

add_force CLK 1
add_force RST 0 
run 10 ns 

add_force CLK 0
run 10 ns 

add_force CLK 1
run 10 ns 

if {[get_value -radix unsigned Instruction] == [get_value -radix unsigned MemData]} {
    puts "MemData is equal to Instruction"
} else {
    puts "MemData is not equal to Instruction"
}