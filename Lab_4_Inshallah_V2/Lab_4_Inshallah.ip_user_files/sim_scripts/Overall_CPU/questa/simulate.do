onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Overall_CPU_opt

do {wave.do}

view wave
view structure
view signals

do {Overall_CPU.udo}

run -all

quit -force
