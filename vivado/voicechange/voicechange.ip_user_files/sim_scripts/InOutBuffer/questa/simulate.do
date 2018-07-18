onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib InOutBuffer_opt

do {wave.do}

view wave
view structure
view signals

do {InOutBuffer.udo}

run -all

quit -force
