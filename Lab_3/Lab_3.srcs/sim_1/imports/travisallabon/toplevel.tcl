# restart the simulation
restart

# Test parameters - First test
set var1_1 0xfedcba98
set var2_1 0xF1234567

# Testing Shifter Unit - First test
add_force clk -radix bin {0 0ns} {1 5000ps} -repeat_every 10000ps
add_force A -radix hex $var1_1
add_force B -radix hex $var2_1

add_force rst -radix bin 1
run 10 ns

add_force rst -radix bin 0
run 10 ns

set count_1 0

while {[get_value -radix bin done] != [expr {0x00000001}]} {
    run 10 ns
    incr count_1; # Count each time the value does not equal the correct result
}

# Check if the result is correct for the first test
if {[get_value -radix unsigned R] == [expr {$var1_1 * $var2_1}]} {
    puts "Test 1: Correct!"
} else {
    set result [expr {$var1_1 * $var2_1}]
    puts "Test 1: Wrong! $result"
}

puts "Test 1 Count: $count_1"

#Second test
set var1_2 0x12345678
set var2_2 0x87654321

# Testing Shifter Unit - Second test
add_force A -radix hex $var1_2
add_force B -radix hex $var2_2

add_force rst -radix bin 1
run 10 ns

add_force rst -radix bin 0
run 10 ns

set count_2 0

while {[get_value -radix bin done] != [expr {0x00000001}]} {
    run 10 ns
    incr count_2; # Count each time the value does not equal the correct result
}

# Check if the result is correct for the second test
if {[get_value -radix unsigned R] == [expr {$var1_2 * $var2_2}]} {
    puts "Test 2: Correct!"
} else {
    set result [expr {$var1_2 * $var2_2}]
    puts "Test 2: Wrong! $result"
}

puts "Test 2 Count: $count_2"
