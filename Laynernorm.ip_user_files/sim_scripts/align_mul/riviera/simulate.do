transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+align_mul  -L xil_defaultlib -L xbip_utils_v3_0_14 -L c_reg_fd_v12_0_10 -L c_shift_ram_v12_0_18 -L secureip -O5 xil_defaultlib.align_mul

do {align_mul.udo}

run 1000ns

endsim

quit -force
