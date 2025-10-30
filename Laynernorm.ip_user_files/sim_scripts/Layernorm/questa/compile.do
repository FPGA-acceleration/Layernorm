vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu  -sv \
"/home/alhua/vivado/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/home/alhua/vivado/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../bd/Layernorm/ip/Layernorm_process_mean_top_0_0/sim/Layernorm_process_mean_top_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_cal_var_top_0_0/sim/Layernorm_cal_var_top_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_accumulator_0_0/sim/Layernorm_accumulator_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_axis_broadcaster_top_0_0/sim/Layernorm_axis_broadcaster_top_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_rms_norm_top_0_0/sim/Layernorm_rms_norm_top_0_0.v" \
"../../../bd/Layernorm/ip/Layernorm_rms_sum_nofifo_0_0/sim/Layernorm_rms_sum_nofifo_0_0.v" \
"../../../bd/Layernorm/sim/Layernorm.v" \

vlog -work xil_defaultlib \
"glbl.v"

