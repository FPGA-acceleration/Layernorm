transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr -l xpm -l xil_defaultlib \
"/home/alhua/vivado/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"/home/alhua/vivado/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l xil_defaultlib \
"../../../bd/Layernorm/ip/Layernorm_process_mean_top_0_0/sim/Layernorm_process_mean_top_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_cal_var_top_0_0/sim/Layernorm_cal_var_top_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_accumulator_0_0/sim/Layernorm_accumulator_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_axis_broadcaster_top_0_0/sim/Layernorm_axis_broadcaster_top_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_rms_norm_top_0_0/sim/Layernorm_rms_norm_top_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_rms_sum_nofifo_0_0/sim/Layernorm_rms_sum_nofifo_0_0.v" \
"../../../bd/Layernorm/sim/Layernorm.v" \

vlog -work xil_defaultlib \
"glbl.v"

