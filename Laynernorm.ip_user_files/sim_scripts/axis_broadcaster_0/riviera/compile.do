transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/axis_infrastructure_v1_1_1
vlib riviera/xil_defaultlib
vlib riviera/axis_broadcaster_v1_1_32

vmap axis_infrastructure_v1_1_1 riviera/axis_infrastructure_v1_1_1
vmap xil_defaultlib riviera/xil_defaultlib
vmap axis_broadcaster_v1_1_32 riviera/axis_broadcaster_v1_1_32

vlog -work axis_infrastructure_v1_1_1  -incr -v2k5 "+incdir+../../../ipstatic/hdl" -l axis_infrastructure_v1_1_1 -l xil_defaultlib -l axis_broadcaster_v1_1_32 \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic/hdl" -l axis_infrastructure_v1_1_1 -l xil_defaultlib -l axis_broadcaster_v1_1_32 \
"../../../../Laynernorm.gen/sources_1/ip/axis_broadcaster_0/hdl/tdata_axis_broadcaster_0.v" \
"../../../../Laynernorm.gen/sources_1/ip/axis_broadcaster_0/hdl/tuser_axis_broadcaster_0.v" \

vlog -work axis_broadcaster_v1_1_32  -incr -v2k5 "+incdir+../../../ipstatic/hdl" -l axis_infrastructure_v1_1_1 -l xil_defaultlib -l axis_broadcaster_v1_1_32 \
"../../../ipstatic/hdl/axis_broadcaster_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic/hdl" -l axis_infrastructure_v1_1_1 -l xil_defaultlib -l axis_broadcaster_v1_1_32 \
"../../../../Laynernorm.gen/sources_1/ip/axis_broadcaster_0/hdl/top_axis_broadcaster_0.v" \
"../../../../Laynernorm.gen/sources_1/ip/axis_broadcaster_0/sim/axis_broadcaster_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

