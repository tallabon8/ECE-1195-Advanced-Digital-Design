restart 
add_force CLK 0 
add_force RST 1 
add_force EN 1 
add_force ReadData2 00000000000000000000000000001000
run 10 ns

add_force CLK 1
add_force RST 0 
run 10 ns 

add_force CLK 0
run 10 ns 

add_force CLK 1
run 10 ns 

if {[get_value -radix unsigned B_Q] == [get_value -radix unsigned ReadData2]} {
    puts "ReadData1 is equal to WriteData"
} else {
    puts "ReadData1 is not equal to WriteData"
}