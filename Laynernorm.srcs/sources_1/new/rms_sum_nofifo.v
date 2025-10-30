`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2025 07:41:30 PM
// Design Name: 
// Module Name: rms_sum_nofifo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rms_sum_nofifo(
    input aclk,
    input arstn,

    input [127:0] S_AXIS_TDATA,
    input S_AXIS_TVALID,
    output S_AXIS_TREADY,

    output [15:0] M_AXIS_TDATA,
    output M_AXIS_TVALID,
    input M_AXIS_TREADY
    );
    
wire mean_ready;
wire mean_valid;
wire [127:0] mean_data;       
    
  parallel_squarev2 u_ps(
    .aclk(aclk),
    .arstn(arstn),

    .S_AXIS_TDATA(S_AXIS_TDATA),
    .S_AXIS_TVALID(S_AXIS_TVALID),
    .S_AXIS_TREADY(S_AXIS_TREADY),

    .M_AXIS_TDATA(mean_data),
    .M_AXIS_TVALID(mean_valid),
    .M_AXIS_TREADY(mean_ready)
 
  );
  
wire [15:0] acc_data;
wire acc_valid;
wire acc_last;
wire acc_ready;
    
  squaresum_acc u_accumulatorv2 (
    .aclk           (aclk),
    .arstn          (arstn),

    .S_AXIS_TDATA   (mean_data),
    .S_AXIS_TVALID  (mean_valid),
    .S_AXIS_TREADY  (mean_ready),

    .M_AXIS_TDATA   (acc_data),
    .M_AXIS_TVALID  (acc_valid),
    .M_AXIS_TLAST   (acc_last),
    .M_AXIS_TREADY  (acc_ready)
);  
  
  
wire [15:0] sum_data;
wire sum_valid;
wire sum_ready;

  sum_keep keep(
    .aclk(aclk),
    .arstn(arstn),

    .S_AXIS_TDATA(acc_data),
    .S_AXIS_TVALID(acc_valid),
    .S_AXIS_TLAST(acc_last),
    .S_AXIS_TREADY(acc_ready),

    .M_AXIS_TDATA(sum_data),
    .M_AXIS_TVALID(sum_valid),
    .M_AXIS_TREADY(sum_ready)
  );
  
  
 
  
  bf_mul variance (
          .aclk(aclk),
          .aresetn(arstn),
          .s_axis_a_tvalid(sum_valid),
          .s_axis_a_tready(sum_ready),
          .s_axis_a_tdata(sum_data),
          
          
          .s_axis_b_tvalid(1'b1),
          .s_axis_b_tready(),
          .s_axis_b_tdata(16'h3aab),
          
          
          .m_axis_result_tvalid(M_AXIS_TVALID),
          .m_axis_result_tready(M_AXIS_TREADY),
          .m_axis_result_tdata(M_AXIS_TDATA)
      );  
  
  
    
    
endmodule
