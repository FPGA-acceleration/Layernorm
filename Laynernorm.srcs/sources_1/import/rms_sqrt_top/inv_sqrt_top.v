`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2025 09:20:45 PM
// Design Name: 
// Module Name: inv_sqrt_top
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



module inv_sqrt_top(
    input aclk,
    input arstn,

    input [143:0] S_AXIS_TDATA,
    input S_AXIS_TVALID,
    output S_AXIS_TREADY,

    output [143:0] M_AXIS_TDATA,
    output M_AXIS_TVALID,
    input M_AXIS_TREADY
    );
    
  
 //将输入的8个bf16数据延迟后输出
wire [127:0] data;    
wire data_valid;
wire data_ready;

wire [127:0] data_aligned;
wire align_valid;
wire align_ready;
    
//输入mean square sum  输出1/(rms)^(1/2)
wire [15:0] ms_data;
wire ms_valid;
wire ms_ready; 
    
wire [15:0] ms_eps_data;
wire ms_eps_valid;
wire ms_eps_ready;    
    
wire [15:0] invsqrt_data;
wire invsqrt_valid;
wire invsqrt_ready;   
    
assign rms_data = S_AXIS_TDATA[15:0];   
assign ms_valid = S_AXIS_TVALID;
assign data_valid = S_AXIS_TVALID;
assign S_AXIS_TREADY = ms_ready & data_ready;

assign align_ready = M_AXIS_TREADY;
assign invsqrt_ready = M_AXIS_TREADY;
assign M_AXIS_TVALID = invsqrt_valid & align_valid;


assign data = S_AXIS_TDATA[143:16];
    
  inv_fifo u_inv_fifo(
    .aclk(aclk),
    .arstn(arstn),

    .S_AXIS_TDATA(data),
    .S_AXIS_TVALID(data_valid),
    .S_AXIS_TREADY(data_ready),

    .M_AXIS_TDATA(data_aligned),
    .M_AXIS_TVALID(align_valid),
    .M_AXIS_TREADY(align_ready)
  );
 
 assign ms_data = S_AXIS_TDATA[15:0];
    
    
  bf_add u_epsilon(
        .aclk(aclk),
        .aresetn(arstn),
        .s_axis_a_tvalid(ms_valid),            // input wire s_axis_a_tvalid
        .s_axis_a_tready(ms_ready),            // output wire s_axis_a_tready
        .s_axis_a_tdata(ms_data),              // input wire [15 : 0] s_axis_a_tdata
        .s_axis_b_tready(),
        .s_axis_b_tvalid(ms_valid),
        .s_axis_b_tdata(16'h3728),

        .m_axis_result_tvalid(ms_eps_valid),  // output wire m_axis_result_tvalid
        .m_axis_result_tready(ms_eps_ready),  // input wire m_axis_result_tready
        .m_axis_result_tdata(ms_eps_data)    // output wire [15 : 0] m_axis_result_tdata

  );  
    
    
  inv_sqrt u_inv_sqrt(
    .aclk(aclk),
    .aresetn(arstn),

    .S_AXIS_TDATA(ms_eps_data),
    .S_AXIS_TVALID(ms_eps_valid),
    .S_AXIS_TREADY(ms_eps_ready),

    .M_AXIS_TDATA   (invsqrt_data),
    .M_AXIS_TVALID  (invsqrt_valid),
    .M_AXIS_TREADY  (invsqrt_ready)

  );
   
assign M_AXIS_TDATA = {data_aligned , invsqrt_data} ;
    
    
endmodule
