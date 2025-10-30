// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Oct 30 19:38:42 2025
// Host        : Hua running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/alhua/VivadoProject/Laynernorm/Laynernorm.gen/sources_1/bd/Layernorm/ip/Layernorm_process_mean_top_0_0/Layernorm_process_mean_top_0_0_sim_netlist.v
// Design      : Layernorm_process_mean_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Layernorm_process_mean_top_0_0,process_mean_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "process_mean_top,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Layernorm_process_mean_top_0_0
   (aclk,
    arstn,
    S_AXIS_TDATA,
    S_AXIS_TREADY,
    S_AXIS_TVALID,
    M_AXIS_TDATA,
    M_AXIS_TVALID,
    M_AXIS_TREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, INSERT_VIP 0" *) input aclk;
  input arstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 18, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [143:0]S_AXIS_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 18, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [143:0]M_AXIS_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_TREADY;

  wire [143:0]M_AXIS_TDATA;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [143:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire aclk;
  wire arstn;

  Layernorm_process_mean_top_0_0_process_mean_top inst
       (.M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .aclk(aclk),
        .arstn(arstn));
endmodule

(* CHECK_LICENSE_TYPE = "align_mul,c_shift_ram_v12_0_18,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "align_mul" *) 
(* X_CORE_INFO = "c_shift_ram_v12_0_18,Vivado 2024.2" *) 
module Layernorm_process_mean_top_0_0_align_mul
   (D,
    CLK,
    CE,
    Q);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* X_INTERFACE_MODE = "slave d_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [127:0]D;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* X_INTERFACE_MODE = "slave ce_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* X_INTERFACE_MODE = "master q_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [127:0]Q;


endmodule

(* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bf_mul" *) 
(* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
module Layernorm_process_mean_top_0_0_bf_mul
   (aclk,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tready,
    s_axis_b_tdata,
    m_axis_result_tvalid,
    m_axis_result_tready,
    m_axis_result_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TREADY" *) output s_axis_a_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [15:0]s_axis_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_b_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TREADY" *) output s_axis_b_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) input [15:0]s_axis_b_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TREADY" *) input m_axis_result_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) output [15:0]m_axis_result_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bf_mul" *) 
(* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
module Layernorm_process_mean_top_0_0_bf_mul_HD1
   (aclk,
    aresetn,
    m_axis_result_tready,
    m_axis_result_tvalid,
    s_axis_a_tready,
    s_axis_a_tvalid,
    s_axis_b_tready,
    s_axis_b_tvalid,
    m_axis_result_tdata,
    s_axis_a_tdata,
    s_axis_b_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TREADY" *) input m_axis_result_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TREADY" *) output s_axis_a_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TREADY" *) output s_axis_b_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_b_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) output [15:0]m_axis_result_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [15:0]s_axis_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) input [15:0]s_axis_b_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "bf_sub,floating_point_v7_1_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bf_sub" *) 
(* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
module Layernorm_process_mean_top_0_0_bf_sub
   (aclk,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tready,
    s_axis_b_tdata,
    m_axis_result_tvalid,
    m_axis_result_tready,
    m_axis_result_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TREADY" *) output s_axis_a_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [15:0]s_axis_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_b_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TREADY" *) output s_axis_b_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) input [15:0]s_axis_b_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TREADY" *) input m_axis_result_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) output [15:0]m_axis_result_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "bf_sub,floating_point_v7_1_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bf_sub" *) 
(* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
module Layernorm_process_mean_top_0_0_bf_sub_HD2
   (aclk,
    aresetn,
    m_axis_result_tready,
    m_axis_result_tvalid,
    s_axis_a_tready,
    s_axis_a_tvalid,
    s_axis_b_tready,
    s_axis_b_tvalid,
    m_axis_result_tdata,
    s_axis_a_tdata,
    s_axis_b_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TREADY" *) input m_axis_result_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TREADY" *) output s_axis_a_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TREADY" *) output s_axis_b_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_b_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) output [15:0]m_axis_result_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [15:0]s_axis_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) input [15:0]s_axis_b_tdata;


endmodule

(* ORIG_REF_NAME = "mean_fifo" *) 
module Layernorm_process_mean_top_0_0_mean_fifo
   (Q,
    \m_axis_tvalid_reg[8]_0 ,
    S_AXIS_TREADY,
    S_AXIS_TDATA,
    aclk,
    arstn,
    S_AXIS_TVALID,
    s_axis_a_tready,
    S_AXIS_TREADY_0);
  output [127:0]Q;
  output [0:0]\m_axis_tvalid_reg[8]_0 ;
  output S_AXIS_TREADY;
  input [127:0]S_AXIS_TDATA;
  input aclk;
  input arstn;
  input S_AXIS_TVALID;
  input s_axis_a_tready;
  input S_AXIS_TREADY_0;

  wire [127:0]Q;
  wire [127:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TREADY_0;
  wire S_AXIS_TVALID;
  wire aclk;
  wire arstn;
  wire [7:0]m_axis_tvalid;
  wire m_axis_tvalid1;
  wire \m_axis_tvalid[8]_i_1_n_0 ;
  wire [0:0]\m_axis_tvalid_reg[8]_0 ;
  wire s_axis_a_tready;
  wire shift_ram_u_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    S_AXIS_TREADY_INST_0
       (.I0(S_AXIS_TREADY_0),
        .I1(\m_axis_tvalid_reg[8]_0 ),
        .I2(s_axis_a_tready),
        .O(S_AXIS_TREADY));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \m_axis_tvalid[0]_i_1 
       (.I0(\m_axis_tvalid_reg[8]_0 ),
        .I1(s_axis_a_tready),
        .I2(S_AXIS_TVALID),
        .O(m_axis_tvalid1));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tvalid[8]_i_1 
       (.I0(arstn),
        .O(\m_axis_tvalid[8]_i_1_n_0 ));
  FDCE \m_axis_tvalid_reg[0] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid[8]_i_1_n_0 ),
        .D(m_axis_tvalid1),
        .Q(m_axis_tvalid[0]));
  FDCE \m_axis_tvalid_reg[1] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid[8]_i_1_n_0 ),
        .D(m_axis_tvalid[0]),
        .Q(m_axis_tvalid[1]));
  FDCE \m_axis_tvalid_reg[2] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid[8]_i_1_n_0 ),
        .D(m_axis_tvalid[1]),
        .Q(m_axis_tvalid[2]));
  FDCE \m_axis_tvalid_reg[3] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid[8]_i_1_n_0 ),
        .D(m_axis_tvalid[2]),
        .Q(m_axis_tvalid[3]));
  FDCE \m_axis_tvalid_reg[4] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid[8]_i_1_n_0 ),
        .D(m_axis_tvalid[3]),
        .Q(m_axis_tvalid[4]));
  FDCE \m_axis_tvalid_reg[5] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid[8]_i_1_n_0 ),
        .D(m_axis_tvalid[4]),
        .Q(m_axis_tvalid[5]));
  FDCE \m_axis_tvalid_reg[6] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid[8]_i_1_n_0 ),
        .D(m_axis_tvalid[5]),
        .Q(m_axis_tvalid[6]));
  FDCE \m_axis_tvalid_reg[7] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid[8]_i_1_n_0 ),
        .D(m_axis_tvalid[6]),
        .Q(m_axis_tvalid[7]));
  FDCE \m_axis_tvalid_reg[8] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid[8]_i_1_n_0 ),
        .D(m_axis_tvalid[7]),
        .Q(\m_axis_tvalid_reg[8]_0 ));
  (* CHECK_LICENSE_TYPE = "align_mul,c_shift_ram_v12_0_18,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "c_shift_ram_v12_0_18,Vivado 2024.2" *) 
  Layernorm_process_mean_top_0_0_align_mul shift_ram_u
       (.CE(shift_ram_u_i_1_n_0),
        .CLK(aclk),
        .D(S_AXIS_TDATA),
        .Q(Q));
  LUT3 #(
    .INIT(8'hF2)) 
    shift_ram_u_i_1
       (.I0(S_AXIS_TVALID),
        .I1(\m_axis_tvalid_reg[8]_0 ),
        .I2(s_axis_a_tready),
        .O(shift_ram_u_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "process_mean_top" *) 
module Layernorm_process_mean_top_0_0_process_mean_top
   (aclk,
    arstn,
    S_AXIS_TDATA,
    S_AXIS_TREADY,
    S_AXIS_TVALID,
    M_AXIS_TDATA,
    M_AXIS_TVALID,
    M_AXIS_TREADY);
  input aclk;
  input arstn;
  input [143:0]S_AXIS_TDATA;
  output S_AXIS_TREADY;
  input S_AXIS_TVALID;
  output [143:0]M_AXIS_TDATA;
  output M_AXIS_TVALID;
  input M_AXIS_TREADY;

  wire [143:0]M_AXIS_TDATA;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [143:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire aclk;
  wire arstn;
  wire [127:0]fifo_out;
  wire fifo_ready;
  wire fifo_valid;
  wire [15:0]mean_data;
  wire mean_ready;
  wire mean_valid;
  wire meansquare_valid;
  wire sum_ready;
  wire zero_mean_valid;
  wire NLW_cal_mean_s_axis_b_tready_UNCONNECTED;
  wire NLW_cal_meansquare_s_axis_b_tready_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    M_AXIS_TVALID_INST_0
       (.I0(zero_mean_valid),
        .I1(meansquare_valid),
        .O(M_AXIS_TVALID));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_process_mean_top_0_0_bf_mul cal_mean
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(mean_data),
        .m_axis_result_tready(mean_ready),
        .m_axis_result_tvalid(mean_valid),
        .s_axis_a_tdata(S_AXIS_TDATA[15:0]),
        .s_axis_a_tready(sum_ready),
        .s_axis_a_tvalid(S_AXIS_TVALID),
        .s_axis_b_tdata({1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1}),
        .s_axis_b_tready(NLW_cal_mean_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tvalid(1'b1));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_process_mean_top_0_0_bf_mul_HD1 cal_meansquare
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[15:0]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(meansquare_valid),
        .s_axis_a_tdata(mean_data),
        .s_axis_a_tready(mean_ready),
        .s_axis_a_tvalid(mean_valid),
        .s_axis_b_tdata(mean_data),
        .s_axis_b_tready(NLW_cal_meansquare_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tvalid(mean_valid));
  Layernorm_process_mean_top_0_0_mean_fifo fifo_u
       (.Q(fifo_out),
        .S_AXIS_TDATA(S_AXIS_TDATA[143:16]),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TREADY_0(sum_ready),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .aclk(aclk),
        .arstn(arstn),
        .\m_axis_tvalid_reg[8]_0 (fifo_valid),
        .s_axis_a_tready(fifo_ready));
  (* CHECK_LICENSE_TYPE = "bf_sub,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_process_mean_top_0_0_bf_sub \sub_mean[0].sub_mean 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[31:16]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(zero_mean_valid),
        .s_axis_a_tdata(fifo_out[15:0]),
        .s_axis_a_tready(fifo_ready),
        .s_axis_a_tvalid(fifo_valid),
        .s_axis_b_tdata(mean_data),
        .s_axis_b_tready(mean_ready),
        .s_axis_b_tvalid(mean_valid));
  (* CHECK_LICENSE_TYPE = "bf_sub,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_process_mean_top_0_0_bf_sub \sub_mean[1].sub_mean 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[47:32]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(zero_mean_valid),
        .s_axis_a_tdata(fifo_out[31:16]),
        .s_axis_a_tready(fifo_ready),
        .s_axis_a_tvalid(fifo_valid),
        .s_axis_b_tdata(mean_data),
        .s_axis_b_tready(mean_ready),
        .s_axis_b_tvalid(mean_valid));
  (* CHECK_LICENSE_TYPE = "bf_sub,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_process_mean_top_0_0_bf_sub \sub_mean[2].sub_mean 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[63:48]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(zero_mean_valid),
        .s_axis_a_tdata(fifo_out[47:32]),
        .s_axis_a_tready(fifo_ready),
        .s_axis_a_tvalid(fifo_valid),
        .s_axis_b_tdata(mean_data),
        .s_axis_b_tready(mean_ready),
        .s_axis_b_tvalid(mean_valid));
  (* CHECK_LICENSE_TYPE = "bf_sub,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_process_mean_top_0_0_bf_sub \sub_mean[3].sub_mean 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[79:64]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(zero_mean_valid),
        .s_axis_a_tdata(fifo_out[63:48]),
        .s_axis_a_tready(fifo_ready),
        .s_axis_a_tvalid(fifo_valid),
        .s_axis_b_tdata(mean_data),
        .s_axis_b_tready(mean_ready),
        .s_axis_b_tvalid(mean_valid));
  (* CHECK_LICENSE_TYPE = "bf_sub,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_process_mean_top_0_0_bf_sub \sub_mean[4].sub_mean 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[95:80]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(zero_mean_valid),
        .s_axis_a_tdata(fifo_out[79:64]),
        .s_axis_a_tready(fifo_ready),
        .s_axis_a_tvalid(fifo_valid),
        .s_axis_b_tdata(mean_data),
        .s_axis_b_tready(mean_ready),
        .s_axis_b_tvalid(mean_valid));
  (* CHECK_LICENSE_TYPE = "bf_sub,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_process_mean_top_0_0_bf_sub \sub_mean[5].sub_mean 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[111:96]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(zero_mean_valid),
        .s_axis_a_tdata(fifo_out[95:80]),
        .s_axis_a_tready(fifo_ready),
        .s_axis_a_tvalid(fifo_valid),
        .s_axis_b_tdata(mean_data),
        .s_axis_b_tready(mean_ready),
        .s_axis_b_tvalid(mean_valid));
  (* CHECK_LICENSE_TYPE = "bf_sub,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_process_mean_top_0_0_bf_sub \sub_mean[6].sub_mean 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[127:112]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(zero_mean_valid),
        .s_axis_a_tdata(fifo_out[111:96]),
        .s_axis_a_tready(fifo_ready),
        .s_axis_a_tvalid(fifo_valid),
        .s_axis_b_tdata(mean_data),
        .s_axis_b_tready(mean_ready),
        .s_axis_b_tvalid(mean_valid));
  (* CHECK_LICENSE_TYPE = "bf_sub,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_process_mean_top_0_0_bf_sub_HD2 \sub_mean[7].sub_mean 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[143:128]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(zero_mean_valid),
        .s_axis_a_tdata(fifo_out[127:112]),
        .s_axis_a_tready(fifo_ready),
        .s_axis_a_tvalid(fifo_valid),
        .s_axis_b_tdata(mean_data),
        .s_axis_b_tready(mean_ready),
        .s_axis_b_tvalid(mean_valid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
