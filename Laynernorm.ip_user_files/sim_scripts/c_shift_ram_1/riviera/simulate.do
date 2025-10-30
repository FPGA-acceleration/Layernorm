transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+c_shift_ram_1  -L xil_defaultlib -L xbip_utils_v3_0_14 -L c_reg_fd_v12_0_10 -L c_shift_ram_v12_0_18 -L secureip -O5 xil_defaultlib.c_shift_ram_1

do {c_shift_ram_1.udo}

run 1000ns

endsim

quit -force
