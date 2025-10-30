`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2025 06:54:53 PM
// Design Name: 
// Module Name: cal_var_top
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

//接收process_mean_top的输出和rms_norm_top的输出，计算方差
//input：S_AXIS_0{128‘b zero_mean_data,16‘b square_mean(E[x]^2)}   S_AXIS_1{16‘b E[x^2]}
//output: {128'b zero_mean_data,16'b variance}
module cal_var_top(
    input  wire        aclk,
    input  wire        arstn,
    input  wire [143:0] S_AXIS_0_TDATA,
    output wire         S_AXIS_0_TREADY,
    input  wire         S_AXIS_0_TVALID,
    input  wire [15:0]  S_AXIS_1_TDATA,
    output wire         S_AXIS_1_TREADY,
    input  wire         S_AXIS_1_TVALID,
    output wire [143:0]  M_AXIS_TDATA,
    output wire         M_AXIS_TVALID,
    input  wire         M_AXIS_TREADY
    );



    assign top_valid = S_AXIS_0_TVALID & S_AXIS_1_TVALID;
    assign S_AXIS_0_TREADY = top_ready;
    assign S_AXIS_1_TREADY = top_ready;

    wire a_valid;
    wire a_ready;
    wire b_valid;
    wire b_ready;
    wire d_valid;
    wire d_ready;
    
    wire var_valid;
    wire var_ready;
    assign a_valid = top_valid;
    assign b_valid = top_valid;
    assign d_valid = top_valid;

    assign top_ready = a_ready & b_ready & d_ready;

    bf_sub cal_var (
          .aclk(aclk),
          .aresetn(arstn),
          .s_axis_a_tdata(S_AXIS_0_TDATA[15:0]),            //E[x^2]
          .s_axis_a_tvalid(a_valid),
          .s_axis_a_tready(a_ready),
          .s_axis_b_tdata(S_AXIS_1_TDATA),              //E[x]^2
          .s_axis_b_tvalid(b_valid),
          .s_axis_b_tready(b_ready),
          .m_axis_result_tdata(M_AXIS_TDATA[15:0]),  //variance
          .m_axis_result_tvalid(var_valid),
          .m_axis_result_tready(var_ready)
    ); 

    wire fifo_valid;
    wire fifo_ready;
    
    var_fifo fifo_uv(
        .aclk(aclk),
        .arstn(arstn),
        .S_AXIS_TDATA(S_AXIS_0_TDATA[143:16]),
        .S_AXIS_TVALID(d_valid),
        .S_AXIS_TREADY(d_ready),
        
        .M_AXIS_TDATA(M_AXIS_TDATA[143:16]),
        .M_AXIS_TVALID(fifo_valid),
        .M_AXIS_TREADY(fifo_ready)
    );


    assign M_AXIS_TVALID = var_valid & fifo_valid;
    assign var_ready =   M_AXIS_TREADY ;
    assign fifo_ready = M_AXIS_TREADY ;
    

endmodule
