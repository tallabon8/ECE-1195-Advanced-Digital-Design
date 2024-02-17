restart 
add_force CLK -radix hex {0 0ns}{1 5ns} -repeat_every 10ns

add_force RST 1
run 10 ns 
add_force RST 0

for {set i 0}{$i < 32}{incr i}{
	add_force WriteRegister -radix unsigned {expr $i}
	add_force WriteData -radix unsigned {expr $i*8}
	add_force RegWrite 1
	run 10 ns
}

for {set i 0}{$i < 32}{incr i}{
	add_force ReadRegister1 -radix unsigned [expr $1]
	add_force ReadRegister2 -radix unsigned [expr 31 - $i]
	run 10 ns
	if {[get_value -radix unsigned ReadData2]==[expr $i*8]}{
		puts "Correct value output 1!=$i"
	}
	if {[get_value -radix unsigned ReadData2]==[expr (31 - $i)*8]}{
	puts "Correct value outut 2!=$i"
	}
}