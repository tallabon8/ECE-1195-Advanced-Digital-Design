onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+Overall_CPU -L xlslice_v1_0_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Overall_CPU xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Overall_CPU.udo}

run -all

endsim

quit -force
