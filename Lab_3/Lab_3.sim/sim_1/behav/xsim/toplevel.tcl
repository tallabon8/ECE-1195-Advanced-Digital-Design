# restart the simulation
restart

#for {set i 0} {i < 2} incr i} {

set var1 0xfedcba98
set var2 0xF1234567

# Testing Shifter Unit
add_force clk -radix bin {0 0ns} {1 5000ps} -repeat_every 10000ps
add_force A -radix hex $var1
add_force B -radix hex $var2

add_force rst -radix bin 1
run 10 ns

add_force rst -radix bin 0
run 10 ns

set count 0

while {[get_value -radix bin done] != [expr {0x00000001}]} {
	run 10 ns
	incr count; #Count each time the value does not equal the correct result
}

#check if the result is correct
if {[get_value -radix unsigned R] == [expr {$var1 * $var2}]} {
	puts "Correct!"
} else {
	# set result [get_value -radix hex R]
	set result [expr {$var1 * $var2}]
	puts "Wrong! $result"
}

puts "$count"

set var1 [expr {$var1 + 1}]
set var2 [expr {$var2 + 5}]