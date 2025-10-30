// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Oct 30 19:38:43 2025
// Host        : Hua running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/alhua/VivadoProject/Laynernorm/Laynernorm.gen/sources_1/bd/Layernorm/ip/Layernorm_rms_norm_top_0_0/Layernorm_rms_norm_top_0_0_sim_netlist.v
// Design      : Layernorm_rms_norm_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Layernorm_rms_norm_top_0_0,rms_norm_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "rms_norm_top,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Layernorm_rms_norm_top_0_0
   (aclk,
    arstn,
    S_AXIS_TDATA,
    S_AXIS_TVALID,
    S_AXIS_TREADY,
    M_AXIS_TDATA,
    M_AXIS_TVALID,
    M_AXIS_TREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, INSERT_VIP 0" *) input aclk;
  input arstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 18, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [143:0]S_AXIS_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]M_AXIS_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_TREADY;

  wire [127:0]M_AXIS_TDATA;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [143:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire aclk;
  wire arstn;

  Layernorm_rms_norm_top_0_0_rms_norm_top inst
       (.M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .aclk(aclk),
        .arstn(arstn));
endmodule

(* CHECK_LICENSE_TYPE = "bf_add,floating_point_v7_1_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bf_add" *) 
(* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
module Layernorm_rms_norm_top_0_0_bf_add
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

(* ORIG_REF_NAME = "bf_fifo" *) 
module Layernorm_rms_norm_top_0_0_bf_fifo
   (arstn_0,
    D,
    DI,
    tvalid_align,
    Q,
    m_axis_result_tready,
    arstn,
    m_axis_result_tdata,
    m_axis_result_tvalid,
    aclk,
    s_axis_b_tready,
    \pipe_data_reg[0][15]_0 ,
    s_axis_a_tready,
    u_epsilon,
    u_epsilon_0);
  output arstn_0;
  output [1:0]D;
  output [0:0]DI;
  output tvalid_align;
  output [15:0]Q;
  output m_axis_result_tready;
  input arstn;
  input [2:0]m_axis_result_tdata;
  input m_axis_result_tvalid;
  input aclk;
  input s_axis_b_tready;
  input [13:0]\pipe_data_reg[0][15]_0 ;
  input s_axis_a_tready;
  input u_epsilon;
  input u_epsilon_0;

  wire [1:0]D;
  wire [0:0]DI;
  wire [15:0]Q;
  wire aclk;
  wire arstn;
  wire arstn_0;
  wire [2:0]m_axis_result_tdata;
  wire m_axis_result_tready;
  wire m_axis_result_tvalid;
  wire p_14_in;
  wire p_19_in;
  wire p_24_in;
  wire p_4_in;
  wire p_9_in;
  wire pipe_data;
  wire \pipe_data[10][15]_i_1_n_0 ;
  wire \pipe_data[11][15]_i_1_n_0 ;
  wire \pipe_data[12][15]_i_1_n_0 ;
  wire \pipe_data[13][15]_i_1_n_0 ;
  wire \pipe_data[14][15]_i_1_n_0 ;
  wire \pipe_data[15][15]_i_1_n_0 ;
  wire \pipe_data[16][15]_i_1_n_0 ;
  wire \pipe_data[17][15]_i_1_n_0 ;
  wire \pipe_data[18][15]_i_1_n_0 ;
  wire \pipe_data[19][15]_i_1_n_0 ;
  wire \pipe_data[1][15]_i_1_n_0 ;
  wire \pipe_data[20][15]_i_1_n_0 ;
  wire \pipe_data[21][15]_i_1_n_0 ;
  wire \pipe_data[22][15]_i_1_n_0 ;
  wire \pipe_data[23][15]_i_1_n_0 ;
  wire \pipe_data[24][15]_i_1_n_0 ;
  wire \pipe_data[25][15]_i_1_n_0 ;
  wire \pipe_data[26][15]_i_1_n_0 ;
  wire \pipe_data[2][15]_i_1_n_0 ;
  wire \pipe_data[3][15]_i_1_n_0 ;
  wire \pipe_data[4][15]_i_1_n_0 ;
  wire \pipe_data[5][15]_i_1_n_0 ;
  wire \pipe_data[6][15]_i_1_n_0 ;
  wire \pipe_data[7][15]_i_1_n_0 ;
  wire \pipe_data[8][15]_i_1_n_0 ;
  wire \pipe_data[9][15]_i_1_n_0 ;
  wire [15:0]\pipe_data_reg[0] ;
  wire [13:0]\pipe_data_reg[0][15]_0 ;
  wire [15:0]\pipe_data_reg[10] ;
  wire [15:0]\pipe_data_reg[11] ;
  wire [15:0]\pipe_data_reg[12] ;
  wire [15:0]\pipe_data_reg[13] ;
  wire [15:0]\pipe_data_reg[14] ;
  wire [15:0]\pipe_data_reg[15] ;
  wire [15:0]\pipe_data_reg[16] ;
  wire [15:0]\pipe_data_reg[17] ;
  wire [15:0]\pipe_data_reg[18] ;
  wire [15:0]\pipe_data_reg[19] ;
  wire [15:0]\pipe_data_reg[1] ;
  wire [15:0]\pipe_data_reg[20] ;
  wire [15:0]\pipe_data_reg[21] ;
  wire [15:0]\pipe_data_reg[22] ;
  wire [15:0]\pipe_data_reg[23] ;
  wire [15:0]\pipe_data_reg[24] ;
  wire [15:0]\pipe_data_reg[25] ;
  wire [15:0]\pipe_data_reg[2] ;
  wire [15:0]\pipe_data_reg[3] ;
  wire [15:0]\pipe_data_reg[4] ;
  wire [15:0]\pipe_data_reg[5] ;
  wire [15:0]\pipe_data_reg[6] ;
  wire [15:0]\pipe_data_reg[7] ;
  wire [15:0]\pipe_data_reg[8] ;
  wire [15:0]\pipe_data_reg[9] ;
  wire \pipe_valid[0]_i_1_n_0 ;
  wire \pipe_valid[10]_i_1_n_0 ;
  wire \pipe_valid[11]_i_1_n_0 ;
  wire \pipe_valid[12]_i_1_n_0 ;
  wire \pipe_valid[13]_i_1_n_0 ;
  wire \pipe_valid[14]_i_1_n_0 ;
  wire \pipe_valid[15]_i_1_n_0 ;
  wire \pipe_valid[16]_i_1_n_0 ;
  wire \pipe_valid[17]_i_1_n_0 ;
  wire \pipe_valid[18]_i_1_n_0 ;
  wire \pipe_valid[19]_i_1_n_0 ;
  wire \pipe_valid[1]_i_1_n_0 ;
  wire \pipe_valid[20]_i_1_n_0 ;
  wire \pipe_valid[21]_i_1_n_0 ;
  wire \pipe_valid[22]_i_1_n_0 ;
  wire \pipe_valid[23]_i_1_n_0 ;
  wire \pipe_valid[24]_i_1_n_0 ;
  wire \pipe_valid[25]_i_1_n_0 ;
  wire \pipe_valid[26]_i_1_n_0 ;
  wire \pipe_valid[2]_i_1_n_0 ;
  wire \pipe_valid[3]_i_1_n_0 ;
  wire \pipe_valid[4]_i_1_n_0 ;
  wire \pipe_valid[5]_i_1_n_0 ;
  wire \pipe_valid[6]_i_1_n_0 ;
  wire \pipe_valid[7]_i_1_n_0 ;
  wire \pipe_valid[8]_i_1_n_0 ;
  wire \pipe_valid[9]_i_1_n_0 ;
  wire \pipe_valid_reg_n_0_[0] ;
  wire \pipe_valid_reg_n_0_[10] ;
  wire \pipe_valid_reg_n_0_[11] ;
  wire \pipe_valid_reg_n_0_[12] ;
  wire \pipe_valid_reg_n_0_[13] ;
  wire \pipe_valid_reg_n_0_[14] ;
  wire \pipe_valid_reg_n_0_[15] ;
  wire \pipe_valid_reg_n_0_[16] ;
  wire \pipe_valid_reg_n_0_[17] ;
  wire \pipe_valid_reg_n_0_[18] ;
  wire \pipe_valid_reg_n_0_[19] ;
  wire \pipe_valid_reg_n_0_[1] ;
  wire \pipe_valid_reg_n_0_[20] ;
  wire \pipe_valid_reg_n_0_[21] ;
  wire \pipe_valid_reg_n_0_[22] ;
  wire \pipe_valid_reg_n_0_[23] ;
  wire \pipe_valid_reg_n_0_[24] ;
  wire \pipe_valid_reg_n_0_[25] ;
  wire \pipe_valid_reg_n_0_[2] ;
  wire \pipe_valid_reg_n_0_[3] ;
  wire \pipe_valid_reg_n_0_[4] ;
  wire \pipe_valid_reg_n_0_[5] ;
  wire \pipe_valid_reg_n_0_[6] ;
  wire \pipe_valid_reg_n_0_[7] ;
  wire \pipe_valid_reg_n_0_[8] ;
  wire \pipe_valid_reg_n_0_[9] ;
  wire s_axis_a_tready;
  wire s_axis_b_tready;
  wire tvalid_align;
  wire u_epsilon;
  wire u_epsilon_0;

  LUT1 #(
    .INIT(2'h1)) 
    data2_carry__2_i_1
       (.I0(m_axis_result_tdata[2]),
        .O(DI));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tvalid[44]_i_1 
       (.I0(arstn),
        .O(arstn_0));
  LUT4 #(
    .INIT(16'hDF00)) 
    \pipe_data[0][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[0] ),
        .I1(p_24_in),
        .I2(\pipe_valid_reg_n_0_[1] ),
        .I3(m_axis_result_tvalid),
        .O(pipe_data));
  LUT4 #(
    .INIT(16'hDF00)) 
    \pipe_data[10][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[10] ),
        .I1(p_14_in),
        .I2(\pipe_valid_reg_n_0_[11] ),
        .I3(\pipe_valid_reg_n_0_[9] ),
        .O(\pipe_data[10][15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pipe_data[11][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[11] ),
        .I1(p_14_in),
        .I2(\pipe_valid_reg_n_0_[10] ),
        .O(\pipe_data[11][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pipe_data[12][15]_i_1 
       (.I0(p_14_in),
        .I1(\pipe_valid_reg_n_0_[11] ),
        .O(\pipe_data[12][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF00000000)) 
    \pipe_data[13][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[13] ),
        .I1(\pipe_valid_reg_n_0_[15] ),
        .I2(p_9_in),
        .I3(\pipe_valid_reg_n_0_[16] ),
        .I4(\pipe_valid_reg_n_0_[14] ),
        .I5(\pipe_valid_reg_n_0_[12] ),
        .O(\pipe_data[13][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0000)) 
    \pipe_data[14][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[14] ),
        .I1(\pipe_valid_reg_n_0_[16] ),
        .I2(p_9_in),
        .I3(\pipe_valid_reg_n_0_[15] ),
        .I4(\pipe_valid_reg_n_0_[13] ),
        .O(\pipe_data[14][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDF00)) 
    \pipe_data[15][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[15] ),
        .I1(p_9_in),
        .I2(\pipe_valid_reg_n_0_[16] ),
        .I3(\pipe_valid_reg_n_0_[14] ),
        .O(\pipe_data[15][15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pipe_data[16][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[16] ),
        .I1(p_9_in),
        .I2(\pipe_valid_reg_n_0_[15] ),
        .O(\pipe_data[16][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pipe_data[17][15]_i_1 
       (.I0(p_9_in),
        .I1(\pipe_valid_reg_n_0_[16] ),
        .O(\pipe_data[17][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF00000000)) 
    \pipe_data[18][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[18] ),
        .I1(\pipe_valid_reg_n_0_[20] ),
        .I2(p_4_in),
        .I3(\pipe_valid_reg_n_0_[21] ),
        .I4(\pipe_valid_reg_n_0_[19] ),
        .I5(\pipe_valid_reg_n_0_[17] ),
        .O(\pipe_data[18][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0000)) 
    \pipe_data[19][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[19] ),
        .I1(\pipe_valid_reg_n_0_[21] ),
        .I2(p_4_in),
        .I3(\pipe_valid_reg_n_0_[20] ),
        .I4(\pipe_valid_reg_n_0_[18] ),
        .O(\pipe_data[19][15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pipe_data[1][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[1] ),
        .I1(p_24_in),
        .I2(\pipe_valid_reg_n_0_[0] ),
        .O(\pipe_data[1][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDF00)) 
    \pipe_data[20][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[20] ),
        .I1(p_4_in),
        .I2(\pipe_valid_reg_n_0_[21] ),
        .I3(\pipe_valid_reg_n_0_[19] ),
        .O(\pipe_data[20][15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pipe_data[21][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[21] ),
        .I1(p_4_in),
        .I2(\pipe_valid_reg_n_0_[20] ),
        .O(\pipe_data[21][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pipe_data[22][15]_i_1 
       (.I0(p_4_in),
        .I1(\pipe_valid_reg_n_0_[21] ),
        .O(\pipe_data[22][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF00000000)) 
    \pipe_data[23][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[23] ),
        .I1(\pipe_valid_reg_n_0_[25] ),
        .I2(s_axis_b_tready),
        .I3(tvalid_align),
        .I4(\pipe_valid_reg_n_0_[24] ),
        .I5(\pipe_valid_reg_n_0_[22] ),
        .O(\pipe_data[23][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0000)) 
    \pipe_data[24][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[24] ),
        .I1(tvalid_align),
        .I2(s_axis_b_tready),
        .I3(\pipe_valid_reg_n_0_[25] ),
        .I4(\pipe_valid_reg_n_0_[23] ),
        .O(\pipe_data[24][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDF00)) 
    \pipe_data[25][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[25] ),
        .I1(s_axis_b_tready),
        .I2(tvalid_align),
        .I3(\pipe_valid_reg_n_0_[24] ),
        .O(\pipe_data[25][15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pipe_data[26][15]_i_1 
       (.I0(tvalid_align),
        .I1(s_axis_b_tready),
        .I2(\pipe_valid_reg_n_0_[25] ),
        .O(\pipe_data[26][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pipe_data[2][15]_i_1 
       (.I0(p_24_in),
        .I1(\pipe_valid_reg_n_0_[1] ),
        .O(\pipe_data[2][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF00000000)) 
    \pipe_data[3][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[3] ),
        .I1(\pipe_valid_reg_n_0_[5] ),
        .I2(p_19_in),
        .I3(\pipe_valid_reg_n_0_[6] ),
        .I4(\pipe_valid_reg_n_0_[4] ),
        .I5(\pipe_valid_reg_n_0_[2] ),
        .O(\pipe_data[3][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0000)) 
    \pipe_data[4][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[4] ),
        .I1(\pipe_valid_reg_n_0_[6] ),
        .I2(p_19_in),
        .I3(\pipe_valid_reg_n_0_[5] ),
        .I4(\pipe_valid_reg_n_0_[3] ),
        .O(\pipe_data[4][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDF00)) 
    \pipe_data[5][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[5] ),
        .I1(p_19_in),
        .I2(\pipe_valid_reg_n_0_[6] ),
        .I3(\pipe_valid_reg_n_0_[4] ),
        .O(\pipe_data[5][15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pipe_data[6][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[6] ),
        .I1(p_19_in),
        .I2(\pipe_valid_reg_n_0_[5] ),
        .O(\pipe_data[6][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pipe_data[7][15]_i_1 
       (.I0(p_19_in),
        .I1(\pipe_valid_reg_n_0_[6] ),
        .O(\pipe_data[7][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF00000000)) 
    \pipe_data[8][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[8] ),
        .I1(\pipe_valid_reg_n_0_[10] ),
        .I2(p_14_in),
        .I3(\pipe_valid_reg_n_0_[11] ),
        .I4(\pipe_valid_reg_n_0_[9] ),
        .I5(\pipe_valid_reg_n_0_[7] ),
        .O(\pipe_data[8][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0000)) 
    \pipe_data[9][15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[9] ),
        .I1(\pipe_valid_reg_n_0_[11] ),
        .I2(p_14_in),
        .I3(\pipe_valid_reg_n_0_[10] ),
        .I4(\pipe_valid_reg_n_0_[8] ),
        .O(\pipe_data[9][15]_i_1_n_0 ));
  FDCE \pipe_data_reg[0][0] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(D[0]),
        .Q(\pipe_data_reg[0] [0]));
  FDCE \pipe_data_reg[0][10] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [8]),
        .Q(\pipe_data_reg[0] [10]));
  FDCE \pipe_data_reg[0][11] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [9]),
        .Q(\pipe_data_reg[0] [11]));
  FDCE \pipe_data_reg[0][12] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [10]),
        .Q(\pipe_data_reg[0] [12]));
  FDCE \pipe_data_reg[0][13] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [11]),
        .Q(\pipe_data_reg[0] [13]));
  FDCE \pipe_data_reg[0][14] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [12]),
        .Q(\pipe_data_reg[0] [14]));
  FDCE \pipe_data_reg[0][15] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [13]),
        .Q(\pipe_data_reg[0] [15]));
  FDCE \pipe_data_reg[0][1] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(D[1]),
        .Q(\pipe_data_reg[0] [1]));
  FDCE \pipe_data_reg[0][2] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [0]),
        .Q(\pipe_data_reg[0] [2]));
  FDCE \pipe_data_reg[0][3] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [1]),
        .Q(\pipe_data_reg[0] [3]));
  FDCE \pipe_data_reg[0][4] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [2]),
        .Q(\pipe_data_reg[0] [4]));
  FDCE \pipe_data_reg[0][5] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [3]),
        .Q(\pipe_data_reg[0] [5]));
  FDCE \pipe_data_reg[0][6] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [4]),
        .Q(\pipe_data_reg[0] [6]));
  FDCE \pipe_data_reg[0][7] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [5]),
        .Q(\pipe_data_reg[0] [7]));
  FDCE \pipe_data_reg[0][8] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [6]),
        .Q(\pipe_data_reg[0] [8]));
  FDCE \pipe_data_reg[0][9] 
       (.C(aclk),
        .CE(pipe_data),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0][15]_0 [7]),
        .Q(\pipe_data_reg[0] [9]));
  FDCE \pipe_data_reg[10][0] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [0]),
        .Q(\pipe_data_reg[10] [0]));
  FDCE \pipe_data_reg[10][10] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [10]),
        .Q(\pipe_data_reg[10] [10]));
  FDCE \pipe_data_reg[10][11] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [11]),
        .Q(\pipe_data_reg[10] [11]));
  FDCE \pipe_data_reg[10][12] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [12]),
        .Q(\pipe_data_reg[10] [12]));
  FDCE \pipe_data_reg[10][13] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [13]),
        .Q(\pipe_data_reg[10] [13]));
  FDCE \pipe_data_reg[10][14] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [14]),
        .Q(\pipe_data_reg[10] [14]));
  FDCE \pipe_data_reg[10][15] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [15]),
        .Q(\pipe_data_reg[10] [15]));
  FDCE \pipe_data_reg[10][1] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [1]),
        .Q(\pipe_data_reg[10] [1]));
  FDCE \pipe_data_reg[10][2] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [2]),
        .Q(\pipe_data_reg[10] [2]));
  FDCE \pipe_data_reg[10][3] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [3]),
        .Q(\pipe_data_reg[10] [3]));
  FDCE \pipe_data_reg[10][4] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [4]),
        .Q(\pipe_data_reg[10] [4]));
  FDCE \pipe_data_reg[10][5] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [5]),
        .Q(\pipe_data_reg[10] [5]));
  FDCE \pipe_data_reg[10][6] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [6]),
        .Q(\pipe_data_reg[10] [6]));
  FDCE \pipe_data_reg[10][7] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [7]),
        .Q(\pipe_data_reg[10] [7]));
  FDCE \pipe_data_reg[10][8] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [8]),
        .Q(\pipe_data_reg[10] [8]));
  FDCE \pipe_data_reg[10][9] 
       (.C(aclk),
        .CE(\pipe_data[10][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[9] [9]),
        .Q(\pipe_data_reg[10] [9]));
  FDCE \pipe_data_reg[11][0] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [0]),
        .Q(\pipe_data_reg[11] [0]));
  FDCE \pipe_data_reg[11][10] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [10]),
        .Q(\pipe_data_reg[11] [10]));
  FDCE \pipe_data_reg[11][11] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [11]),
        .Q(\pipe_data_reg[11] [11]));
  FDCE \pipe_data_reg[11][12] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [12]),
        .Q(\pipe_data_reg[11] [12]));
  FDCE \pipe_data_reg[11][13] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [13]),
        .Q(\pipe_data_reg[11] [13]));
  FDCE \pipe_data_reg[11][14] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [14]),
        .Q(\pipe_data_reg[11] [14]));
  FDCE \pipe_data_reg[11][15] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [15]),
        .Q(\pipe_data_reg[11] [15]));
  FDCE \pipe_data_reg[11][1] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [1]),
        .Q(\pipe_data_reg[11] [1]));
  FDCE \pipe_data_reg[11][2] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [2]),
        .Q(\pipe_data_reg[11] [2]));
  FDCE \pipe_data_reg[11][3] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [3]),
        .Q(\pipe_data_reg[11] [3]));
  FDCE \pipe_data_reg[11][4] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [4]),
        .Q(\pipe_data_reg[11] [4]));
  FDCE \pipe_data_reg[11][5] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [5]),
        .Q(\pipe_data_reg[11] [5]));
  FDCE \pipe_data_reg[11][6] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [6]),
        .Q(\pipe_data_reg[11] [6]));
  FDCE \pipe_data_reg[11][7] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [7]),
        .Q(\pipe_data_reg[11] [7]));
  FDCE \pipe_data_reg[11][8] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [8]),
        .Q(\pipe_data_reg[11] [8]));
  FDCE \pipe_data_reg[11][9] 
       (.C(aclk),
        .CE(\pipe_data[11][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[10] [9]),
        .Q(\pipe_data_reg[11] [9]));
  FDCE \pipe_data_reg[12][0] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [0]),
        .Q(\pipe_data_reg[12] [0]));
  FDCE \pipe_data_reg[12][10] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [10]),
        .Q(\pipe_data_reg[12] [10]));
  FDCE \pipe_data_reg[12][11] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [11]),
        .Q(\pipe_data_reg[12] [11]));
  FDCE \pipe_data_reg[12][12] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [12]),
        .Q(\pipe_data_reg[12] [12]));
  FDCE \pipe_data_reg[12][13] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [13]),
        .Q(\pipe_data_reg[12] [13]));
  FDCE \pipe_data_reg[12][14] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [14]),
        .Q(\pipe_data_reg[12] [14]));
  FDCE \pipe_data_reg[12][15] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [15]),
        .Q(\pipe_data_reg[12] [15]));
  FDCE \pipe_data_reg[12][1] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [1]),
        .Q(\pipe_data_reg[12] [1]));
  FDCE \pipe_data_reg[12][2] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [2]),
        .Q(\pipe_data_reg[12] [2]));
  FDCE \pipe_data_reg[12][3] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [3]),
        .Q(\pipe_data_reg[12] [3]));
  FDCE \pipe_data_reg[12][4] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [4]),
        .Q(\pipe_data_reg[12] [4]));
  FDCE \pipe_data_reg[12][5] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [5]),
        .Q(\pipe_data_reg[12] [5]));
  FDCE \pipe_data_reg[12][6] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [6]),
        .Q(\pipe_data_reg[12] [6]));
  FDCE \pipe_data_reg[12][7] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [7]),
        .Q(\pipe_data_reg[12] [7]));
  FDCE \pipe_data_reg[12][8] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [8]),
        .Q(\pipe_data_reg[12] [8]));
  FDCE \pipe_data_reg[12][9] 
       (.C(aclk),
        .CE(\pipe_data[12][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[11] [9]),
        .Q(\pipe_data_reg[12] [9]));
  FDCE \pipe_data_reg[13][0] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [0]),
        .Q(\pipe_data_reg[13] [0]));
  FDCE \pipe_data_reg[13][10] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [10]),
        .Q(\pipe_data_reg[13] [10]));
  FDCE \pipe_data_reg[13][11] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [11]),
        .Q(\pipe_data_reg[13] [11]));
  FDCE \pipe_data_reg[13][12] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [12]),
        .Q(\pipe_data_reg[13] [12]));
  FDCE \pipe_data_reg[13][13] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [13]),
        .Q(\pipe_data_reg[13] [13]));
  FDCE \pipe_data_reg[13][14] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [14]),
        .Q(\pipe_data_reg[13] [14]));
  FDCE \pipe_data_reg[13][15] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [15]),
        .Q(\pipe_data_reg[13] [15]));
  FDCE \pipe_data_reg[13][1] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [1]),
        .Q(\pipe_data_reg[13] [1]));
  FDCE \pipe_data_reg[13][2] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [2]),
        .Q(\pipe_data_reg[13] [2]));
  FDCE \pipe_data_reg[13][3] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [3]),
        .Q(\pipe_data_reg[13] [3]));
  FDCE \pipe_data_reg[13][4] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [4]),
        .Q(\pipe_data_reg[13] [4]));
  FDCE \pipe_data_reg[13][5] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [5]),
        .Q(\pipe_data_reg[13] [5]));
  FDCE \pipe_data_reg[13][6] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [6]),
        .Q(\pipe_data_reg[13] [6]));
  FDCE \pipe_data_reg[13][7] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [7]),
        .Q(\pipe_data_reg[13] [7]));
  FDCE \pipe_data_reg[13][8] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [8]),
        .Q(\pipe_data_reg[13] [8]));
  FDCE \pipe_data_reg[13][9] 
       (.C(aclk),
        .CE(\pipe_data[13][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[12] [9]),
        .Q(\pipe_data_reg[13] [9]));
  FDCE \pipe_data_reg[14][0] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [0]),
        .Q(\pipe_data_reg[14] [0]));
  FDCE \pipe_data_reg[14][10] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [10]),
        .Q(\pipe_data_reg[14] [10]));
  FDCE \pipe_data_reg[14][11] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [11]),
        .Q(\pipe_data_reg[14] [11]));
  FDCE \pipe_data_reg[14][12] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [12]),
        .Q(\pipe_data_reg[14] [12]));
  FDCE \pipe_data_reg[14][13] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [13]),
        .Q(\pipe_data_reg[14] [13]));
  FDCE \pipe_data_reg[14][14] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [14]),
        .Q(\pipe_data_reg[14] [14]));
  FDCE \pipe_data_reg[14][15] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [15]),
        .Q(\pipe_data_reg[14] [15]));
  FDCE \pipe_data_reg[14][1] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [1]),
        .Q(\pipe_data_reg[14] [1]));
  FDCE \pipe_data_reg[14][2] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [2]),
        .Q(\pipe_data_reg[14] [2]));
  FDCE \pipe_data_reg[14][3] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [3]),
        .Q(\pipe_data_reg[14] [3]));
  FDCE \pipe_data_reg[14][4] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [4]),
        .Q(\pipe_data_reg[14] [4]));
  FDCE \pipe_data_reg[14][5] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [5]),
        .Q(\pipe_data_reg[14] [5]));
  FDCE \pipe_data_reg[14][6] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [6]),
        .Q(\pipe_data_reg[14] [6]));
  FDCE \pipe_data_reg[14][7] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [7]),
        .Q(\pipe_data_reg[14] [7]));
  FDCE \pipe_data_reg[14][8] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [8]),
        .Q(\pipe_data_reg[14] [8]));
  FDCE \pipe_data_reg[14][9] 
       (.C(aclk),
        .CE(\pipe_data[14][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[13] [9]),
        .Q(\pipe_data_reg[14] [9]));
  FDCE \pipe_data_reg[15][0] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [0]),
        .Q(\pipe_data_reg[15] [0]));
  FDCE \pipe_data_reg[15][10] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [10]),
        .Q(\pipe_data_reg[15] [10]));
  FDCE \pipe_data_reg[15][11] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [11]),
        .Q(\pipe_data_reg[15] [11]));
  FDCE \pipe_data_reg[15][12] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [12]),
        .Q(\pipe_data_reg[15] [12]));
  FDCE \pipe_data_reg[15][13] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [13]),
        .Q(\pipe_data_reg[15] [13]));
  FDCE \pipe_data_reg[15][14] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [14]),
        .Q(\pipe_data_reg[15] [14]));
  FDCE \pipe_data_reg[15][15] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [15]),
        .Q(\pipe_data_reg[15] [15]));
  FDCE \pipe_data_reg[15][1] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [1]),
        .Q(\pipe_data_reg[15] [1]));
  FDCE \pipe_data_reg[15][2] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [2]),
        .Q(\pipe_data_reg[15] [2]));
  FDCE \pipe_data_reg[15][3] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [3]),
        .Q(\pipe_data_reg[15] [3]));
  FDCE \pipe_data_reg[15][4] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [4]),
        .Q(\pipe_data_reg[15] [4]));
  FDCE \pipe_data_reg[15][5] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [5]),
        .Q(\pipe_data_reg[15] [5]));
  FDCE \pipe_data_reg[15][6] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [6]),
        .Q(\pipe_data_reg[15] [6]));
  FDCE \pipe_data_reg[15][7] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [7]),
        .Q(\pipe_data_reg[15] [7]));
  FDCE \pipe_data_reg[15][8] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [8]),
        .Q(\pipe_data_reg[15] [8]));
  FDCE \pipe_data_reg[15][9] 
       (.C(aclk),
        .CE(\pipe_data[15][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[14] [9]),
        .Q(\pipe_data_reg[15] [9]));
  FDCE \pipe_data_reg[16][0] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [0]),
        .Q(\pipe_data_reg[16] [0]));
  FDCE \pipe_data_reg[16][10] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [10]),
        .Q(\pipe_data_reg[16] [10]));
  FDCE \pipe_data_reg[16][11] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [11]),
        .Q(\pipe_data_reg[16] [11]));
  FDCE \pipe_data_reg[16][12] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [12]),
        .Q(\pipe_data_reg[16] [12]));
  FDCE \pipe_data_reg[16][13] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [13]),
        .Q(\pipe_data_reg[16] [13]));
  FDCE \pipe_data_reg[16][14] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [14]),
        .Q(\pipe_data_reg[16] [14]));
  FDCE \pipe_data_reg[16][15] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [15]),
        .Q(\pipe_data_reg[16] [15]));
  FDCE \pipe_data_reg[16][1] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [1]),
        .Q(\pipe_data_reg[16] [1]));
  FDCE \pipe_data_reg[16][2] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [2]),
        .Q(\pipe_data_reg[16] [2]));
  FDCE \pipe_data_reg[16][3] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [3]),
        .Q(\pipe_data_reg[16] [3]));
  FDCE \pipe_data_reg[16][4] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [4]),
        .Q(\pipe_data_reg[16] [4]));
  FDCE \pipe_data_reg[16][5] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [5]),
        .Q(\pipe_data_reg[16] [5]));
  FDCE \pipe_data_reg[16][6] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [6]),
        .Q(\pipe_data_reg[16] [6]));
  FDCE \pipe_data_reg[16][7] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [7]),
        .Q(\pipe_data_reg[16] [7]));
  FDCE \pipe_data_reg[16][8] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [8]),
        .Q(\pipe_data_reg[16] [8]));
  FDCE \pipe_data_reg[16][9] 
       (.C(aclk),
        .CE(\pipe_data[16][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[15] [9]),
        .Q(\pipe_data_reg[16] [9]));
  FDCE \pipe_data_reg[17][0] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [0]),
        .Q(\pipe_data_reg[17] [0]));
  FDCE \pipe_data_reg[17][10] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [10]),
        .Q(\pipe_data_reg[17] [10]));
  FDCE \pipe_data_reg[17][11] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [11]),
        .Q(\pipe_data_reg[17] [11]));
  FDCE \pipe_data_reg[17][12] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [12]),
        .Q(\pipe_data_reg[17] [12]));
  FDCE \pipe_data_reg[17][13] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [13]),
        .Q(\pipe_data_reg[17] [13]));
  FDCE \pipe_data_reg[17][14] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [14]),
        .Q(\pipe_data_reg[17] [14]));
  FDCE \pipe_data_reg[17][15] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [15]),
        .Q(\pipe_data_reg[17] [15]));
  FDCE \pipe_data_reg[17][1] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [1]),
        .Q(\pipe_data_reg[17] [1]));
  FDCE \pipe_data_reg[17][2] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [2]),
        .Q(\pipe_data_reg[17] [2]));
  FDCE \pipe_data_reg[17][3] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [3]),
        .Q(\pipe_data_reg[17] [3]));
  FDCE \pipe_data_reg[17][4] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [4]),
        .Q(\pipe_data_reg[17] [4]));
  FDCE \pipe_data_reg[17][5] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [5]),
        .Q(\pipe_data_reg[17] [5]));
  FDCE \pipe_data_reg[17][6] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [6]),
        .Q(\pipe_data_reg[17] [6]));
  FDCE \pipe_data_reg[17][7] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [7]),
        .Q(\pipe_data_reg[17] [7]));
  FDCE \pipe_data_reg[17][8] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [8]),
        .Q(\pipe_data_reg[17] [8]));
  FDCE \pipe_data_reg[17][9] 
       (.C(aclk),
        .CE(\pipe_data[17][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[16] [9]),
        .Q(\pipe_data_reg[17] [9]));
  FDCE \pipe_data_reg[18][0] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [0]),
        .Q(\pipe_data_reg[18] [0]));
  FDCE \pipe_data_reg[18][10] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [10]),
        .Q(\pipe_data_reg[18] [10]));
  FDCE \pipe_data_reg[18][11] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [11]),
        .Q(\pipe_data_reg[18] [11]));
  FDCE \pipe_data_reg[18][12] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [12]),
        .Q(\pipe_data_reg[18] [12]));
  FDCE \pipe_data_reg[18][13] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [13]),
        .Q(\pipe_data_reg[18] [13]));
  FDCE \pipe_data_reg[18][14] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [14]),
        .Q(\pipe_data_reg[18] [14]));
  FDCE \pipe_data_reg[18][15] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [15]),
        .Q(\pipe_data_reg[18] [15]));
  FDCE \pipe_data_reg[18][1] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [1]),
        .Q(\pipe_data_reg[18] [1]));
  FDCE \pipe_data_reg[18][2] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [2]),
        .Q(\pipe_data_reg[18] [2]));
  FDCE \pipe_data_reg[18][3] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [3]),
        .Q(\pipe_data_reg[18] [3]));
  FDCE \pipe_data_reg[18][4] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [4]),
        .Q(\pipe_data_reg[18] [4]));
  FDCE \pipe_data_reg[18][5] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [5]),
        .Q(\pipe_data_reg[18] [5]));
  FDCE \pipe_data_reg[18][6] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [6]),
        .Q(\pipe_data_reg[18] [6]));
  FDCE \pipe_data_reg[18][7] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [7]),
        .Q(\pipe_data_reg[18] [7]));
  FDCE \pipe_data_reg[18][8] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [8]),
        .Q(\pipe_data_reg[18] [8]));
  FDCE \pipe_data_reg[18][9] 
       (.C(aclk),
        .CE(\pipe_data[18][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[17] [9]),
        .Q(\pipe_data_reg[18] [9]));
  FDCE \pipe_data_reg[19][0] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [0]),
        .Q(\pipe_data_reg[19] [0]));
  FDCE \pipe_data_reg[19][10] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [10]),
        .Q(\pipe_data_reg[19] [10]));
  FDCE \pipe_data_reg[19][11] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [11]),
        .Q(\pipe_data_reg[19] [11]));
  FDCE \pipe_data_reg[19][12] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [12]),
        .Q(\pipe_data_reg[19] [12]));
  FDCE \pipe_data_reg[19][13] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [13]),
        .Q(\pipe_data_reg[19] [13]));
  FDCE \pipe_data_reg[19][14] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [14]),
        .Q(\pipe_data_reg[19] [14]));
  FDCE \pipe_data_reg[19][15] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [15]),
        .Q(\pipe_data_reg[19] [15]));
  FDCE \pipe_data_reg[19][1] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [1]),
        .Q(\pipe_data_reg[19] [1]));
  FDCE \pipe_data_reg[19][2] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [2]),
        .Q(\pipe_data_reg[19] [2]));
  FDCE \pipe_data_reg[19][3] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [3]),
        .Q(\pipe_data_reg[19] [3]));
  FDCE \pipe_data_reg[19][4] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [4]),
        .Q(\pipe_data_reg[19] [4]));
  FDCE \pipe_data_reg[19][5] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [5]),
        .Q(\pipe_data_reg[19] [5]));
  FDCE \pipe_data_reg[19][6] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [6]),
        .Q(\pipe_data_reg[19] [6]));
  FDCE \pipe_data_reg[19][7] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [7]),
        .Q(\pipe_data_reg[19] [7]));
  FDCE \pipe_data_reg[19][8] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [8]),
        .Q(\pipe_data_reg[19] [8]));
  FDCE \pipe_data_reg[19][9] 
       (.C(aclk),
        .CE(\pipe_data[19][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[18] [9]),
        .Q(\pipe_data_reg[19] [9]));
  FDCE \pipe_data_reg[1][0] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [0]),
        .Q(\pipe_data_reg[1] [0]));
  FDCE \pipe_data_reg[1][10] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [10]),
        .Q(\pipe_data_reg[1] [10]));
  FDCE \pipe_data_reg[1][11] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [11]),
        .Q(\pipe_data_reg[1] [11]));
  FDCE \pipe_data_reg[1][12] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [12]),
        .Q(\pipe_data_reg[1] [12]));
  FDCE \pipe_data_reg[1][13] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [13]),
        .Q(\pipe_data_reg[1] [13]));
  FDCE \pipe_data_reg[1][14] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [14]),
        .Q(\pipe_data_reg[1] [14]));
  FDCE \pipe_data_reg[1][15] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [15]),
        .Q(\pipe_data_reg[1] [15]));
  FDCE \pipe_data_reg[1][1] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [1]),
        .Q(\pipe_data_reg[1] [1]));
  FDCE \pipe_data_reg[1][2] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [2]),
        .Q(\pipe_data_reg[1] [2]));
  FDCE \pipe_data_reg[1][3] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [3]),
        .Q(\pipe_data_reg[1] [3]));
  FDCE \pipe_data_reg[1][4] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [4]),
        .Q(\pipe_data_reg[1] [4]));
  FDCE \pipe_data_reg[1][5] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [5]),
        .Q(\pipe_data_reg[1] [5]));
  FDCE \pipe_data_reg[1][6] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [6]),
        .Q(\pipe_data_reg[1] [6]));
  FDCE \pipe_data_reg[1][7] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [7]),
        .Q(\pipe_data_reg[1] [7]));
  FDCE \pipe_data_reg[1][8] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [8]),
        .Q(\pipe_data_reg[1] [8]));
  FDCE \pipe_data_reg[1][9] 
       (.C(aclk),
        .CE(\pipe_data[1][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[0] [9]),
        .Q(\pipe_data_reg[1] [9]));
  FDCE \pipe_data_reg[20][0] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [0]),
        .Q(\pipe_data_reg[20] [0]));
  FDCE \pipe_data_reg[20][10] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [10]),
        .Q(\pipe_data_reg[20] [10]));
  FDCE \pipe_data_reg[20][11] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [11]),
        .Q(\pipe_data_reg[20] [11]));
  FDCE \pipe_data_reg[20][12] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [12]),
        .Q(\pipe_data_reg[20] [12]));
  FDCE \pipe_data_reg[20][13] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [13]),
        .Q(\pipe_data_reg[20] [13]));
  FDCE \pipe_data_reg[20][14] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [14]),
        .Q(\pipe_data_reg[20] [14]));
  FDCE \pipe_data_reg[20][15] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [15]),
        .Q(\pipe_data_reg[20] [15]));
  FDCE \pipe_data_reg[20][1] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [1]),
        .Q(\pipe_data_reg[20] [1]));
  FDCE \pipe_data_reg[20][2] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [2]),
        .Q(\pipe_data_reg[20] [2]));
  FDCE \pipe_data_reg[20][3] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [3]),
        .Q(\pipe_data_reg[20] [3]));
  FDCE \pipe_data_reg[20][4] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [4]),
        .Q(\pipe_data_reg[20] [4]));
  FDCE \pipe_data_reg[20][5] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [5]),
        .Q(\pipe_data_reg[20] [5]));
  FDCE \pipe_data_reg[20][6] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [6]),
        .Q(\pipe_data_reg[20] [6]));
  FDCE \pipe_data_reg[20][7] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [7]),
        .Q(\pipe_data_reg[20] [7]));
  FDCE \pipe_data_reg[20][8] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [8]),
        .Q(\pipe_data_reg[20] [8]));
  FDCE \pipe_data_reg[20][9] 
       (.C(aclk),
        .CE(\pipe_data[20][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[19] [9]),
        .Q(\pipe_data_reg[20] [9]));
  FDCE \pipe_data_reg[21][0] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [0]),
        .Q(\pipe_data_reg[21] [0]));
  FDCE \pipe_data_reg[21][10] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [10]),
        .Q(\pipe_data_reg[21] [10]));
  FDCE \pipe_data_reg[21][11] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [11]),
        .Q(\pipe_data_reg[21] [11]));
  FDCE \pipe_data_reg[21][12] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [12]),
        .Q(\pipe_data_reg[21] [12]));
  FDCE \pipe_data_reg[21][13] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [13]),
        .Q(\pipe_data_reg[21] [13]));
  FDCE \pipe_data_reg[21][14] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [14]),
        .Q(\pipe_data_reg[21] [14]));
  FDCE \pipe_data_reg[21][15] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [15]),
        .Q(\pipe_data_reg[21] [15]));
  FDCE \pipe_data_reg[21][1] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [1]),
        .Q(\pipe_data_reg[21] [1]));
  FDCE \pipe_data_reg[21][2] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [2]),
        .Q(\pipe_data_reg[21] [2]));
  FDCE \pipe_data_reg[21][3] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [3]),
        .Q(\pipe_data_reg[21] [3]));
  FDCE \pipe_data_reg[21][4] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [4]),
        .Q(\pipe_data_reg[21] [4]));
  FDCE \pipe_data_reg[21][5] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [5]),
        .Q(\pipe_data_reg[21] [5]));
  FDCE \pipe_data_reg[21][6] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [6]),
        .Q(\pipe_data_reg[21] [6]));
  FDCE \pipe_data_reg[21][7] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [7]),
        .Q(\pipe_data_reg[21] [7]));
  FDCE \pipe_data_reg[21][8] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [8]),
        .Q(\pipe_data_reg[21] [8]));
  FDCE \pipe_data_reg[21][9] 
       (.C(aclk),
        .CE(\pipe_data[21][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[20] [9]),
        .Q(\pipe_data_reg[21] [9]));
  FDCE \pipe_data_reg[22][0] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [0]),
        .Q(\pipe_data_reg[22] [0]));
  FDCE \pipe_data_reg[22][10] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [10]),
        .Q(\pipe_data_reg[22] [10]));
  FDCE \pipe_data_reg[22][11] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [11]),
        .Q(\pipe_data_reg[22] [11]));
  FDCE \pipe_data_reg[22][12] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [12]),
        .Q(\pipe_data_reg[22] [12]));
  FDCE \pipe_data_reg[22][13] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [13]),
        .Q(\pipe_data_reg[22] [13]));
  FDCE \pipe_data_reg[22][14] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [14]),
        .Q(\pipe_data_reg[22] [14]));
  FDCE \pipe_data_reg[22][15] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [15]),
        .Q(\pipe_data_reg[22] [15]));
  FDCE \pipe_data_reg[22][1] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [1]),
        .Q(\pipe_data_reg[22] [1]));
  FDCE \pipe_data_reg[22][2] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [2]),
        .Q(\pipe_data_reg[22] [2]));
  FDCE \pipe_data_reg[22][3] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [3]),
        .Q(\pipe_data_reg[22] [3]));
  FDCE \pipe_data_reg[22][4] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [4]),
        .Q(\pipe_data_reg[22] [4]));
  FDCE \pipe_data_reg[22][5] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [5]),
        .Q(\pipe_data_reg[22] [5]));
  FDCE \pipe_data_reg[22][6] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [6]),
        .Q(\pipe_data_reg[22] [6]));
  FDCE \pipe_data_reg[22][7] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [7]),
        .Q(\pipe_data_reg[22] [7]));
  FDCE \pipe_data_reg[22][8] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [8]),
        .Q(\pipe_data_reg[22] [8]));
  FDCE \pipe_data_reg[22][9] 
       (.C(aclk),
        .CE(\pipe_data[22][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[21] [9]),
        .Q(\pipe_data_reg[22] [9]));
  FDCE \pipe_data_reg[23][0] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [0]),
        .Q(\pipe_data_reg[23] [0]));
  FDCE \pipe_data_reg[23][10] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [10]),
        .Q(\pipe_data_reg[23] [10]));
  FDCE \pipe_data_reg[23][11] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [11]),
        .Q(\pipe_data_reg[23] [11]));
  FDCE \pipe_data_reg[23][12] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [12]),
        .Q(\pipe_data_reg[23] [12]));
  FDCE \pipe_data_reg[23][13] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [13]),
        .Q(\pipe_data_reg[23] [13]));
  FDCE \pipe_data_reg[23][14] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [14]),
        .Q(\pipe_data_reg[23] [14]));
  FDCE \pipe_data_reg[23][15] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [15]),
        .Q(\pipe_data_reg[23] [15]));
  FDCE \pipe_data_reg[23][1] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [1]),
        .Q(\pipe_data_reg[23] [1]));
  FDCE \pipe_data_reg[23][2] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [2]),
        .Q(\pipe_data_reg[23] [2]));
  FDCE \pipe_data_reg[23][3] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [3]),
        .Q(\pipe_data_reg[23] [3]));
  FDCE \pipe_data_reg[23][4] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [4]),
        .Q(\pipe_data_reg[23] [4]));
  FDCE \pipe_data_reg[23][5] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [5]),
        .Q(\pipe_data_reg[23] [5]));
  FDCE \pipe_data_reg[23][6] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [6]),
        .Q(\pipe_data_reg[23] [6]));
  FDCE \pipe_data_reg[23][7] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [7]),
        .Q(\pipe_data_reg[23] [7]));
  FDCE \pipe_data_reg[23][8] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [8]),
        .Q(\pipe_data_reg[23] [8]));
  FDCE \pipe_data_reg[23][9] 
       (.C(aclk),
        .CE(\pipe_data[23][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[22] [9]),
        .Q(\pipe_data_reg[23] [9]));
  FDCE \pipe_data_reg[24][0] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [0]),
        .Q(\pipe_data_reg[24] [0]));
  FDCE \pipe_data_reg[24][10] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [10]),
        .Q(\pipe_data_reg[24] [10]));
  FDCE \pipe_data_reg[24][11] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [11]),
        .Q(\pipe_data_reg[24] [11]));
  FDCE \pipe_data_reg[24][12] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [12]),
        .Q(\pipe_data_reg[24] [12]));
  FDCE \pipe_data_reg[24][13] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [13]),
        .Q(\pipe_data_reg[24] [13]));
  FDCE \pipe_data_reg[24][14] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [14]),
        .Q(\pipe_data_reg[24] [14]));
  FDCE \pipe_data_reg[24][15] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [15]),
        .Q(\pipe_data_reg[24] [15]));
  FDCE \pipe_data_reg[24][1] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [1]),
        .Q(\pipe_data_reg[24] [1]));
  FDCE \pipe_data_reg[24][2] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [2]),
        .Q(\pipe_data_reg[24] [2]));
  FDCE \pipe_data_reg[24][3] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [3]),
        .Q(\pipe_data_reg[24] [3]));
  FDCE \pipe_data_reg[24][4] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [4]),
        .Q(\pipe_data_reg[24] [4]));
  FDCE \pipe_data_reg[24][5] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [5]),
        .Q(\pipe_data_reg[24] [5]));
  FDCE \pipe_data_reg[24][6] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [6]),
        .Q(\pipe_data_reg[24] [6]));
  FDCE \pipe_data_reg[24][7] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [7]),
        .Q(\pipe_data_reg[24] [7]));
  FDCE \pipe_data_reg[24][8] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [8]),
        .Q(\pipe_data_reg[24] [8]));
  FDCE \pipe_data_reg[24][9] 
       (.C(aclk),
        .CE(\pipe_data[24][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[23] [9]),
        .Q(\pipe_data_reg[24] [9]));
  FDCE \pipe_data_reg[25][0] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [0]),
        .Q(\pipe_data_reg[25] [0]));
  FDCE \pipe_data_reg[25][10] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [10]),
        .Q(\pipe_data_reg[25] [10]));
  FDCE \pipe_data_reg[25][11] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [11]),
        .Q(\pipe_data_reg[25] [11]));
  FDCE \pipe_data_reg[25][12] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [12]),
        .Q(\pipe_data_reg[25] [12]));
  FDCE \pipe_data_reg[25][13] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [13]),
        .Q(\pipe_data_reg[25] [13]));
  FDCE \pipe_data_reg[25][14] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [14]),
        .Q(\pipe_data_reg[25] [14]));
  FDCE \pipe_data_reg[25][15] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [15]),
        .Q(\pipe_data_reg[25] [15]));
  FDCE \pipe_data_reg[25][1] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [1]),
        .Q(\pipe_data_reg[25] [1]));
  FDCE \pipe_data_reg[25][2] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [2]),
        .Q(\pipe_data_reg[25] [2]));
  FDCE \pipe_data_reg[25][3] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [3]),
        .Q(\pipe_data_reg[25] [3]));
  FDCE \pipe_data_reg[25][4] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [4]),
        .Q(\pipe_data_reg[25] [4]));
  FDCE \pipe_data_reg[25][5] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [5]),
        .Q(\pipe_data_reg[25] [5]));
  FDCE \pipe_data_reg[25][6] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [6]),
        .Q(\pipe_data_reg[25] [6]));
  FDCE \pipe_data_reg[25][7] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [7]),
        .Q(\pipe_data_reg[25] [7]));
  FDCE \pipe_data_reg[25][8] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [8]),
        .Q(\pipe_data_reg[25] [8]));
  FDCE \pipe_data_reg[25][9] 
       (.C(aclk),
        .CE(\pipe_data[25][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[24] [9]),
        .Q(\pipe_data_reg[25] [9]));
  FDCE \pipe_data_reg[26][0] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [0]),
        .Q(Q[0]));
  FDCE \pipe_data_reg[26][10] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [10]),
        .Q(Q[10]));
  FDCE \pipe_data_reg[26][11] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [11]),
        .Q(Q[11]));
  FDCE \pipe_data_reg[26][12] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [12]),
        .Q(Q[12]));
  FDCE \pipe_data_reg[26][13] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [13]),
        .Q(Q[13]));
  FDCE \pipe_data_reg[26][14] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [14]),
        .Q(Q[14]));
  FDCE \pipe_data_reg[26][15] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [15]),
        .Q(Q[15]));
  FDCE \pipe_data_reg[26][1] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [1]),
        .Q(Q[1]));
  FDCE \pipe_data_reg[26][2] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [2]),
        .Q(Q[2]));
  FDCE \pipe_data_reg[26][3] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [3]),
        .Q(Q[3]));
  FDCE \pipe_data_reg[26][4] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [4]),
        .Q(Q[4]));
  FDCE \pipe_data_reg[26][5] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [5]),
        .Q(Q[5]));
  FDCE \pipe_data_reg[26][6] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [6]),
        .Q(Q[6]));
  FDCE \pipe_data_reg[26][7] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [7]),
        .Q(Q[7]));
  FDCE \pipe_data_reg[26][8] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [8]),
        .Q(Q[8]));
  FDCE \pipe_data_reg[26][9] 
       (.C(aclk),
        .CE(\pipe_data[26][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[25] [9]),
        .Q(Q[9]));
  FDCE \pipe_data_reg[2][0] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [0]),
        .Q(\pipe_data_reg[2] [0]));
  FDCE \pipe_data_reg[2][10] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [10]),
        .Q(\pipe_data_reg[2] [10]));
  FDCE \pipe_data_reg[2][11] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [11]),
        .Q(\pipe_data_reg[2] [11]));
  FDCE \pipe_data_reg[2][12] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [12]),
        .Q(\pipe_data_reg[2] [12]));
  FDCE \pipe_data_reg[2][13] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [13]),
        .Q(\pipe_data_reg[2] [13]));
  FDCE \pipe_data_reg[2][14] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [14]),
        .Q(\pipe_data_reg[2] [14]));
  FDCE \pipe_data_reg[2][15] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [15]),
        .Q(\pipe_data_reg[2] [15]));
  FDCE \pipe_data_reg[2][1] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [1]),
        .Q(\pipe_data_reg[2] [1]));
  FDCE \pipe_data_reg[2][2] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [2]),
        .Q(\pipe_data_reg[2] [2]));
  FDCE \pipe_data_reg[2][3] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [3]),
        .Q(\pipe_data_reg[2] [3]));
  FDCE \pipe_data_reg[2][4] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [4]),
        .Q(\pipe_data_reg[2] [4]));
  FDCE \pipe_data_reg[2][5] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [5]),
        .Q(\pipe_data_reg[2] [5]));
  FDCE \pipe_data_reg[2][6] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [6]),
        .Q(\pipe_data_reg[2] [6]));
  FDCE \pipe_data_reg[2][7] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [7]),
        .Q(\pipe_data_reg[2] [7]));
  FDCE \pipe_data_reg[2][8] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [8]),
        .Q(\pipe_data_reg[2] [8]));
  FDCE \pipe_data_reg[2][9] 
       (.C(aclk),
        .CE(\pipe_data[2][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[1] [9]),
        .Q(\pipe_data_reg[2] [9]));
  FDCE \pipe_data_reg[3][0] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [0]),
        .Q(\pipe_data_reg[3] [0]));
  FDCE \pipe_data_reg[3][10] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [10]),
        .Q(\pipe_data_reg[3] [10]));
  FDCE \pipe_data_reg[3][11] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [11]),
        .Q(\pipe_data_reg[3] [11]));
  FDCE \pipe_data_reg[3][12] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [12]),
        .Q(\pipe_data_reg[3] [12]));
  FDCE \pipe_data_reg[3][13] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [13]),
        .Q(\pipe_data_reg[3] [13]));
  FDCE \pipe_data_reg[3][14] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [14]),
        .Q(\pipe_data_reg[3] [14]));
  FDCE \pipe_data_reg[3][15] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [15]),
        .Q(\pipe_data_reg[3] [15]));
  FDCE \pipe_data_reg[3][1] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [1]),
        .Q(\pipe_data_reg[3] [1]));
  FDCE \pipe_data_reg[3][2] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [2]),
        .Q(\pipe_data_reg[3] [2]));
  FDCE \pipe_data_reg[3][3] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [3]),
        .Q(\pipe_data_reg[3] [3]));
  FDCE \pipe_data_reg[3][4] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [4]),
        .Q(\pipe_data_reg[3] [4]));
  FDCE \pipe_data_reg[3][5] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [5]),
        .Q(\pipe_data_reg[3] [5]));
  FDCE \pipe_data_reg[3][6] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [6]),
        .Q(\pipe_data_reg[3] [6]));
  FDCE \pipe_data_reg[3][7] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [7]),
        .Q(\pipe_data_reg[3] [7]));
  FDCE \pipe_data_reg[3][8] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [8]),
        .Q(\pipe_data_reg[3] [8]));
  FDCE \pipe_data_reg[3][9] 
       (.C(aclk),
        .CE(\pipe_data[3][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[2] [9]),
        .Q(\pipe_data_reg[3] [9]));
  FDCE \pipe_data_reg[4][0] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [0]),
        .Q(\pipe_data_reg[4] [0]));
  FDCE \pipe_data_reg[4][10] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [10]),
        .Q(\pipe_data_reg[4] [10]));
  FDCE \pipe_data_reg[4][11] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [11]),
        .Q(\pipe_data_reg[4] [11]));
  FDCE \pipe_data_reg[4][12] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [12]),
        .Q(\pipe_data_reg[4] [12]));
  FDCE \pipe_data_reg[4][13] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [13]),
        .Q(\pipe_data_reg[4] [13]));
  FDCE \pipe_data_reg[4][14] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [14]),
        .Q(\pipe_data_reg[4] [14]));
  FDCE \pipe_data_reg[4][15] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [15]),
        .Q(\pipe_data_reg[4] [15]));
  FDCE \pipe_data_reg[4][1] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [1]),
        .Q(\pipe_data_reg[4] [1]));
  FDCE \pipe_data_reg[4][2] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [2]),
        .Q(\pipe_data_reg[4] [2]));
  FDCE \pipe_data_reg[4][3] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [3]),
        .Q(\pipe_data_reg[4] [3]));
  FDCE \pipe_data_reg[4][4] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [4]),
        .Q(\pipe_data_reg[4] [4]));
  FDCE \pipe_data_reg[4][5] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [5]),
        .Q(\pipe_data_reg[4] [5]));
  FDCE \pipe_data_reg[4][6] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [6]),
        .Q(\pipe_data_reg[4] [6]));
  FDCE \pipe_data_reg[4][7] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [7]),
        .Q(\pipe_data_reg[4] [7]));
  FDCE \pipe_data_reg[4][8] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [8]),
        .Q(\pipe_data_reg[4] [8]));
  FDCE \pipe_data_reg[4][9] 
       (.C(aclk),
        .CE(\pipe_data[4][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[3] [9]),
        .Q(\pipe_data_reg[4] [9]));
  FDCE \pipe_data_reg[5][0] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [0]),
        .Q(\pipe_data_reg[5] [0]));
  FDCE \pipe_data_reg[5][10] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [10]),
        .Q(\pipe_data_reg[5] [10]));
  FDCE \pipe_data_reg[5][11] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [11]),
        .Q(\pipe_data_reg[5] [11]));
  FDCE \pipe_data_reg[5][12] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [12]),
        .Q(\pipe_data_reg[5] [12]));
  FDCE \pipe_data_reg[5][13] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [13]),
        .Q(\pipe_data_reg[5] [13]));
  FDCE \pipe_data_reg[5][14] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [14]),
        .Q(\pipe_data_reg[5] [14]));
  FDCE \pipe_data_reg[5][15] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [15]),
        .Q(\pipe_data_reg[5] [15]));
  FDCE \pipe_data_reg[5][1] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [1]),
        .Q(\pipe_data_reg[5] [1]));
  FDCE \pipe_data_reg[5][2] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [2]),
        .Q(\pipe_data_reg[5] [2]));
  FDCE \pipe_data_reg[5][3] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [3]),
        .Q(\pipe_data_reg[5] [3]));
  FDCE \pipe_data_reg[5][4] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [4]),
        .Q(\pipe_data_reg[5] [4]));
  FDCE \pipe_data_reg[5][5] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [5]),
        .Q(\pipe_data_reg[5] [5]));
  FDCE \pipe_data_reg[5][6] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [6]),
        .Q(\pipe_data_reg[5] [6]));
  FDCE \pipe_data_reg[5][7] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [7]),
        .Q(\pipe_data_reg[5] [7]));
  FDCE \pipe_data_reg[5][8] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [8]),
        .Q(\pipe_data_reg[5] [8]));
  FDCE \pipe_data_reg[5][9] 
       (.C(aclk),
        .CE(\pipe_data[5][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[4] [9]),
        .Q(\pipe_data_reg[5] [9]));
  FDCE \pipe_data_reg[6][0] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [0]),
        .Q(\pipe_data_reg[6] [0]));
  FDCE \pipe_data_reg[6][10] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [10]),
        .Q(\pipe_data_reg[6] [10]));
  FDCE \pipe_data_reg[6][11] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [11]),
        .Q(\pipe_data_reg[6] [11]));
  FDCE \pipe_data_reg[6][12] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [12]),
        .Q(\pipe_data_reg[6] [12]));
  FDCE \pipe_data_reg[6][13] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [13]),
        .Q(\pipe_data_reg[6] [13]));
  FDCE \pipe_data_reg[6][14] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [14]),
        .Q(\pipe_data_reg[6] [14]));
  FDCE \pipe_data_reg[6][15] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [15]),
        .Q(\pipe_data_reg[6] [15]));
  FDCE \pipe_data_reg[6][1] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [1]),
        .Q(\pipe_data_reg[6] [1]));
  FDCE \pipe_data_reg[6][2] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [2]),
        .Q(\pipe_data_reg[6] [2]));
  FDCE \pipe_data_reg[6][3] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [3]),
        .Q(\pipe_data_reg[6] [3]));
  FDCE \pipe_data_reg[6][4] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [4]),
        .Q(\pipe_data_reg[6] [4]));
  FDCE \pipe_data_reg[6][5] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [5]),
        .Q(\pipe_data_reg[6] [5]));
  FDCE \pipe_data_reg[6][6] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [6]),
        .Q(\pipe_data_reg[6] [6]));
  FDCE \pipe_data_reg[6][7] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [7]),
        .Q(\pipe_data_reg[6] [7]));
  FDCE \pipe_data_reg[6][8] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [8]),
        .Q(\pipe_data_reg[6] [8]));
  FDCE \pipe_data_reg[6][9] 
       (.C(aclk),
        .CE(\pipe_data[6][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[5] [9]),
        .Q(\pipe_data_reg[6] [9]));
  FDCE \pipe_data_reg[7][0] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [0]),
        .Q(\pipe_data_reg[7] [0]));
  FDCE \pipe_data_reg[7][10] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [10]),
        .Q(\pipe_data_reg[7] [10]));
  FDCE \pipe_data_reg[7][11] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [11]),
        .Q(\pipe_data_reg[7] [11]));
  FDCE \pipe_data_reg[7][12] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [12]),
        .Q(\pipe_data_reg[7] [12]));
  FDCE \pipe_data_reg[7][13] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [13]),
        .Q(\pipe_data_reg[7] [13]));
  FDCE \pipe_data_reg[7][14] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [14]),
        .Q(\pipe_data_reg[7] [14]));
  FDCE \pipe_data_reg[7][15] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [15]),
        .Q(\pipe_data_reg[7] [15]));
  FDCE \pipe_data_reg[7][1] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [1]),
        .Q(\pipe_data_reg[7] [1]));
  FDCE \pipe_data_reg[7][2] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [2]),
        .Q(\pipe_data_reg[7] [2]));
  FDCE \pipe_data_reg[7][3] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [3]),
        .Q(\pipe_data_reg[7] [3]));
  FDCE \pipe_data_reg[7][4] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [4]),
        .Q(\pipe_data_reg[7] [4]));
  FDCE \pipe_data_reg[7][5] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [5]),
        .Q(\pipe_data_reg[7] [5]));
  FDCE \pipe_data_reg[7][6] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [6]),
        .Q(\pipe_data_reg[7] [6]));
  FDCE \pipe_data_reg[7][7] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [7]),
        .Q(\pipe_data_reg[7] [7]));
  FDCE \pipe_data_reg[7][8] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [8]),
        .Q(\pipe_data_reg[7] [8]));
  FDCE \pipe_data_reg[7][9] 
       (.C(aclk),
        .CE(\pipe_data[7][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[6] [9]),
        .Q(\pipe_data_reg[7] [9]));
  FDCE \pipe_data_reg[8][0] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [0]),
        .Q(\pipe_data_reg[8] [0]));
  FDCE \pipe_data_reg[8][10] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [10]),
        .Q(\pipe_data_reg[8] [10]));
  FDCE \pipe_data_reg[8][11] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [11]),
        .Q(\pipe_data_reg[8] [11]));
  FDCE \pipe_data_reg[8][12] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [12]),
        .Q(\pipe_data_reg[8] [12]));
  FDCE \pipe_data_reg[8][13] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [13]),
        .Q(\pipe_data_reg[8] [13]));
  FDCE \pipe_data_reg[8][14] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [14]),
        .Q(\pipe_data_reg[8] [14]));
  FDCE \pipe_data_reg[8][15] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [15]),
        .Q(\pipe_data_reg[8] [15]));
  FDCE \pipe_data_reg[8][1] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [1]),
        .Q(\pipe_data_reg[8] [1]));
  FDCE \pipe_data_reg[8][2] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [2]),
        .Q(\pipe_data_reg[8] [2]));
  FDCE \pipe_data_reg[8][3] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [3]),
        .Q(\pipe_data_reg[8] [3]));
  FDCE \pipe_data_reg[8][4] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [4]),
        .Q(\pipe_data_reg[8] [4]));
  FDCE \pipe_data_reg[8][5] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [5]),
        .Q(\pipe_data_reg[8] [5]));
  FDCE \pipe_data_reg[8][6] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [6]),
        .Q(\pipe_data_reg[8] [6]));
  FDCE \pipe_data_reg[8][7] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [7]),
        .Q(\pipe_data_reg[8] [7]));
  FDCE \pipe_data_reg[8][8] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [8]),
        .Q(\pipe_data_reg[8] [8]));
  FDCE \pipe_data_reg[8][9] 
       (.C(aclk),
        .CE(\pipe_data[8][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[7] [9]),
        .Q(\pipe_data_reg[8] [9]));
  FDCE \pipe_data_reg[9][0] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [0]),
        .Q(\pipe_data_reg[9] [0]));
  FDCE \pipe_data_reg[9][10] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [10]),
        .Q(\pipe_data_reg[9] [10]));
  FDCE \pipe_data_reg[9][11] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [11]),
        .Q(\pipe_data_reg[9] [11]));
  FDCE \pipe_data_reg[9][12] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [12]),
        .Q(\pipe_data_reg[9] [12]));
  FDCE \pipe_data_reg[9][13] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [13]),
        .Q(\pipe_data_reg[9] [13]));
  FDCE \pipe_data_reg[9][14] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [14]),
        .Q(\pipe_data_reg[9] [14]));
  FDCE \pipe_data_reg[9][15] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [15]),
        .Q(\pipe_data_reg[9] [15]));
  FDCE \pipe_data_reg[9][1] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [1]),
        .Q(\pipe_data_reg[9] [1]));
  FDCE \pipe_data_reg[9][2] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [2]),
        .Q(\pipe_data_reg[9] [2]));
  FDCE \pipe_data_reg[9][3] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [3]),
        .Q(\pipe_data_reg[9] [3]));
  FDCE \pipe_data_reg[9][4] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [4]),
        .Q(\pipe_data_reg[9] [4]));
  FDCE \pipe_data_reg[9][5] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [5]),
        .Q(\pipe_data_reg[9] [5]));
  FDCE \pipe_data_reg[9][6] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [6]),
        .Q(\pipe_data_reg[9] [6]));
  FDCE \pipe_data_reg[9][7] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [7]),
        .Q(\pipe_data_reg[9] [7]));
  FDCE \pipe_data_reg[9][8] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [8]),
        .Q(\pipe_data_reg[9] [8]));
  FDCE \pipe_data_reg[9][9] 
       (.C(aclk),
        .CE(\pipe_data[9][15]_i_1_n_0 ),
        .CLR(arstn_0),
        .D(\pipe_data_reg[8] [9]),
        .Q(\pipe_data_reg[9] [9]));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \pipe_valid[0]_i_1 
       (.I0(m_axis_result_tvalid),
        .I1(\pipe_valid_reg_n_0_[1] ),
        .I2(p_24_in),
        .I3(\pipe_valid_reg_n_0_[0] ),
        .O(\pipe_valid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    \pipe_valid[10]_i_1 
       (.I0(\pipe_valid_reg_n_0_[9] ),
        .I1(\pipe_valid_reg_n_0_[11] ),
        .I2(p_14_in),
        .I3(\pipe_valid_reg_n_0_[10] ),
        .O(\pipe_valid[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \pipe_valid[11]_i_1 
       (.I0(\pipe_valid_reg_n_0_[10] ),
        .I1(p_14_in),
        .I2(\pipe_valid_reg_n_0_[11] ),
        .O(\pipe_valid[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_valid[12]_i_1 
       (.I0(\pipe_valid_reg_n_0_[11] ),
        .I1(p_14_in),
        .I2(\pipe_valid_reg_n_0_[12] ),
        .O(\pipe_valid[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \pipe_valid[13]_i_1 
       (.I0(\pipe_valid_reg_n_0_[12] ),
        .I1(\pipe_valid_reg_n_0_[14] ),
        .I2(\pipe_valid_reg_n_0_[16] ),
        .I3(p_9_in),
        .I4(\pipe_valid_reg_n_0_[15] ),
        .I5(\pipe_valid_reg_n_0_[13] ),
        .O(\pipe_valid[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \pipe_valid[13]_i_2 
       (.I0(\pipe_valid_reg_n_0_[18] ),
        .I1(\pipe_valid_reg_n_0_[20] ),
        .I2(p_4_in),
        .I3(\pipe_valid_reg_n_0_[21] ),
        .I4(\pipe_valid_reg_n_0_[19] ),
        .I5(\pipe_valid_reg_n_0_[17] ),
        .O(p_9_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \pipe_valid[14]_i_1 
       (.I0(\pipe_valid_reg_n_0_[13] ),
        .I1(\pipe_valid_reg_n_0_[15] ),
        .I2(p_9_in),
        .I3(\pipe_valid_reg_n_0_[16] ),
        .I4(\pipe_valid_reg_n_0_[14] ),
        .O(\pipe_valid[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    \pipe_valid[15]_i_1 
       (.I0(\pipe_valid_reg_n_0_[14] ),
        .I1(\pipe_valid_reg_n_0_[16] ),
        .I2(p_9_in),
        .I3(\pipe_valid_reg_n_0_[15] ),
        .O(\pipe_valid[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \pipe_valid[16]_i_1 
       (.I0(\pipe_valid_reg_n_0_[15] ),
        .I1(p_9_in),
        .I2(\pipe_valid_reg_n_0_[16] ),
        .O(\pipe_valid[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_valid[17]_i_1 
       (.I0(\pipe_valid_reg_n_0_[16] ),
        .I1(p_9_in),
        .I2(\pipe_valid_reg_n_0_[17] ),
        .O(\pipe_valid[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \pipe_valid[18]_i_1 
       (.I0(\pipe_valid_reg_n_0_[17] ),
        .I1(\pipe_valid_reg_n_0_[19] ),
        .I2(\pipe_valid_reg_n_0_[21] ),
        .I3(p_4_in),
        .I4(\pipe_valid_reg_n_0_[20] ),
        .I5(\pipe_valid_reg_n_0_[18] ),
        .O(\pipe_valid[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \pipe_valid[18]_i_2 
       (.I0(\pipe_valid_reg_n_0_[23] ),
        .I1(\pipe_valid_reg_n_0_[25] ),
        .I2(s_axis_b_tready),
        .I3(tvalid_align),
        .I4(\pipe_valid_reg_n_0_[24] ),
        .I5(\pipe_valid_reg_n_0_[22] ),
        .O(p_4_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \pipe_valid[19]_i_1 
       (.I0(\pipe_valid_reg_n_0_[18] ),
        .I1(\pipe_valid_reg_n_0_[20] ),
        .I2(p_4_in),
        .I3(\pipe_valid_reg_n_0_[21] ),
        .I4(\pipe_valid_reg_n_0_[19] ),
        .O(\pipe_valid[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \pipe_valid[1]_i_1 
       (.I0(\pipe_valid_reg_n_0_[0] ),
        .I1(p_24_in),
        .I2(\pipe_valid_reg_n_0_[1] ),
        .O(\pipe_valid[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    \pipe_valid[20]_i_1 
       (.I0(\pipe_valid_reg_n_0_[19] ),
        .I1(\pipe_valid_reg_n_0_[21] ),
        .I2(p_4_in),
        .I3(\pipe_valid_reg_n_0_[20] ),
        .O(\pipe_valid[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \pipe_valid[21]_i_1 
       (.I0(\pipe_valid_reg_n_0_[20] ),
        .I1(p_4_in),
        .I2(\pipe_valid_reg_n_0_[21] ),
        .O(\pipe_valid[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_valid[22]_i_1 
       (.I0(\pipe_valid_reg_n_0_[21] ),
        .I1(p_4_in),
        .I2(\pipe_valid_reg_n_0_[22] ),
        .O(\pipe_valid[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \pipe_valid[23]_i_1 
       (.I0(\pipe_valid_reg_n_0_[22] ),
        .I1(\pipe_valid_reg_n_0_[24] ),
        .I2(tvalid_align),
        .I3(s_axis_b_tready),
        .I4(\pipe_valid_reg_n_0_[25] ),
        .I5(\pipe_valid_reg_n_0_[23] ),
        .O(\pipe_valid[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \pipe_valid[24]_i_1 
       (.I0(\pipe_valid_reg_n_0_[23] ),
        .I1(\pipe_valid_reg_n_0_[25] ),
        .I2(s_axis_b_tready),
        .I3(tvalid_align),
        .I4(\pipe_valid_reg_n_0_[24] ),
        .O(\pipe_valid[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    \pipe_valid[25]_i_1 
       (.I0(\pipe_valid_reg_n_0_[24] ),
        .I1(tvalid_align),
        .I2(s_axis_b_tready),
        .I3(\pipe_valid_reg_n_0_[25] ),
        .O(\pipe_valid[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \pipe_valid[26]_i_1 
       (.I0(\pipe_valid_reg_n_0_[25] ),
        .I1(s_axis_b_tready),
        .I2(tvalid_align),
        .O(\pipe_valid[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_valid[2]_i_1 
       (.I0(\pipe_valid_reg_n_0_[1] ),
        .I1(p_24_in),
        .I2(\pipe_valid_reg_n_0_[2] ),
        .O(\pipe_valid[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \pipe_valid[3]_i_1 
       (.I0(\pipe_valid_reg_n_0_[2] ),
        .I1(\pipe_valid_reg_n_0_[4] ),
        .I2(\pipe_valid_reg_n_0_[6] ),
        .I3(p_19_in),
        .I4(\pipe_valid_reg_n_0_[5] ),
        .I5(\pipe_valid_reg_n_0_[3] ),
        .O(\pipe_valid[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \pipe_valid[3]_i_2 
       (.I0(\pipe_valid_reg_n_0_[8] ),
        .I1(\pipe_valid_reg_n_0_[10] ),
        .I2(p_14_in),
        .I3(\pipe_valid_reg_n_0_[11] ),
        .I4(\pipe_valid_reg_n_0_[9] ),
        .I5(\pipe_valid_reg_n_0_[7] ),
        .O(p_19_in));
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \pipe_valid[4]_i_1 
       (.I0(\pipe_valid_reg_n_0_[3] ),
        .I1(\pipe_valid_reg_n_0_[5] ),
        .I2(p_19_in),
        .I3(\pipe_valid_reg_n_0_[6] ),
        .I4(\pipe_valid_reg_n_0_[4] ),
        .O(\pipe_valid[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \pipe_valid[5]_i_1 
       (.I0(\pipe_valid_reg_n_0_[4] ),
        .I1(\pipe_valid_reg_n_0_[6] ),
        .I2(p_19_in),
        .I3(\pipe_valid_reg_n_0_[5] ),
        .O(\pipe_valid[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \pipe_valid[6]_i_1 
       (.I0(\pipe_valid_reg_n_0_[5] ),
        .I1(p_19_in),
        .I2(\pipe_valid_reg_n_0_[6] ),
        .O(\pipe_valid[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_valid[7]_i_1 
       (.I0(\pipe_valid_reg_n_0_[6] ),
        .I1(p_19_in),
        .I2(\pipe_valid_reg_n_0_[7] ),
        .O(\pipe_valid[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \pipe_valid[8]_i_1 
       (.I0(\pipe_valid_reg_n_0_[7] ),
        .I1(\pipe_valid_reg_n_0_[9] ),
        .I2(\pipe_valid_reg_n_0_[11] ),
        .I3(p_14_in),
        .I4(\pipe_valid_reg_n_0_[10] ),
        .I5(\pipe_valid_reg_n_0_[8] ),
        .O(\pipe_valid[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \pipe_valid[8]_i_2 
       (.I0(\pipe_valid_reg_n_0_[13] ),
        .I1(\pipe_valid_reg_n_0_[15] ),
        .I2(p_9_in),
        .I3(\pipe_valid_reg_n_0_[16] ),
        .I4(\pipe_valid_reg_n_0_[14] ),
        .I5(\pipe_valid_reg_n_0_[12] ),
        .O(p_14_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \pipe_valid[9]_i_1 
       (.I0(\pipe_valid_reg_n_0_[8] ),
        .I1(\pipe_valid_reg_n_0_[10] ),
        .I2(p_14_in),
        .I3(\pipe_valid_reg_n_0_[11] ),
        .I4(\pipe_valid_reg_n_0_[9] ),
        .O(\pipe_valid[9]_i_1_n_0 ));
  FDCE \pipe_valid_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[0]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[0] ));
  FDCE \pipe_valid_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[10]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[10] ));
  FDCE \pipe_valid_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[11]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[11] ));
  FDCE \pipe_valid_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[12]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[12] ));
  FDCE \pipe_valid_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[13]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[13] ));
  FDCE \pipe_valid_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[14]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[14] ));
  FDCE \pipe_valid_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[15]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[15] ));
  FDCE \pipe_valid_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[16]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[16] ));
  FDCE \pipe_valid_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[17]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[17] ));
  FDCE \pipe_valid_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[18]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[18] ));
  FDCE \pipe_valid_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[19]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[19] ));
  FDCE \pipe_valid_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[1]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[1] ));
  FDCE \pipe_valid_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[20]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[20] ));
  FDCE \pipe_valid_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[21]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[21] ));
  FDCE \pipe_valid_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[22]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[22] ));
  FDCE \pipe_valid_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[23]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[23] ));
  FDCE \pipe_valid_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[24]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[24] ));
  FDCE \pipe_valid_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[25]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[25] ));
  FDCE \pipe_valid_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[26]_i_1_n_0 ),
        .Q(tvalid_align));
  FDCE \pipe_valid_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[2]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[2] ));
  FDCE \pipe_valid_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[3]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[3] ));
  FDCE \pipe_valid_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[4]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[4] ));
  FDCE \pipe_valid_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[5]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[5] ));
  FDCE \pipe_valid_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[6]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[6] ));
  FDCE \pipe_valid_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[7]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[7] ));
  FDCE \pipe_valid_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[8]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[8] ));
  FDCE \pipe_valid_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arstn_0),
        .D(\pipe_valid[9]_i_1_n_0 ),
        .Q(\pipe_valid_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hDF00000000000000)) 
    u_epsilon_i_1
       (.I0(\pipe_valid_reg_n_0_[1] ),
        .I1(p_24_in),
        .I2(\pipe_valid_reg_n_0_[0] ),
        .I3(s_axis_a_tready),
        .I4(u_epsilon),
        .I5(u_epsilon_0),
        .O(m_axis_result_tready));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    u_epsilon_i_2
       (.I0(\pipe_valid_reg_n_0_[3] ),
        .I1(\pipe_valid_reg_n_0_[5] ),
        .I2(p_19_in),
        .I3(\pipe_valid_reg_n_0_[6] ),
        .I4(\pipe_valid_reg_n_0_[4] ),
        .I5(\pipe_valid_reg_n_0_[2] ),
        .O(p_24_in));
  LUT1 #(
    .INIT(2'h1)) 
    u_newton1_i_1
       (.I0(m_axis_result_tdata[1]),
        .O(D[1]));
  LUT1 #(
    .INIT(2'h1)) 
    u_newton1_i_2
       (.I0(m_axis_result_tdata[0]),
        .O(D[0]));
endmodule

(* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bf_mul" *) 
(* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
module Layernorm_rms_norm_top_0_0_bf_mul
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
module Layernorm_rms_norm_top_0_0_bf_mul_HD1
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
module Layernorm_rms_norm_top_0_0_bf_sub
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

(* CHECK_LICENSE_TYPE = "c_shift_ram_3,c_shift_ram_v12_0_18,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "c_shift_ram_3" *) 
(* X_CORE_INFO = "c_shift_ram_v12_0_18,Vivado 2024.2" *) 
module Layernorm_rms_norm_top_0_0_c_shift_ram_3
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

(* ORIG_REF_NAME = "inv_fifo" *) 
module Layernorm_rms_norm_top_0_0_inv_fifo
   (Q,
    S_AXIS_TREADY,
    top_ready,
    \m_axis_tvalid_reg[44]_0 ,
    S_AXIS_TDATA,
    aclk,
    s_axis_a_tready,
    S_AXIS_TVALID,
    data_ready,
    rms_ready,
    \m_axis_tvalid_reg[44]_1 );
  output [127:0]Q;
  output S_AXIS_TREADY;
  output top_ready;
  output [0:0]\m_axis_tvalid_reg[44]_0 ;
  input [127:0]S_AXIS_TDATA;
  input aclk;
  input s_axis_a_tready;
  input S_AXIS_TVALID;
  input [7:0]data_ready;
  input [7:0]rms_ready;
  input \m_axis_tvalid_reg[44]_1 ;

  wire [127:0]Q;
  wire [127:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TREADY_INST_0_i_2_n_0;
  wire S_AXIS_TREADY_INST_0_i_3_n_0;
  wire S_AXIS_TREADY_INST_0_i_4_n_0;
  wire S_AXIS_TVALID;
  wire aclk;
  wire [7:0]data_ready;
  wire m_axis_tvalid1;
  wire [0:0]\m_axis_tvalid_reg[44]_0 ;
  wire \m_axis_tvalid_reg[44]_1 ;
  wire \m_axis_tvalid_reg_n_0_[0] ;
  wire \m_axis_tvalid_reg_n_0_[10] ;
  wire \m_axis_tvalid_reg_n_0_[11] ;
  wire \m_axis_tvalid_reg_n_0_[12] ;
  wire \m_axis_tvalid_reg_n_0_[13] ;
  wire \m_axis_tvalid_reg_n_0_[14] ;
  wire \m_axis_tvalid_reg_n_0_[15] ;
  wire \m_axis_tvalid_reg_n_0_[16] ;
  wire \m_axis_tvalid_reg_n_0_[17] ;
  wire \m_axis_tvalid_reg_n_0_[18] ;
  wire \m_axis_tvalid_reg_n_0_[19] ;
  wire \m_axis_tvalid_reg_n_0_[1] ;
  wire \m_axis_tvalid_reg_n_0_[20] ;
  wire \m_axis_tvalid_reg_n_0_[21] ;
  wire \m_axis_tvalid_reg_n_0_[22] ;
  wire \m_axis_tvalid_reg_n_0_[23] ;
  wire \m_axis_tvalid_reg_n_0_[24] ;
  wire \m_axis_tvalid_reg_n_0_[25] ;
  wire \m_axis_tvalid_reg_n_0_[26] ;
  wire \m_axis_tvalid_reg_n_0_[27] ;
  wire \m_axis_tvalid_reg_n_0_[28] ;
  wire \m_axis_tvalid_reg_n_0_[29] ;
  wire \m_axis_tvalid_reg_n_0_[2] ;
  wire \m_axis_tvalid_reg_n_0_[30] ;
  wire \m_axis_tvalid_reg_n_0_[31] ;
  wire \m_axis_tvalid_reg_n_0_[32] ;
  wire \m_axis_tvalid_reg_n_0_[33] ;
  wire \m_axis_tvalid_reg_n_0_[34] ;
  wire \m_axis_tvalid_reg_n_0_[35] ;
  wire \m_axis_tvalid_reg_n_0_[36] ;
  wire \m_axis_tvalid_reg_n_0_[37] ;
  wire \m_axis_tvalid_reg_n_0_[38] ;
  wire \m_axis_tvalid_reg_n_0_[39] ;
  wire \m_axis_tvalid_reg_n_0_[3] ;
  wire \m_axis_tvalid_reg_n_0_[40] ;
  wire \m_axis_tvalid_reg_n_0_[41] ;
  wire \m_axis_tvalid_reg_n_0_[42] ;
  wire \m_axis_tvalid_reg_n_0_[43] ;
  wire \m_axis_tvalid_reg_n_0_[4] ;
  wire \m_axis_tvalid_reg_n_0_[5] ;
  wire \m_axis_tvalid_reg_n_0_[6] ;
  wire \m_axis_tvalid_reg_n_0_[7] ;
  wire \m_axis_tvalid_reg_n_0_[8] ;
  wire \m_axis_tvalid_reg_n_0_[9] ;
  wire [7:0]rms_ready;
  wire s_axis_a_tready;
  wire shift_ram_u_i_1_n_0;
  wire top_ready;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    S_AXIS_TREADY_INST_0
       (.I0(top_ready),
        .I1(\m_axis_tvalid_reg[44]_0 ),
        .I2(s_axis_a_tready),
        .O(S_AXIS_TREADY));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    S_AXIS_TREADY_INST_0_i_1
       (.I0(S_AXIS_TREADY_INST_0_i_2_n_0),
        .I1(data_ready[1]),
        .I2(data_ready[0]),
        .I3(data_ready[3]),
        .I4(data_ready[2]),
        .I5(S_AXIS_TREADY_INST_0_i_3_n_0),
        .O(top_ready));
  LUT4 #(
    .INIT(16'h7FFF)) 
    S_AXIS_TREADY_INST_0_i_2
       (.I0(data_ready[5]),
        .I1(data_ready[4]),
        .I2(data_ready[7]),
        .I3(data_ready[6]),
        .O(S_AXIS_TREADY_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    S_AXIS_TREADY_INST_0_i_3
       (.I0(rms_ready[2]),
        .I1(rms_ready[3]),
        .I2(rms_ready[0]),
        .I3(rms_ready[1]),
        .I4(S_AXIS_TREADY_INST_0_i_4_n_0),
        .O(S_AXIS_TREADY_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    S_AXIS_TREADY_INST_0_i_4
       (.I0(rms_ready[5]),
        .I1(rms_ready[4]),
        .I2(rms_ready[7]),
        .I3(rms_ready[6]),
        .O(S_AXIS_TREADY_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \m_axis_tvalid[0]_i_1 
       (.I0(top_ready),
        .I1(\m_axis_tvalid_reg[44]_0 ),
        .I2(S_AXIS_TVALID),
        .O(m_axis_tvalid1));
  FDCE \m_axis_tvalid_reg[0] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(m_axis_tvalid1),
        .Q(\m_axis_tvalid_reg_n_0_[0] ));
  FDCE \m_axis_tvalid_reg[10] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[9] ),
        .Q(\m_axis_tvalid_reg_n_0_[10] ));
  FDCE \m_axis_tvalid_reg[11] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[10] ),
        .Q(\m_axis_tvalid_reg_n_0_[11] ));
  FDCE \m_axis_tvalid_reg[12] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[11] ),
        .Q(\m_axis_tvalid_reg_n_0_[12] ));
  FDCE \m_axis_tvalid_reg[13] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[12] ),
        .Q(\m_axis_tvalid_reg_n_0_[13] ));
  FDCE \m_axis_tvalid_reg[14] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[13] ),
        .Q(\m_axis_tvalid_reg_n_0_[14] ));
  FDCE \m_axis_tvalid_reg[15] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[14] ),
        .Q(\m_axis_tvalid_reg_n_0_[15] ));
  FDCE \m_axis_tvalid_reg[16] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[15] ),
        .Q(\m_axis_tvalid_reg_n_0_[16] ));
  FDCE \m_axis_tvalid_reg[17] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[16] ),
        .Q(\m_axis_tvalid_reg_n_0_[17] ));
  FDCE \m_axis_tvalid_reg[18] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[17] ),
        .Q(\m_axis_tvalid_reg_n_0_[18] ));
  FDCE \m_axis_tvalid_reg[19] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[18] ),
        .Q(\m_axis_tvalid_reg_n_0_[19] ));
  FDCE \m_axis_tvalid_reg[1] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[0] ),
        .Q(\m_axis_tvalid_reg_n_0_[1] ));
  FDCE \m_axis_tvalid_reg[20] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[19] ),
        .Q(\m_axis_tvalid_reg_n_0_[20] ));
  FDCE \m_axis_tvalid_reg[21] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[20] ),
        .Q(\m_axis_tvalid_reg_n_0_[21] ));
  FDCE \m_axis_tvalid_reg[22] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[21] ),
        .Q(\m_axis_tvalid_reg_n_0_[22] ));
  FDCE \m_axis_tvalid_reg[23] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[22] ),
        .Q(\m_axis_tvalid_reg_n_0_[23] ));
  FDCE \m_axis_tvalid_reg[24] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[23] ),
        .Q(\m_axis_tvalid_reg_n_0_[24] ));
  FDCE \m_axis_tvalid_reg[25] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[24] ),
        .Q(\m_axis_tvalid_reg_n_0_[25] ));
  FDCE \m_axis_tvalid_reg[26] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[25] ),
        .Q(\m_axis_tvalid_reg_n_0_[26] ));
  FDCE \m_axis_tvalid_reg[27] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[26] ),
        .Q(\m_axis_tvalid_reg_n_0_[27] ));
  FDCE \m_axis_tvalid_reg[28] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[27] ),
        .Q(\m_axis_tvalid_reg_n_0_[28] ));
  FDCE \m_axis_tvalid_reg[29] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[28] ),
        .Q(\m_axis_tvalid_reg_n_0_[29] ));
  FDCE \m_axis_tvalid_reg[2] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[1] ),
        .Q(\m_axis_tvalid_reg_n_0_[2] ));
  FDCE \m_axis_tvalid_reg[30] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[29] ),
        .Q(\m_axis_tvalid_reg_n_0_[30] ));
  FDCE \m_axis_tvalid_reg[31] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[30] ),
        .Q(\m_axis_tvalid_reg_n_0_[31] ));
  FDCE \m_axis_tvalid_reg[32] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[31] ),
        .Q(\m_axis_tvalid_reg_n_0_[32] ));
  FDCE \m_axis_tvalid_reg[33] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[32] ),
        .Q(\m_axis_tvalid_reg_n_0_[33] ));
  FDCE \m_axis_tvalid_reg[34] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[33] ),
        .Q(\m_axis_tvalid_reg_n_0_[34] ));
  FDCE \m_axis_tvalid_reg[35] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[34] ),
        .Q(\m_axis_tvalid_reg_n_0_[35] ));
  FDCE \m_axis_tvalid_reg[36] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[35] ),
        .Q(\m_axis_tvalid_reg_n_0_[36] ));
  FDCE \m_axis_tvalid_reg[37] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[36] ),
        .Q(\m_axis_tvalid_reg_n_0_[37] ));
  FDCE \m_axis_tvalid_reg[38] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[37] ),
        .Q(\m_axis_tvalid_reg_n_0_[38] ));
  FDCE \m_axis_tvalid_reg[39] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[38] ),
        .Q(\m_axis_tvalid_reg_n_0_[39] ));
  FDCE \m_axis_tvalid_reg[3] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[2] ),
        .Q(\m_axis_tvalid_reg_n_0_[3] ));
  FDCE \m_axis_tvalid_reg[40] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[39] ),
        .Q(\m_axis_tvalid_reg_n_0_[40] ));
  FDCE \m_axis_tvalid_reg[41] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[40] ),
        .Q(\m_axis_tvalid_reg_n_0_[41] ));
  FDCE \m_axis_tvalid_reg[42] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[41] ),
        .Q(\m_axis_tvalid_reg_n_0_[42] ));
  FDCE \m_axis_tvalid_reg[43] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[42] ),
        .Q(\m_axis_tvalid_reg_n_0_[43] ));
  FDCE \m_axis_tvalid_reg[44] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[43] ),
        .Q(\m_axis_tvalid_reg[44]_0 ));
  FDCE \m_axis_tvalid_reg[4] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[3] ),
        .Q(\m_axis_tvalid_reg_n_0_[4] ));
  FDCE \m_axis_tvalid_reg[5] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[4] ),
        .Q(\m_axis_tvalid_reg_n_0_[5] ));
  FDCE \m_axis_tvalid_reg[6] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[5] ),
        .Q(\m_axis_tvalid_reg_n_0_[6] ));
  FDCE \m_axis_tvalid_reg[7] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[6] ),
        .Q(\m_axis_tvalid_reg_n_0_[7] ));
  FDCE \m_axis_tvalid_reg[8] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[7] ),
        .Q(\m_axis_tvalid_reg_n_0_[8] ));
  FDCE \m_axis_tvalid_reg[9] 
       (.C(aclk),
        .CE(shift_ram_u_i_1_n_0),
        .CLR(\m_axis_tvalid_reg[44]_1 ),
        .D(\m_axis_tvalid_reg_n_0_[8] ),
        .Q(\m_axis_tvalid_reg_n_0_[9] ));
  (* CHECK_LICENSE_TYPE = "c_shift_ram_3,c_shift_ram_v12_0_18,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "c_shift_ram_v12_0_18,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_c_shift_ram_3 shift_ram_u
       (.CE(shift_ram_u_i_1_n_0),
        .CLK(aclk),
        .D(S_AXIS_TDATA),
        .Q(Q));
  LUT3 #(
    .INIT(8'hF2)) 
    shift_ram_u_i_1
       (.I0(S_AXIS_TVALID),
        .I1(\m_axis_tvalid_reg[44]_0 ),
        .I2(top_ready),
        .O(shift_ram_u_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "inv_sqrt" *) 
module Layernorm_rms_norm_top_0_0_inv_sqrt
   (\bbstub_m_axis_result_tdata[15] ,
    arstn_0,
    s_axis_b_tvalid,
    m_axis_result_tready,
    aclk,
    arstn,
    m_axis_result_tvalid,
    m_axis_result_tdata,
    top_ready,
    \M_AXIS_TDATA[127] );
  output [15:0]\bbstub_m_axis_result_tdata[15] ;
  output arstn_0;
  output s_axis_b_tvalid;
  output m_axis_result_tready;
  input aclk;
  input arstn;
  input m_axis_result_tvalid;
  input [15:0]m_axis_result_tdata;
  input top_ready;
  input [0:0]\M_AXIS_TDATA[127] ;

  wire [0:0]\M_AXIS_TDATA[127] ;
  wire S_AXIS_TREADY1;
  wire S_AXIS_TREADY2;
  wire S_AXIS_TREADY3;
  wire aclk;
  wire arstn;
  wire arstn_0;
  wire [15:0]\bbstub_m_axis_result_tdata[15] ;
  wire [15:0]data1;
  wire [15:2]data2;
  wire [15:0]data2_align;
  wire data2_carry__0_n_0;
  wire data2_carry__0_n_1;
  wire data2_carry__0_n_2;
  wire data2_carry__0_n_3;
  wire data2_carry__1_n_0;
  wire data2_carry__1_n_1;
  wire data2_carry__1_n_2;
  wire data2_carry__1_n_3;
  wire data2_carry__2_n_3;
  wire data2_carry_n_0;
  wire data2_carry_n_1;
  wire data2_carry_n_2;
  wire data2_carry_n_3;
  wire [15:0]data_newton1;
  wire [15:0]data_newton2;
  wire [15:0]data_newton3;
  wire invsqrt_valid;
  wire [15:0]m_axis_result_tdata;
  wire m_axis_result_tready;
  wire m_axis_result_tvalid;
  wire [1:0]p_0_in;
  wire [14:2]p_0_in__0;
  wire s_axis_b_tvalid;
  wire top_ready;
  wire tready_align;
  wire tready_gethalf;
  wire tready_newton1;
  wire tready_newton2;
  wire tready_newton3;
  wire tvalid_align;
  wire tvalid_gethalf;
  wire tvalid_newton1;
  wire tvalid_newton2;
  wire tvalid_newton3;
  wire [3:1]NLW_data2_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_data2_carry__2_O_UNCONNECTED;
  wire NLW_u_gethalf_s_axis_b_tready_UNCONNECTED;
  wire NLW_u_newton3_s_axis_a_tready_UNCONNECTED;

  CARRY4 data2_carry
       (.CI(1'b0),
        .CO({data2_carry_n_0,data2_carry_n_1,data2_carry_n_2,data2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({p_0_in__0[5:3],1'b0}),
        .O(data2[5:2]),
        .S({m_axis_result_tdata[6:4],p_0_in__0[2]}));
  CARRY4 data2_carry__0
       (.CI(data2_carry_n_0),
        .CO({data2_carry__0_n_0,data2_carry__0_n_1,data2_carry__0_n_2,data2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({p_0_in__0[9:8],1'b0,1'b0}),
        .O(data2[9:6]),
        .S({m_axis_result_tdata[10:9],p_0_in__0[7:6]}));
  LUT1 #(
    .INIT(2'h1)) 
    data2_carry__0_i_1
       (.I0(m_axis_result_tdata[10]),
        .O(p_0_in__0[9]));
  LUT1 #(
    .INIT(2'h1)) 
    data2_carry__0_i_2
       (.I0(m_axis_result_tdata[9]),
        .O(p_0_in__0[8]));
  LUT1 #(
    .INIT(2'h1)) 
    data2_carry__0_i_3
       (.I0(m_axis_result_tdata[8]),
        .O(p_0_in__0[7]));
  LUT1 #(
    .INIT(2'h1)) 
    data2_carry__0_i_4
       (.I0(m_axis_result_tdata[7]),
        .O(p_0_in__0[6]));
  CARRY4 data2_carry__1
       (.CI(data2_carry__0_n_0),
        .CO({data2_carry__1_n_0,data2_carry__1_n_1,data2_carry__1_n_2,data2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,p_0_in__0[12:10]}),
        .O(data2[13:10]),
        .S({p_0_in__0[13],m_axis_result_tdata[13:11]}));
  LUT1 #(
    .INIT(2'h1)) 
    data2_carry__1_i_1
       (.I0(m_axis_result_tdata[13]),
        .O(p_0_in__0[12]));
  LUT1 #(
    .INIT(2'h1)) 
    data2_carry__1_i_2
       (.I0(m_axis_result_tdata[12]),
        .O(p_0_in__0[11]));
  LUT1 #(
    .INIT(2'h1)) 
    data2_carry__1_i_3
       (.I0(m_axis_result_tdata[11]),
        .O(p_0_in__0[10]));
  LUT1 #(
    .INIT(2'h1)) 
    data2_carry__1_i_4
       (.I0(m_axis_result_tdata[14]),
        .O(p_0_in__0[13]));
  CARRY4 data2_carry__2
       (.CI(data2_carry__1_n_0),
        .CO({NLW_data2_carry__2_CO_UNCONNECTED[3:1],data2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in__0[14]}),
        .O({NLW_data2_carry__2_O_UNCONNECTED[3:2],data2[15:14]}),
        .S({1'b0,1'b0,1'b1,m_axis_result_tdata[15]}));
  LUT1 #(
    .INIT(2'h1)) 
    data2_carry_i_1
       (.I0(m_axis_result_tdata[6]),
        .O(p_0_in__0[5]));
  LUT1 #(
    .INIT(2'h1)) 
    data2_carry_i_2
       (.I0(m_axis_result_tdata[5]),
        .O(p_0_in__0[4]));
  LUT1 #(
    .INIT(2'h1)) 
    data2_carry_i_3
       (.I0(m_axis_result_tdata[4]),
        .O(p_0_in__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    data2_carry_i_4
       (.I0(m_axis_result_tdata[3]),
        .O(p_0_in__0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \mul_invsqrtrms[7].mul_i_1 
       (.I0(invsqrt_valid),
        .I1(\M_AXIS_TDATA[127] ),
        .O(s_axis_b_tvalid));
  Layernorm_rms_norm_top_0_0_bf_fifo u_fifo
       (.D(p_0_in),
        .DI(p_0_in__0[14]),
        .Q(data2_align),
        .aclk(aclk),
        .arstn(arstn),
        .arstn_0(arstn_0),
        .m_axis_result_tdata({m_axis_result_tdata[15],m_axis_result_tdata[2:1]}),
        .m_axis_result_tready(m_axis_result_tready),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .\pipe_data_reg[0][15]_0 (data2),
        .s_axis_a_tready(S_AXIS_TREADY1),
        .s_axis_b_tready(tready_align),
        .tvalid_align(tvalid_align),
        .u_epsilon(S_AXIS_TREADY2),
        .u_epsilon_0(S_AXIS_TREADY3));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_mul u_gethalf
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(data1),
        .m_axis_result_tready(tready_gethalf),
        .m_axis_result_tvalid(tvalid_gethalf),
        .s_axis_a_tdata(m_axis_result_tdata),
        .s_axis_a_tready(S_AXIS_TREADY1),
        .s_axis_a_tvalid(m_axis_result_tvalid),
        .s_axis_b_tdata({1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tready(NLW_u_gethalf_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tvalid(1'b1));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_mul u_newton1
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(data_newton1),
        .m_axis_result_tready(tready_newton1),
        .m_axis_result_tvalid(tvalid_newton1),
        .s_axis_a_tdata({data2,p_0_in}),
        .s_axis_a_tready(S_AXIS_TREADY2),
        .s_axis_a_tvalid(m_axis_result_tvalid),
        .s_axis_b_tdata({data2,p_0_in}),
        .s_axis_b_tready(S_AXIS_TREADY3),
        .s_axis_b_tvalid(m_axis_result_tvalid));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_mul u_newton2
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(data_newton2),
        .m_axis_result_tready(tready_newton2),
        .m_axis_result_tvalid(tvalid_newton2),
        .s_axis_a_tdata(data1),
        .s_axis_a_tready(tready_gethalf),
        .s_axis_a_tvalid(tvalid_gethalf),
        .s_axis_b_tdata(data_newton1),
        .s_axis_b_tready(tready_newton1),
        .s_axis_b_tvalid(tvalid_newton1));
  (* CHECK_LICENSE_TYPE = "bf_sub,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_sub u_newton3
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(data_newton3),
        .m_axis_result_tready(tready_newton3),
        .m_axis_result_tvalid(tvalid_newton3),
        .s_axis_a_tdata({1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_a_tready(NLW_u_newton3_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tvalid(1'b1),
        .s_axis_b_tdata(data_newton2),
        .s_axis_b_tready(tready_newton2),
        .s_axis_b_tvalid(tvalid_newton2));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_mul_HD1 u_newton4
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(\bbstub_m_axis_result_tdata[15] ),
        .m_axis_result_tready(top_ready),
        .m_axis_result_tvalid(invsqrt_valid),
        .s_axis_a_tdata(data_newton3),
        .s_axis_a_tready(tready_newton3),
        .s_axis_a_tvalid(tvalid_newton3),
        .s_axis_b_tdata(data2_align),
        .s_axis_b_tready(tready_align),
        .s_axis_b_tvalid(tvalid_align));
endmodule

(* ORIG_REF_NAME = "inv_sqrt_top" *) 
module Layernorm_rms_norm_top_0_0_inv_sqrt_top
   (Q,
    m_axis_result_tdata,
    S_AXIS_TREADY,
    s_axis_b_tvalid,
    S_AXIS_TDATA,
    aclk,
    arstn,
    S_AXIS_TVALID,
    data_ready,
    rms_ready);
  output [127:0]Q;
  output [15:0]m_axis_result_tdata;
  output S_AXIS_TREADY;
  output s_axis_b_tvalid;
  input [143:0]S_AXIS_TDATA;
  input aclk;
  input arstn;
  input S_AXIS_TVALID;
  input [7:0]data_ready;
  input [7:0]rms_ready;

  wire [127:0]Q;
  wire [143:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire aclk;
  wire align_valid;
  wire arstn;
  wire [7:0]data_ready;
  wire [15:0]m_axis_result_tdata;
  wire [15:0]ms_eps_data;
  wire ms_eps_ready;
  wire ms_eps_valid;
  wire ms_ready;
  wire [7:0]rms_ready;
  wire s_axis_b_tvalid;
  wire top_ready;
  wire u_inv_sqrt_n_16;
  wire NLW_u_epsilon_s_axis_b_tready_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "bf_add,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_add u_epsilon
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(ms_eps_data),
        .m_axis_result_tready(ms_eps_ready),
        .m_axis_result_tvalid(ms_eps_valid),
        .s_axis_a_tdata(S_AXIS_TDATA[15:0]),
        .s_axis_a_tready(ms_ready),
        .s_axis_a_tvalid(S_AXIS_TVALID),
        .s_axis_b_tdata({1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .s_axis_b_tready(NLW_u_epsilon_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tvalid(S_AXIS_TVALID));
  Layernorm_rms_norm_top_0_0_inv_fifo u_inv_fifo
       (.Q(Q),
        .S_AXIS_TDATA(S_AXIS_TDATA[143:16]),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .aclk(aclk),
        .data_ready(data_ready),
        .\m_axis_tvalid_reg[44]_0 (align_valid),
        .\m_axis_tvalid_reg[44]_1 (u_inv_sqrt_n_16),
        .rms_ready(rms_ready),
        .s_axis_a_tready(ms_ready),
        .top_ready(top_ready));
  Layernorm_rms_norm_top_0_0_inv_sqrt u_inv_sqrt
       (.\M_AXIS_TDATA[127] (align_valid),
        .aclk(aclk),
        .arstn(arstn),
        .arstn_0(u_inv_sqrt_n_16),
        .\bbstub_m_axis_result_tdata[15] (m_axis_result_tdata),
        .m_axis_result_tdata(ms_eps_data),
        .m_axis_result_tready(ms_eps_ready),
        .m_axis_result_tvalid(ms_eps_valid),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .top_ready(top_ready));
endmodule

(* ORIG_REF_NAME = "rms_norm_top" *) 
module Layernorm_rms_norm_top_0_0_rms_norm_top
   (aclk,
    arstn,
    S_AXIS_TDATA,
    S_AXIS_TVALID,
    S_AXIS_TREADY,
    M_AXIS_TDATA,
    M_AXIS_TVALID,
    M_AXIS_TREADY);
  input aclk;
  input arstn;
  input [143:0]S_AXIS_TDATA;
  input S_AXIS_TVALID;
  output S_AXIS_TREADY;
  output [127:0]M_AXIS_TDATA;
  output M_AXIS_TVALID;
  input M_AXIS_TREADY;

  wire [127:0]M_AXIS_TDATA;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire M_AXIS_TVALID_INST_0_i_1_n_0;
  wire [143:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire aclk;
  wire arstn;
  wire [127:0]data;
  wire [7:0]data_ready;
  wire [7:0]mul_valid;
  wire [7:0]rms_ready;
  wire top_valid;
  wire u_inv_sqrt_top_n_128;
  wire u_inv_sqrt_top_n_129;
  wire u_inv_sqrt_top_n_130;
  wire u_inv_sqrt_top_n_131;
  wire u_inv_sqrt_top_n_132;
  wire u_inv_sqrt_top_n_133;
  wire u_inv_sqrt_top_n_134;
  wire u_inv_sqrt_top_n_135;
  wire u_inv_sqrt_top_n_136;
  wire u_inv_sqrt_top_n_137;
  wire u_inv_sqrt_top_n_138;
  wire u_inv_sqrt_top_n_139;
  wire u_inv_sqrt_top_n_140;
  wire u_inv_sqrt_top_n_141;
  wire u_inv_sqrt_top_n_142;
  wire u_inv_sqrt_top_n_143;

  LUT5 #(
    .INIT(32'h00008000)) 
    M_AXIS_TVALID_INST_0
       (.I0(mul_valid[2]),
        .I1(mul_valid[3]),
        .I2(mul_valid[0]),
        .I3(mul_valid[1]),
        .I4(M_AXIS_TVALID_INST_0_i_1_n_0),
        .O(M_AXIS_TVALID));
  LUT4 #(
    .INIT(16'h7FFF)) 
    M_AXIS_TVALID_INST_0_i_1
       (.I0(mul_valid[5]),
        .I1(mul_valid[4]),
        .I2(mul_valid[7]),
        .I3(mul_valid[6]),
        .O(M_AXIS_TVALID_INST_0_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_mul \mul_invsqrtrms[0].mul 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[15:0]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(mul_valid[0]),
        .s_axis_a_tdata(data[15:0]),
        .s_axis_a_tready(data_ready[0]),
        .s_axis_a_tvalid(top_valid),
        .s_axis_b_tdata({u_inv_sqrt_top_n_128,u_inv_sqrt_top_n_129,u_inv_sqrt_top_n_130,u_inv_sqrt_top_n_131,u_inv_sqrt_top_n_132,u_inv_sqrt_top_n_133,u_inv_sqrt_top_n_134,u_inv_sqrt_top_n_135,u_inv_sqrt_top_n_136,u_inv_sqrt_top_n_137,u_inv_sqrt_top_n_138,u_inv_sqrt_top_n_139,u_inv_sqrt_top_n_140,u_inv_sqrt_top_n_141,u_inv_sqrt_top_n_142,u_inv_sqrt_top_n_143}),
        .s_axis_b_tready(rms_ready[0]),
        .s_axis_b_tvalid(top_valid));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_mul \mul_invsqrtrms[1].mul 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[31:16]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(mul_valid[1]),
        .s_axis_a_tdata(data[31:16]),
        .s_axis_a_tready(data_ready[1]),
        .s_axis_a_tvalid(top_valid),
        .s_axis_b_tdata({u_inv_sqrt_top_n_128,u_inv_sqrt_top_n_129,u_inv_sqrt_top_n_130,u_inv_sqrt_top_n_131,u_inv_sqrt_top_n_132,u_inv_sqrt_top_n_133,u_inv_sqrt_top_n_134,u_inv_sqrt_top_n_135,u_inv_sqrt_top_n_136,u_inv_sqrt_top_n_137,u_inv_sqrt_top_n_138,u_inv_sqrt_top_n_139,u_inv_sqrt_top_n_140,u_inv_sqrt_top_n_141,u_inv_sqrt_top_n_142,u_inv_sqrt_top_n_143}),
        .s_axis_b_tready(rms_ready[1]),
        .s_axis_b_tvalid(top_valid));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_mul \mul_invsqrtrms[2].mul 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[47:32]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(mul_valid[2]),
        .s_axis_a_tdata(data[47:32]),
        .s_axis_a_tready(data_ready[2]),
        .s_axis_a_tvalid(top_valid),
        .s_axis_b_tdata({u_inv_sqrt_top_n_128,u_inv_sqrt_top_n_129,u_inv_sqrt_top_n_130,u_inv_sqrt_top_n_131,u_inv_sqrt_top_n_132,u_inv_sqrt_top_n_133,u_inv_sqrt_top_n_134,u_inv_sqrt_top_n_135,u_inv_sqrt_top_n_136,u_inv_sqrt_top_n_137,u_inv_sqrt_top_n_138,u_inv_sqrt_top_n_139,u_inv_sqrt_top_n_140,u_inv_sqrt_top_n_141,u_inv_sqrt_top_n_142,u_inv_sqrt_top_n_143}),
        .s_axis_b_tready(rms_ready[2]),
        .s_axis_b_tvalid(top_valid));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_mul \mul_invsqrtrms[3].mul 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[63:48]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(mul_valid[3]),
        .s_axis_a_tdata(data[63:48]),
        .s_axis_a_tready(data_ready[3]),
        .s_axis_a_tvalid(top_valid),
        .s_axis_b_tdata({u_inv_sqrt_top_n_128,u_inv_sqrt_top_n_129,u_inv_sqrt_top_n_130,u_inv_sqrt_top_n_131,u_inv_sqrt_top_n_132,u_inv_sqrt_top_n_133,u_inv_sqrt_top_n_134,u_inv_sqrt_top_n_135,u_inv_sqrt_top_n_136,u_inv_sqrt_top_n_137,u_inv_sqrt_top_n_138,u_inv_sqrt_top_n_139,u_inv_sqrt_top_n_140,u_inv_sqrt_top_n_141,u_inv_sqrt_top_n_142,u_inv_sqrt_top_n_143}),
        .s_axis_b_tready(rms_ready[3]),
        .s_axis_b_tvalid(top_valid));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_mul \mul_invsqrtrms[4].mul 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[79:64]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(mul_valid[4]),
        .s_axis_a_tdata(data[79:64]),
        .s_axis_a_tready(data_ready[4]),
        .s_axis_a_tvalid(top_valid),
        .s_axis_b_tdata({u_inv_sqrt_top_n_128,u_inv_sqrt_top_n_129,u_inv_sqrt_top_n_130,u_inv_sqrt_top_n_131,u_inv_sqrt_top_n_132,u_inv_sqrt_top_n_133,u_inv_sqrt_top_n_134,u_inv_sqrt_top_n_135,u_inv_sqrt_top_n_136,u_inv_sqrt_top_n_137,u_inv_sqrt_top_n_138,u_inv_sqrt_top_n_139,u_inv_sqrt_top_n_140,u_inv_sqrt_top_n_141,u_inv_sqrt_top_n_142,u_inv_sqrt_top_n_143}),
        .s_axis_b_tready(rms_ready[4]),
        .s_axis_b_tvalid(top_valid));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_mul \mul_invsqrtrms[5].mul 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[95:80]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(mul_valid[5]),
        .s_axis_a_tdata(data[95:80]),
        .s_axis_a_tready(data_ready[5]),
        .s_axis_a_tvalid(top_valid),
        .s_axis_b_tdata({u_inv_sqrt_top_n_128,u_inv_sqrt_top_n_129,u_inv_sqrt_top_n_130,u_inv_sqrt_top_n_131,u_inv_sqrt_top_n_132,u_inv_sqrt_top_n_133,u_inv_sqrt_top_n_134,u_inv_sqrt_top_n_135,u_inv_sqrt_top_n_136,u_inv_sqrt_top_n_137,u_inv_sqrt_top_n_138,u_inv_sqrt_top_n_139,u_inv_sqrt_top_n_140,u_inv_sqrt_top_n_141,u_inv_sqrt_top_n_142,u_inv_sqrt_top_n_143}),
        .s_axis_b_tready(rms_ready[5]),
        .s_axis_b_tvalid(top_valid));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_mul \mul_invsqrtrms[6].mul 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[111:96]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(mul_valid[6]),
        .s_axis_a_tdata(data[111:96]),
        .s_axis_a_tready(data_ready[6]),
        .s_axis_a_tvalid(top_valid),
        .s_axis_b_tdata({u_inv_sqrt_top_n_128,u_inv_sqrt_top_n_129,u_inv_sqrt_top_n_130,u_inv_sqrt_top_n_131,u_inv_sqrt_top_n_132,u_inv_sqrt_top_n_133,u_inv_sqrt_top_n_134,u_inv_sqrt_top_n_135,u_inv_sqrt_top_n_136,u_inv_sqrt_top_n_137,u_inv_sqrt_top_n_138,u_inv_sqrt_top_n_139,u_inv_sqrt_top_n_140,u_inv_sqrt_top_n_141,u_inv_sqrt_top_n_142,u_inv_sqrt_top_n_143}),
        .s_axis_b_tready(rms_ready[6]),
        .s_axis_b_tvalid(top_valid));
  (* CHECK_LICENSE_TYPE = "bf_mul,floating_point_v7_1_19,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_rms_norm_top_0_0_bf_mul \mul_invsqrtrms[7].mul 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(M_AXIS_TDATA[127:112]),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tvalid(mul_valid[7]),
        .s_axis_a_tdata(data[127:112]),
        .s_axis_a_tready(data_ready[7]),
        .s_axis_a_tvalid(top_valid),
        .s_axis_b_tdata({u_inv_sqrt_top_n_128,u_inv_sqrt_top_n_129,u_inv_sqrt_top_n_130,u_inv_sqrt_top_n_131,u_inv_sqrt_top_n_132,u_inv_sqrt_top_n_133,u_inv_sqrt_top_n_134,u_inv_sqrt_top_n_135,u_inv_sqrt_top_n_136,u_inv_sqrt_top_n_137,u_inv_sqrt_top_n_138,u_inv_sqrt_top_n_139,u_inv_sqrt_top_n_140,u_inv_sqrt_top_n_141,u_inv_sqrt_top_n_142,u_inv_sqrt_top_n_143}),
        .s_axis_b_tready(rms_ready[7]),
        .s_axis_b_tvalid(top_valid));
  Layernorm_rms_norm_top_0_0_inv_sqrt_top u_inv_sqrt_top
       (.Q(data),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .aclk(aclk),
        .arstn(arstn),
        .data_ready(data_ready),
        .m_axis_result_tdata({u_inv_sqrt_top_n_128,u_inv_sqrt_top_n_129,u_inv_sqrt_top_n_130,u_inv_sqrt_top_n_131,u_inv_sqrt_top_n_132,u_inv_sqrt_top_n_133,u_inv_sqrt_top_n_134,u_inv_sqrt_top_n_135,u_inv_sqrt_top_n_136,u_inv_sqrt_top_n_137,u_inv_sqrt_top_n_138,u_inv_sqrt_top_n_139,u_inv_sqrt_top_n_140,u_inv_sqrt_top_n_141,u_inv_sqrt_top_n_142,u_inv_sqrt_top_n_143}),
        .rms_ready(rms_ready),
        .s_axis_b_tvalid(top_valid));
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
