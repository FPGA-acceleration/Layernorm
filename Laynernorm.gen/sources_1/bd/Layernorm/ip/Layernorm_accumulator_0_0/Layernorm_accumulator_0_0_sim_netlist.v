// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Oct 30 19:38:14 2025
// Host        : Hua running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/alhua/VivadoProject/Laynernorm/Laynernorm.gen/sources_1/bd/Layernorm/ip/Layernorm_accumulator_0_0/Layernorm_accumulator_0_0_sim_netlist.v
// Design      : Layernorm_accumulator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Layernorm_accumulator_0_0,accumulator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "accumulator,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Layernorm_accumulator_0_0
   (aclk,
    arstn,
    S_AXIS_TDATA,
    S_AXIS_TVALID,
    S_AXIS_TREADY,
    M_AXIS_TDATA,
    M_AXIS_TVALID,
    M_AXIS_TLAST,
    M_AXIS_TREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, INSERT_VIP 0" *) input aclk;
  input arstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]S_AXIS_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 18, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN Layernorm_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [143:0]M_AXIS_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output M_AXIS_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_TREADY;

  wire [143:0]M_AXIS_TDATA;
  wire M_AXIS_TLAST;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [127:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire aclk;
  wire arstn;

  Layernorm_accumulator_0_0_accumulator inst
       (.M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TLAST(M_AXIS_TLAST),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .aclk(aclk),
        .arstn(arstn));
endmodule

(* ORIG_REF_NAME = "acc" *) 
module Layernorm_accumulator_0_0_acc
   (tdata_acc2fifo,
    m_axis_result_tvalid,
    m_axis_result_tlast,
    E,
    \m_axis_tvalid_reg[95] ,
    S_AXIS_TREADY,
    S_AXIS_TDATA,
    aclk,
    arstn,
    S_AXIS_TVALID,
    m_axis_result_tready,
    M_AXIS_TREADY,
    Q,
    \count_reg[6] );
  output [143:0]tdata_acc2fifo;
  output m_axis_result_tvalid;
  output m_axis_result_tlast;
  output [0:0]E;
  output [0:0]\m_axis_tvalid_reg[95] ;
  output S_AXIS_TREADY;
  input [127:0]S_AXIS_TDATA;
  input aclk;
  input arstn;
  input S_AXIS_TVALID;
  input m_axis_result_tready;
  input M_AXIS_TREADY;
  input [0:0]Q;
  input \count_reg[6] ;

  wire [0:0]E;
  wire M_AXIS_TREADY;
  wire [0:0]Q;
  wire [127:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire aclk;
  wire arstn;
  wire \count_reg[6] ;
  wire m_axis_result_tlast;
  wire m_axis_result_tready;
  wire m_axis_result_tvalid;
  wire [0:0]\m_axis_tvalid_reg[95] ;
  wire [143:0]tdata_acc2fifo;
  wire [15:0]tdata_add2last;
  wire [15:0]tdata_last2acc;
  wire tlast_last2acc;
  wire tready_add2last;
  wire tready_last2acc;
  wire tvalid_add2last;
  wire tvalid_last2acc;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    \acc_data_reg[15]_i_1 
       (.I0(m_axis_result_tvalid),
        .I1(M_AXIS_TREADY),
        .I2(Q),
        .I3(m_axis_result_tlast),
        .O(E));
  (* CHECK_LICENSE_TYPE = "floating_point_2,floating_point_v7_1_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_accumulator_0_0_floating_point_2 acc_u
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(tdata_acc2fifo[15:0]),
        .m_axis_result_tlast(m_axis_result_tlast),
        .m_axis_result_tready(m_axis_result_tready),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(tdata_last2acc),
        .s_axis_a_tlast(tlast_last2acc),
        .s_axis_a_tready(tready_last2acc),
        .s_axis_a_tvalid(tvalid_last2acc));
  Layernorm_accumulator_0_0_add8 add8_u
       (.D(tdata_add2last),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .aclk(aclk),
        .arstn(arstn),
        .m_axis_result_tready(tready_add2last),
        .m_axis_result_tvalid(tvalid_add2last));
  Layernorm_accumulator_0_0_gen_tlast gen_last_u
       (.D(tdata_add2last),
        .Q(tdata_last2acc),
        .aclk(aclk),
        .\count_reg[6]_0 (\count_reg[6] ),
        .m_axis_result_tready(tready_add2last),
        .m_axis_result_tvalid(tvalid_add2last),
        .s_axis_a_tlast(tlast_last2acc),
        .s_axis_a_tready(tready_last2acc),
        .tvalid_last2acc(tvalid_last2acc));
  (* CHECK_LICENSE_TYPE = "c_shift_ram_1,c_shift_ram_v12_0_18,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "c_shift_ram_v12_0_18,Vivado 2024.2" *) 
  Layernorm_accumulator_0_0_c_shift_ram_1 shift_ram_u
       (.CLK(aclk),
        .D(S_AXIS_TDATA),
        .Q(tdata_acc2fifo[143:16]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    shift_ram_u_i_1
       (.I0(m_axis_result_tvalid),
        .I1(Q),
        .I2(M_AXIS_TREADY),
        .O(\m_axis_tvalid_reg[95] ));
endmodule

(* ORIG_REF_NAME = "acc_fifo" *) 
module Layernorm_accumulator_0_0_acc_fifo
   (Q,
    arstn_0,
    \m_axis_tvalid_reg[95]_0 ,
    m_axis_result_tready,
    M_AXIS_TDATA,
    D,
    aclk,
    E,
    arstn,
    M_AXIS_TREADY,
    m_axis_result_tvalid,
    \acc_data_reg_reg[15]_0 ,
    \acc_data_reg_reg[15]_1 );
  output [128:0]Q;
  output arstn_0;
  output [0:0]\m_axis_tvalid_reg[95]_0 ;
  output m_axis_result_tready;
  output [15:0]M_AXIS_TDATA;
  input [128:0]D;
  input aclk;
  input [0:0]E;
  input arstn;
  input M_AXIS_TREADY;
  input m_axis_result_tvalid;
  input [0:0]\acc_data_reg_reg[15]_0 ;
  input [15:0]\acc_data_reg_reg[15]_1 ;

  wire [128:0]D;
  wire [0:0]E;
  wire [15:0]M_AXIS_TDATA;
  wire M_AXIS_TREADY;
  wire [128:0]Q;
  wire [0:0]\acc_data_reg_reg[15]_0 ;
  wire [15:0]\acc_data_reg_reg[15]_1 ;
  wire aclk;
  wire arstn;
  wire arstn_0;
  wire m_axis_result_tready;
  wire m_axis_result_tvalid;
  wire [94:0]m_axis_tvalid;
  wire m_axis_tvalid1;
  wire [0:0]\m_axis_tvalid_reg[95]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \acc_data_reg[15]_i_2 
       (.I0(arstn),
        .O(arstn_0));
  FDCE \acc_data_reg_reg[0] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [0]),
        .Q(M_AXIS_TDATA[0]));
  FDCE \acc_data_reg_reg[10] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [10]),
        .Q(M_AXIS_TDATA[10]));
  FDCE \acc_data_reg_reg[11] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [11]),
        .Q(M_AXIS_TDATA[11]));
  FDCE \acc_data_reg_reg[12] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [12]),
        .Q(M_AXIS_TDATA[12]));
  FDCE \acc_data_reg_reg[13] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [13]),
        .Q(M_AXIS_TDATA[13]));
  FDCE \acc_data_reg_reg[14] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [14]),
        .Q(M_AXIS_TDATA[14]));
  FDCE \acc_data_reg_reg[15] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [15]),
        .Q(M_AXIS_TDATA[15]));
  FDCE \acc_data_reg_reg[1] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [1]),
        .Q(M_AXIS_TDATA[1]));
  FDCE \acc_data_reg_reg[2] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [2]),
        .Q(M_AXIS_TDATA[2]));
  FDCE \acc_data_reg_reg[3] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [3]),
        .Q(M_AXIS_TDATA[3]));
  FDCE \acc_data_reg_reg[4] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [4]),
        .Q(M_AXIS_TDATA[4]));
  FDCE \acc_data_reg_reg[5] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [5]),
        .Q(M_AXIS_TDATA[5]));
  FDCE \acc_data_reg_reg[6] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [6]),
        .Q(M_AXIS_TDATA[6]));
  FDCE \acc_data_reg_reg[7] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [7]),
        .Q(M_AXIS_TDATA[7]));
  FDCE \acc_data_reg_reg[8] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [8]),
        .Q(M_AXIS_TDATA[8]));
  FDCE \acc_data_reg_reg[9] 
       (.C(aclk),
        .CE(\acc_data_reg_reg[15]_0 ),
        .CLR(arstn_0),
        .D(\acc_data_reg_reg[15]_1 [9]),
        .Q(M_AXIS_TDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    acc_u_i_2
       (.I0(M_AXIS_TREADY),
        .I1(\m_axis_tvalid_reg[95]_0 ),
        .O(m_axis_result_tready));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \m_axis_tvalid[0]_i_1 
       (.I0(\m_axis_tvalid_reg[95]_0 ),
        .I1(M_AXIS_TREADY),
        .I2(m_axis_result_tvalid),
        .O(m_axis_tvalid1));
  FDCE \m_axis_tvalid_reg[0] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid1),
        .Q(m_axis_tvalid[0]));
  FDCE \m_axis_tvalid_reg[10] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[9]),
        .Q(m_axis_tvalid[10]));
  FDCE \m_axis_tvalid_reg[11] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[10]),
        .Q(m_axis_tvalid[11]));
  FDCE \m_axis_tvalid_reg[12] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[11]),
        .Q(m_axis_tvalid[12]));
  FDCE \m_axis_tvalid_reg[13] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[12]),
        .Q(m_axis_tvalid[13]));
  FDCE \m_axis_tvalid_reg[14] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[13]),
        .Q(m_axis_tvalid[14]));
  FDCE \m_axis_tvalid_reg[15] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[14]),
        .Q(m_axis_tvalid[15]));
  FDCE \m_axis_tvalid_reg[16] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[15]),
        .Q(m_axis_tvalid[16]));
  FDCE \m_axis_tvalid_reg[17] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[16]),
        .Q(m_axis_tvalid[17]));
  FDCE \m_axis_tvalid_reg[18] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[17]),
        .Q(m_axis_tvalid[18]));
  FDCE \m_axis_tvalid_reg[19] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[18]),
        .Q(m_axis_tvalid[19]));
  FDCE \m_axis_tvalid_reg[1] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[0]),
        .Q(m_axis_tvalid[1]));
  FDCE \m_axis_tvalid_reg[20] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[19]),
        .Q(m_axis_tvalid[20]));
  FDCE \m_axis_tvalid_reg[21] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[20]),
        .Q(m_axis_tvalid[21]));
  FDCE \m_axis_tvalid_reg[22] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[21]),
        .Q(m_axis_tvalid[22]));
  FDCE \m_axis_tvalid_reg[23] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[22]),
        .Q(m_axis_tvalid[23]));
  FDCE \m_axis_tvalid_reg[24] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[23]),
        .Q(m_axis_tvalid[24]));
  FDCE \m_axis_tvalid_reg[25] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[24]),
        .Q(m_axis_tvalid[25]));
  FDCE \m_axis_tvalid_reg[26] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[25]),
        .Q(m_axis_tvalid[26]));
  FDCE \m_axis_tvalid_reg[27] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[26]),
        .Q(m_axis_tvalid[27]));
  FDCE \m_axis_tvalid_reg[28] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[27]),
        .Q(m_axis_tvalid[28]));
  FDCE \m_axis_tvalid_reg[29] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[28]),
        .Q(m_axis_tvalid[29]));
  FDCE \m_axis_tvalid_reg[2] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[1]),
        .Q(m_axis_tvalid[2]));
  FDCE \m_axis_tvalid_reg[30] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[29]),
        .Q(m_axis_tvalid[30]));
  FDCE \m_axis_tvalid_reg[31] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[30]),
        .Q(m_axis_tvalid[31]));
  FDCE \m_axis_tvalid_reg[32] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[31]),
        .Q(m_axis_tvalid[32]));
  FDCE \m_axis_tvalid_reg[33] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[32]),
        .Q(m_axis_tvalid[33]));
  FDCE \m_axis_tvalid_reg[34] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[33]),
        .Q(m_axis_tvalid[34]));
  FDCE \m_axis_tvalid_reg[35] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[34]),
        .Q(m_axis_tvalid[35]));
  FDCE \m_axis_tvalid_reg[36] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[35]),
        .Q(m_axis_tvalid[36]));
  FDCE \m_axis_tvalid_reg[37] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[36]),
        .Q(m_axis_tvalid[37]));
  FDCE \m_axis_tvalid_reg[38] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[37]),
        .Q(m_axis_tvalid[38]));
  FDCE \m_axis_tvalid_reg[39] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[38]),
        .Q(m_axis_tvalid[39]));
  FDCE \m_axis_tvalid_reg[3] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[2]),
        .Q(m_axis_tvalid[3]));
  FDCE \m_axis_tvalid_reg[40] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[39]),
        .Q(m_axis_tvalid[40]));
  FDCE \m_axis_tvalid_reg[41] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[40]),
        .Q(m_axis_tvalid[41]));
  FDCE \m_axis_tvalid_reg[42] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[41]),
        .Q(m_axis_tvalid[42]));
  FDCE \m_axis_tvalid_reg[43] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[42]),
        .Q(m_axis_tvalid[43]));
  FDCE \m_axis_tvalid_reg[44] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[43]),
        .Q(m_axis_tvalid[44]));
  FDCE \m_axis_tvalid_reg[45] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[44]),
        .Q(m_axis_tvalid[45]));
  FDCE \m_axis_tvalid_reg[46] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[45]),
        .Q(m_axis_tvalid[46]));
  FDCE \m_axis_tvalid_reg[47] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[46]),
        .Q(m_axis_tvalid[47]));
  FDCE \m_axis_tvalid_reg[48] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[47]),
        .Q(m_axis_tvalid[48]));
  FDCE \m_axis_tvalid_reg[49] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[48]),
        .Q(m_axis_tvalid[49]));
  FDCE \m_axis_tvalid_reg[4] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[3]),
        .Q(m_axis_tvalid[4]));
  FDCE \m_axis_tvalid_reg[50] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[49]),
        .Q(m_axis_tvalid[50]));
  FDCE \m_axis_tvalid_reg[51] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[50]),
        .Q(m_axis_tvalid[51]));
  FDCE \m_axis_tvalid_reg[52] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[51]),
        .Q(m_axis_tvalid[52]));
  FDCE \m_axis_tvalid_reg[53] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[52]),
        .Q(m_axis_tvalid[53]));
  FDCE \m_axis_tvalid_reg[54] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[53]),
        .Q(m_axis_tvalid[54]));
  FDCE \m_axis_tvalid_reg[55] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[54]),
        .Q(m_axis_tvalid[55]));
  FDCE \m_axis_tvalid_reg[56] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[55]),
        .Q(m_axis_tvalid[56]));
  FDCE \m_axis_tvalid_reg[57] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[56]),
        .Q(m_axis_tvalid[57]));
  FDCE \m_axis_tvalid_reg[58] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[57]),
        .Q(m_axis_tvalid[58]));
  FDCE \m_axis_tvalid_reg[59] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[58]),
        .Q(m_axis_tvalid[59]));
  FDCE \m_axis_tvalid_reg[5] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[4]),
        .Q(m_axis_tvalid[5]));
  FDCE \m_axis_tvalid_reg[60] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[59]),
        .Q(m_axis_tvalid[60]));
  FDCE \m_axis_tvalid_reg[61] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[60]),
        .Q(m_axis_tvalid[61]));
  FDCE \m_axis_tvalid_reg[62] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[61]),
        .Q(m_axis_tvalid[62]));
  FDCE \m_axis_tvalid_reg[63] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[62]),
        .Q(m_axis_tvalid[63]));
  FDCE \m_axis_tvalid_reg[64] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[63]),
        .Q(m_axis_tvalid[64]));
  FDCE \m_axis_tvalid_reg[65] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[64]),
        .Q(m_axis_tvalid[65]));
  FDCE \m_axis_tvalid_reg[66] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[65]),
        .Q(m_axis_tvalid[66]));
  FDCE \m_axis_tvalid_reg[67] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[66]),
        .Q(m_axis_tvalid[67]));
  FDCE \m_axis_tvalid_reg[68] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[67]),
        .Q(m_axis_tvalid[68]));
  FDCE \m_axis_tvalid_reg[69] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[68]),
        .Q(m_axis_tvalid[69]));
  FDCE \m_axis_tvalid_reg[6] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[5]),
        .Q(m_axis_tvalid[6]));
  FDCE \m_axis_tvalid_reg[70] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[69]),
        .Q(m_axis_tvalid[70]));
  FDCE \m_axis_tvalid_reg[71] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[70]),
        .Q(m_axis_tvalid[71]));
  FDCE \m_axis_tvalid_reg[72] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[71]),
        .Q(m_axis_tvalid[72]));
  FDCE \m_axis_tvalid_reg[73] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[72]),
        .Q(m_axis_tvalid[73]));
  FDCE \m_axis_tvalid_reg[74] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[73]),
        .Q(m_axis_tvalid[74]));
  FDCE \m_axis_tvalid_reg[75] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[74]),
        .Q(m_axis_tvalid[75]));
  FDCE \m_axis_tvalid_reg[76] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[75]),
        .Q(m_axis_tvalid[76]));
  FDCE \m_axis_tvalid_reg[77] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[76]),
        .Q(m_axis_tvalid[77]));
  FDCE \m_axis_tvalid_reg[78] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[77]),
        .Q(m_axis_tvalid[78]));
  FDCE \m_axis_tvalid_reg[79] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[78]),
        .Q(m_axis_tvalid[79]));
  FDCE \m_axis_tvalid_reg[7] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[6]),
        .Q(m_axis_tvalid[7]));
  FDCE \m_axis_tvalid_reg[80] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[79]),
        .Q(m_axis_tvalid[80]));
  FDCE \m_axis_tvalid_reg[81] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[80]),
        .Q(m_axis_tvalid[81]));
  FDCE \m_axis_tvalid_reg[82] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[81]),
        .Q(m_axis_tvalid[82]));
  FDCE \m_axis_tvalid_reg[83] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[82]),
        .Q(m_axis_tvalid[83]));
  FDCE \m_axis_tvalid_reg[84] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[83]),
        .Q(m_axis_tvalid[84]));
  FDCE \m_axis_tvalid_reg[85] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[84]),
        .Q(m_axis_tvalid[85]));
  FDCE \m_axis_tvalid_reg[86] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[85]),
        .Q(m_axis_tvalid[86]));
  FDCE \m_axis_tvalid_reg[87] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[86]),
        .Q(m_axis_tvalid[87]));
  FDCE \m_axis_tvalid_reg[88] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[87]),
        .Q(m_axis_tvalid[88]));
  FDCE \m_axis_tvalid_reg[89] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[88]),
        .Q(m_axis_tvalid[89]));
  FDCE \m_axis_tvalid_reg[8] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[7]),
        .Q(m_axis_tvalid[8]));
  FDCE \m_axis_tvalid_reg[90] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[89]),
        .Q(m_axis_tvalid[90]));
  FDCE \m_axis_tvalid_reg[91] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[90]),
        .Q(m_axis_tvalid[91]));
  FDCE \m_axis_tvalid_reg[92] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[91]),
        .Q(m_axis_tvalid[92]));
  FDCE \m_axis_tvalid_reg[93] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[92]),
        .Q(m_axis_tvalid[93]));
  FDCE \m_axis_tvalid_reg[94] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[93]),
        .Q(m_axis_tvalid[94]));
  FDCE \m_axis_tvalid_reg[95] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[94]),
        .Q(\m_axis_tvalid_reg[95]_0 ));
  FDCE \m_axis_tvalid_reg[9] 
       (.C(aclk),
        .CE(E),
        .CLR(arstn_0),
        .D(m_axis_tvalid[8]),
        .Q(m_axis_tvalid[9]));
  (* CHECK_LICENSE_TYPE = "c_shift_ram_2,c_shift_ram_v12_0_18,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "c_shift_ram_v12_0_18,Vivado 2024.2" *) 
  Layernorm_accumulator_0_0_c_shift_ram_2 shift_ram_u
       (.CE(E),
        .CLK(aclk),
        .D(D),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "accumulator" *) 
module Layernorm_accumulator_0_0_accumulator
   (aclk,
    arstn,
    S_AXIS_TDATA,
    S_AXIS_TVALID,
    S_AXIS_TREADY,
    M_AXIS_TDATA,
    M_AXIS_TVALID,
    M_AXIS_TLAST,
    M_AXIS_TREADY);
  input aclk;
  input arstn;
  input [127:0]S_AXIS_TDATA;
  input S_AXIS_TVALID;
  output S_AXIS_TREADY;
  output [143:0]M_AXIS_TDATA;
  output M_AXIS_TVALID;
  output M_AXIS_TLAST;
  input M_AXIS_TREADY;

  wire CE0;
  wire [143:0]M_AXIS_TDATA;
  wire M_AXIS_TLAST;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [127:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire acc_data_reg0;
  wire aclk;
  wire arstn;
  wire fifo_u_n_129;
  wire [143:0]tdata_acc2fifo;
  wire tlast_acc2fifo;
  wire tready_acc2fifo;
  wire tvalid_acc2fifo;

  Layernorm_accumulator_0_0_acc acc_u
       (.E(acc_data_reg0),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .Q(M_AXIS_TVALID),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .aclk(aclk),
        .arstn(arstn),
        .\count_reg[6] (fifo_u_n_129),
        .m_axis_result_tlast(tlast_acc2fifo),
        .m_axis_result_tready(tready_acc2fifo),
        .m_axis_result_tvalid(tvalid_acc2fifo),
        .\m_axis_tvalid_reg[95] (CE0),
        .tdata_acc2fifo(tdata_acc2fifo));
  Layernorm_accumulator_0_0_acc_fifo fifo_u
       (.D({tlast_acc2fifo,tdata_acc2fifo[143:16]}),
        .E(CE0),
        .M_AXIS_TDATA(M_AXIS_TDATA[15:0]),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .Q({M_AXIS_TLAST,M_AXIS_TDATA[143:16]}),
        .\acc_data_reg_reg[15]_0 (acc_data_reg0),
        .\acc_data_reg_reg[15]_1 (tdata_acc2fifo[15:0]),
        .aclk(aclk),
        .arstn(arstn),
        .arstn_0(fifo_u_n_129),
        .m_axis_result_tready(tready_acc2fifo),
        .m_axis_result_tvalid(tvalid_acc2fifo),
        .\m_axis_tvalid_reg[95]_0 (M_AXIS_TVALID));
endmodule

(* ORIG_REF_NAME = "add8" *) 
module Layernorm_accumulator_0_0_add8
   (m_axis_result_tvalid,
    D,
    S_AXIS_TREADY,
    aclk,
    arstn,
    S_AXIS_TVALID,
    S_AXIS_TDATA,
    m_axis_result_tready);
  output m_axis_result_tvalid;
  output [15:0]D;
  output S_AXIS_TREADY;
  input aclk;
  input arstn;
  input S_AXIS_TVALID;
  input [127:0]S_AXIS_TDATA;
  input m_axis_result_tready;

  wire [15:0]D;
  wire [127:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TREADY_INST_0_i_1_n_0;
  wire S_AXIS_TVALID;
  wire aclk;
  wire arstn;
  wire m_axis_result_tready;
  wire m_axis_result_tvalid;
  wire [7:0]ready;
  wire [15:0]\s1_out[0]_0 ;
  wire [15:0]\s1_out[1]_2 ;
  wire [15:0]\s1_out[2]_4 ;
  wire [15:0]\s1_out[3]_6 ;
  wire \s1_ready[0]_11 ;
  wire \s1_ready[1]_10 ;
  wire \s1_ready[2]_15 ;
  wire \s1_ready[3]_14 ;
  wire \s1_valid[0]_1 ;
  wire \s1_valid[1]_3 ;
  wire \s1_valid[2]_5 ;
  wire \s1_valid[3]_7 ;
  wire [15:0]\s2_out[0]_8 ;
  wire [15:0]\s2_out[1]_12 ;
  wire \s2_ready[0]_17 ;
  wire \s2_ready[1]_16 ;
  wire \s2_valid[0]_9 ;
  wire \s2_valid[1]_13 ;

  (* CHECK_LICENSE_TYPE = "floating_point_1,floating_point_v7_1_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_accumulator_0_0_floating_point_1 \STAGE1[0].add_s1 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(\s1_out[0]_0 ),
        .m_axis_result_tready(\s1_ready[0]_11 ),
        .m_axis_result_tvalid(\s1_valid[0]_1 ),
        .s_axis_a_tdata(S_AXIS_TDATA[15:0]),
        .s_axis_a_tready(ready[0]),
        .s_axis_a_tvalid(S_AXIS_TVALID),
        .s_axis_b_tdata(S_AXIS_TDATA[31:16]),
        .s_axis_b_tready(ready[1]),
        .s_axis_b_tvalid(S_AXIS_TVALID));
  (* CHECK_LICENSE_TYPE = "floating_point_1,floating_point_v7_1_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_accumulator_0_0_floating_point_1 \STAGE1[1].add_s1 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(\s1_out[1]_2 ),
        .m_axis_result_tready(\s1_ready[1]_10 ),
        .m_axis_result_tvalid(\s1_valid[1]_3 ),
        .s_axis_a_tdata(S_AXIS_TDATA[47:32]),
        .s_axis_a_tready(ready[2]),
        .s_axis_a_tvalid(S_AXIS_TVALID),
        .s_axis_b_tdata(S_AXIS_TDATA[63:48]),
        .s_axis_b_tready(ready[3]),
        .s_axis_b_tvalid(S_AXIS_TVALID));
  (* CHECK_LICENSE_TYPE = "floating_point_1,floating_point_v7_1_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_accumulator_0_0_floating_point_1 \STAGE1[2].add_s1 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(\s1_out[2]_4 ),
        .m_axis_result_tready(\s1_ready[2]_15 ),
        .m_axis_result_tvalid(\s1_valid[2]_5 ),
        .s_axis_a_tdata(S_AXIS_TDATA[79:64]),
        .s_axis_a_tready(ready[4]),
        .s_axis_a_tvalid(S_AXIS_TVALID),
        .s_axis_b_tdata(S_AXIS_TDATA[95:80]),
        .s_axis_b_tready(ready[5]),
        .s_axis_b_tvalid(S_AXIS_TVALID));
  (* CHECK_LICENSE_TYPE = "floating_point_1,floating_point_v7_1_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_accumulator_0_0_floating_point_1 \STAGE1[3].add_s1 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(\s1_out[3]_6 ),
        .m_axis_result_tready(\s1_ready[3]_14 ),
        .m_axis_result_tvalid(\s1_valid[3]_7 ),
        .s_axis_a_tdata(S_AXIS_TDATA[111:96]),
        .s_axis_a_tready(ready[6]),
        .s_axis_a_tvalid(S_AXIS_TVALID),
        .s_axis_b_tdata(S_AXIS_TDATA[127:112]),
        .s_axis_b_tready(ready[7]),
        .s_axis_b_tvalid(S_AXIS_TVALID));
  (* CHECK_LICENSE_TYPE = "floating_point_1,floating_point_v7_1_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_accumulator_0_0_floating_point_1 \STAGE2[0].add_s2 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(\s2_out[0]_8 ),
        .m_axis_result_tready(\s2_ready[0]_17 ),
        .m_axis_result_tvalid(\s2_valid[0]_9 ),
        .s_axis_a_tdata(\s1_out[0]_0 ),
        .s_axis_a_tready(\s1_ready[0]_11 ),
        .s_axis_a_tvalid(\s1_valid[0]_1 ),
        .s_axis_b_tdata(\s1_out[1]_2 ),
        .s_axis_b_tready(\s1_ready[1]_10 ),
        .s_axis_b_tvalid(\s1_valid[1]_3 ));
  (* CHECK_LICENSE_TYPE = "floating_point_1,floating_point_v7_1_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_accumulator_0_0_floating_point_1 \STAGE2[1].add_s2 
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(\s2_out[1]_12 ),
        .m_axis_result_tready(\s2_ready[1]_16 ),
        .m_axis_result_tvalid(\s2_valid[1]_13 ),
        .s_axis_a_tdata(\s1_out[2]_4 ),
        .s_axis_a_tready(\s1_ready[2]_15 ),
        .s_axis_a_tvalid(\s1_valid[2]_5 ),
        .s_axis_b_tdata(\s1_out[3]_6 ),
        .s_axis_b_tready(\s1_ready[3]_14 ),
        .s_axis_b_tvalid(\s1_valid[3]_7 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    S_AXIS_TREADY_INST_0
       (.I0(ready[2]),
        .I1(ready[3]),
        .I2(ready[0]),
        .I3(ready[1]),
        .I4(S_AXIS_TREADY_INST_0_i_1_n_0),
        .O(S_AXIS_TREADY));
  LUT4 #(
    .INIT(16'h7FFF)) 
    S_AXIS_TREADY_INST_0_i_1
       (.I0(ready[5]),
        .I1(ready[4]),
        .I2(ready[7]),
        .I3(ready[6]),
        .O(S_AXIS_TREADY_INST_0_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "floating_point_1,floating_point_v7_1_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "floating_point_v7_1_19,Vivado 2024.2" *) 
  Layernorm_accumulator_0_0_floating_point_1_HD1 add_s3
       (.aclk(aclk),
        .aresetn(arstn),
        .m_axis_result_tdata(D),
        .m_axis_result_tready(m_axis_result_tready),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(\s2_out[0]_8 ),
        .s_axis_a_tready(\s2_ready[0]_17 ),
        .s_axis_a_tvalid(\s2_valid[0]_9 ),
        .s_axis_b_tdata(\s2_out[1]_12 ),
        .s_axis_b_tready(\s2_ready[1]_16 ),
        .s_axis_b_tvalid(\s2_valid[1]_13 ));
endmodule

(* CHECK_LICENSE_TYPE = "c_shift_ram_1,c_shift_ram_v12_0_18,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "c_shift_ram_1" *) 
(* X_CORE_INFO = "c_shift_ram_v12_0_18,Vivado 2024.2" *) 
module Layernorm_accumulator_0_0_c_shift_ram_1
   (D,
    CLK,
    Q);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* X_INTERFACE_MODE = "slave d_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [127:0]D;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* X_INTERFACE_MODE = "master q_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [127:0]Q;


endmodule

(* CHECK_LICENSE_TYPE = "c_shift_ram_2,c_shift_ram_v12_0_18,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "c_shift_ram_2" *) 
(* X_CORE_INFO = "c_shift_ram_v12_0_18,Vivado 2024.2" *) 
module Layernorm_accumulator_0_0_c_shift_ram_2
   (D,
    CLK,
    CE,
    Q);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* X_INTERFACE_MODE = "slave d_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [128:0]D;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* X_INTERFACE_MODE = "slave ce_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* X_INTERFACE_MODE = "master q_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [128:0]Q;


endmodule

(* CHECK_LICENSE_TYPE = "floating_point_1,floating_point_v7_1_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "floating_point_1" *) 
(* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
module Layernorm_accumulator_0_0_floating_point_1
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

(* CHECK_LICENSE_TYPE = "floating_point_1,floating_point_v7_1_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "floating_point_1" *) 
(* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
module Layernorm_accumulator_0_0_floating_point_1_HD1
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

(* CHECK_LICENSE_TYPE = "floating_point_2,floating_point_v7_1_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "floating_point_2" *) 
(* X_CORE_INFO = "floating_point_v7_1_19,Vivado 2024.2" *) 
module Layernorm_accumulator_0_0_floating_point_2
   (aclk,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    s_axis_a_tlast,
    m_axis_result_tvalid,
    m_axis_result_tready,
    m_axis_result_tdata,
    m_axis_result_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TREADY" *) output s_axis_a_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [15:0]s_axis_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TLAST" *) input s_axis_a_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TREADY" *) input m_axis_result_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) output [15:0]m_axis_result_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TLAST" *) output m_axis_result_tlast;


endmodule

(* ORIG_REF_NAME = "gen_tlast" *) 
module Layernorm_accumulator_0_0_gen_tlast
   (tvalid_last2acc,
    Q,
    s_axis_a_tlast,
    m_axis_result_tready,
    m_axis_result_tvalid,
    s_axis_a_tready,
    aclk,
    \count_reg[6]_0 ,
    D);
  output tvalid_last2acc;
  output [15:0]Q;
  output s_axis_a_tlast;
  output m_axis_result_tready;
  input m_axis_result_tvalid;
  input s_axis_a_tready;
  input aclk;
  input \count_reg[6]_0 ;
  input [15:0]D;

  wire [15:0]D;
  wire [15:0]Q;
  wire acc_u_i_3_n_0;
  wire aclk;
  wire [6:0]count;
  wire [6:0]count_0;
  wire \count_reg[6]_0 ;
  wire m_axis_result_tready;
  wire m_axis_result_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire s_axis_a_tlast;
  wire s_axis_a_tready;
  wire s_axis_tdata0;
  wire tvalid_last2acc;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    acc_u_i_1
       (.I0(count[5]),
        .I1(count[6]),
        .I2(acc_u_i_3_n_0),
        .O(s_axis_a_tlast));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    acc_u_i_3
       (.I0(count[3]),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[2]),
        .I4(count[4]),
        .O(acc_u_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    add_s3_i_1
       (.I0(s_axis_a_tready),
        .I1(tvalid_last2acc),
        .O(m_axis_result_tready));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(count_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .O(count_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .O(count_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count[2]),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count[3]),
        .O(count_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(count[3]),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[2]),
        .I4(count[4]),
        .O(count_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h89)) 
    \count[5]_i_1 
       (.I0(acc_u_i_3_n_0),
        .I1(count[5]),
        .I2(count[6]),
        .O(count_0[5]));
  LUT3 #(
    .INIT(8'hA4)) 
    \count[6]_i_1 
       (.I0(acc_u_i_3_n_0),
        .I1(count[5]),
        .I2(count[6]),
        .O(count_0[6]));
  FDPE \count_reg[0] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .D(count_0[0]),
        .PRE(\count_reg[6]_0 ),
        .Q(count[0]));
  FDPE \count_reg[1] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .D(count_0[1]),
        .PRE(\count_reg[6]_0 ),
        .Q(count[1]));
  FDPE \count_reg[2] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .D(count_0[2]),
        .PRE(\count_reg[6]_0 ),
        .Q(count[2]));
  FDPE \count_reg[3] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .D(count_0[3]),
        .PRE(\count_reg[6]_0 ),
        .Q(count[3]));
  FDPE \count_reg[4] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .D(count_0[4]),
        .PRE(\count_reg[6]_0 ),
        .Q(count[4]));
  FDCE \count_reg[5] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(count_0[5]),
        .Q(count[5]));
  FDPE \count_reg[6] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .D(count_0[6]),
        .PRE(\count_reg[6]_0 ),
        .Q(count[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    m_axis_tvalid_i_1
       (.I0(m_axis_result_tvalid),
        .I1(tvalid_last2acc),
        .I2(s_axis_a_tready),
        .O(m_axis_tvalid_i_1_n_0));
  FDCE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\count_reg[6]_0 ),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(tvalid_last2acc));
  LUT3 #(
    .INIT(8'hD0)) 
    \s_axis_tdata[15]_i_1 
       (.I0(tvalid_last2acc),
        .I1(s_axis_a_tready),
        .I2(m_axis_result_tvalid),
        .O(s_axis_tdata0));
  FDCE \s_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \s_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \s_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \s_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \s_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \s_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \s_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \s_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \s_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \s_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \s_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \s_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \s_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \s_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \s_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \s_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(s_axis_tdata0),
        .CLR(\count_reg[6]_0 ),
        .D(D[9]),
        .Q(Q[9]));
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
