`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NJU
// Engineer: HuaY
// 
// Create Date: 10/21/2025 02:42:53 PM
// Design Name: inverse square root 
// Module Name: inv_sqrt
// Project Name: accelarate activation function
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


module inv_sqrt
(
    input  wire        aclk,
    input  wire        aresetn,

    input  wire [15:0] S_AXIS_TDATA,
    input  wire        S_AXIS_TVALID,
    output wire        S_AXIS_TREADY,

    output wire [15:0] M_AXIS_TDATA,
    output wire        M_AXIS_TVALID,
    input  wire        M_AXIS_TREADY
    );


wire [15:0]data1;
wire [15:0]data2;
wire [15:0]data2_align;
wire [15:0]data_newton1;
wire [15:0]data_newton2;
wire [15:0]data_newton3;
wire [15:0]data_newton4;

wire S_AXIS_TREADY1;
wire S_AXIS_TREADY2;
wire S_AXIS_TREADY3;
wire S_AXIS_TREADY4;

assign data2 = 16'h5f37 - (S_AXIS_TDATA>>1); 

assign S_AXIS_TREADY = S_AXIS_TREADY1 & S_AXIS_TREADY2 & S_AXIS_TREADY3 & S_AXIS_TREADY4; 

bf_mul u_gethalf(
    .aclk(aclk),                                  // input wire aclk
    .aresetn(aresetn),
    .s_axis_a_tvalid(S_AXIS_TVALID),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(S_AXIS_TREADY1),            // output wire s_axis_a_tready
    .s_axis_a_tdata(S_AXIS_TDATA),              // input wire [15 : 0] s_axis_a_tdata
    .s_axis_b_tready(),
    .s_axis_b_tvalid(1'b1),
    .s_axis_b_tdata(16'h3f00),
    .m_axis_result_tvalid(tvalid_gethalf),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(tready_gethalf),  // input wire m_axis_result_tready
    .m_axis_result_tdata(data1)    // output wire [15 : 0] m_axis_result_tdata    

);

//x = data2*(1.5-data1*data2*data2);

bf_mul u_newton1(
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axis_a_tvalid(S_AXIS_TVALID),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(S_AXIS_TREADY2),            // output wire s_axis_a_tready
    .s_axis_a_tdata(data2),              // input wire [15 : 0] s_axis_a_tdata
    .s_axis_b_tready(S_AXIS_TREADY3),
    .s_axis_b_tvalid(S_AXIS_TVALID),
    .s_axis_b_tdata(data2),
    .m_axis_result_tvalid(tvalid_newton1),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(tready_newton1),  // input wire m_axis_result_tready
    .m_axis_result_tdata(data_newton1)    // output wire [15 : 0] m_axis_result_tdata    
);


bf_mul u_newton2(
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axis_a_tvalid(tvalid_gethalf),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(tready_gethalf),            // output wire s_axis_a_tready
    .s_axis_a_tdata(data1),              // input wire [15 : 0] s_axis_a_tdata
    .s_axis_b_tready(tready_newton1),
    .s_axis_b_tvalid(tvalid_newton1),
    .s_axis_b_tdata(data_newton1),
    .m_axis_result_tvalid(tvalid_newton2),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(tready_newton2),  // input wire m_axis_result_tready
    .m_axis_result_tdata(data_newton2)    // output wire [15 : 0] m_axis_result_tdata    
);

bf_sub u_newton3(
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axis_b_tvalid(tvalid_newton2),            // input wire s_axis_a_tvalid
    .s_axis_b_tready(tready_newton2),            // output wire s_axis_a_tready
    .s_axis_b_tdata(data_newton2),              // input wire [15 : 0] s_axis_a_tdata
    .s_axis_a_tready(),
    .s_axis_a_tvalid(1'b1),
    .s_axis_a_tdata(16'h3fc0),
    .m_axis_result_tvalid(tvalid_newton3),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(tready_newton3),  // input wire m_axis_result_tready
    .m_axis_result_tdata(data_newton3)    // output wire [15 : 0] m_axis_result_tdata    
);


wire tvalid_align,tready_align;

bf_fifo u_fifo(
    .aclk(aclk),
    .aresetn(aresetn),
    .S_AXIS_TDATA(data2),
    .S_AXIS_TVALID(S_AXIS_TVALID),
    .S_AXIS_TREADY(S_AXIS_TREADY4),
    .M_AXIS_TDATA(data2_align),
    .M_AXIS_TVALID(tvalid_align),
    .M_AXIS_TREADY(tready_align)

);

wire tvalid_newton4,tready_newton4;
assign M_AXIS_TVALID = tvalid_newton4;
assign tready_newton4 = M_AXIS_TREADY;


bf_mul u_newton4(
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axis_a_tvalid(tvalid_newton3),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(tready_newton3),            // output wire s_axis_a_tready
    .s_axis_a_tdata(data_newton3),              // input wire [15 : 0] s_axis_a_tdata
    .s_axis_b_tready(tready_align),
    .s_axis_b_tvalid(tvalid_align),
    .s_axis_b_tdata(data2_align),
    .m_axis_result_tvalid(tvalid_newton4),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(tready_newton4),  // input wire m_axis_result_tready
    .m_axis_result_tdata(data_newton4)    // output wire [15 : 0] m_axis_result_tdata    
);


assign M_AXIS_TDATA = data_newton4;


endmodule

