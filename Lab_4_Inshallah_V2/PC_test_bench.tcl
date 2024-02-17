restart 
add_force CLK 0 
add_force RST 1
add_force PC_D = 00000000000000000000000000001000
run 10 ns

add_force CLK 1
add_force RST 0 
run 10 ns 

add_force CLK 0 
add_force RST 0 
run 10 ns

add_force CLK 1
run 10 ns

if {[get_value -radix unsigned PC_Q] == [get_value -radix unsigned PC_D]} {
    puts "Input D matches output Q"
} else {
    puts "Input D does not match output Q"
}