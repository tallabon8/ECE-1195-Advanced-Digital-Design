restart 
add_force CLK 0 
add_force RST 1 
add_force EN 1 
add_force ALUResult 00000000000000000000000000001000
run 10 ns

add_force CLK 1
add_force RST 0 
run 10 ns 

add_force CLK 0
run 10 ns 

add_force CLK 1
run 10 ns 

if {[get_value -radix unsigned ALUOut] == [get_value -radix unsigned ALUResult]} {
    puts "ALUResult is equal to ALUOut"
} else {
    puts "ALUResult is not equal to ALUOut"
}