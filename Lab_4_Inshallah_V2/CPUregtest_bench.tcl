restart 
add_force CLK 0
add_force RST 1

add_force RegWrite 1

add_force WriteData 00000000000000000000000000000001

add_force WriteRegister 00001

add_force ReadRegister1 00001
add_force ReadRegister2 00000

run 10 ns
add_force CLK 1

add_force RST 0

run 10 ns 
# Check if ReadData1 is equal to WriteData
if {[get_value -radix unsigned ReadData1] == [get_value -radix unsigned WriteData]} {
    puts "ReadData1 is equal to WriteData"
} else {
    puts "ReadData1 is not equal to WriteData"
}

