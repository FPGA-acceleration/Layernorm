transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib \
"../../../bd/Layernorm/ip/Layernorm_process_mean_top_0_0/sim/Layernorm_process_mean_top_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_cal_var_top_0_0/sim/Layernorm_cal_var_top_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_accumulator_0_0/sim/Layernorm_accumulator_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_axis_broadcaster_top_0_0/sim/Layernorm_axis_broadcaster_top_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_rms_norm_top_0_0/sim/Layernorm_rms_norm_top_0_0.v" \
"../../../bd/Layernorm/sim/Layernorm.v" \
"../../../bd/Layernorm/ip/Layernorm_rms_sum_nofifo_0_0/sim/Layernorm_rms_sum_nofifo_0_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

