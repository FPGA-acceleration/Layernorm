`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2025 07:14:20 PM
// Design Name: 
// Module Name: axis_broadcaster_top
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


//接收128bit的S_AXIS输入，通过广播模块转为两个128bit的M_AXIS输出

module axis_broadcaster_top(
    input aclk,
    input aresetn,
    input S_AXIS_TVALID,
    output S_AXIS_TREADY,
    input [127 : 0] S_AXIS_TDATA,
    output  M0_AXIS_TVALID,
    output  M1_AXIS_TVALID,
    input   M0_AXIS_TREADY,
    input   M1_AXIS_TREADY,
    output [127 : 0] M0_AXIS_TDATA,
    output [127 : 0] M1_AXIS_TDATA
    );
    
    
    
  axis_broadcaster_0 u_brdcstip (
  
  .aclk(aclk),                    // input wire aclk
  .aresetn(aresetn),              // input wire aresetn
  .s_axis_tvalid(S_AXIS_TVALID),  // input wire s_axis_tvalid
  .s_axis_tready(S_AXIS_TREADY),  // output wire s_axis_tready
  .s_axis_tdata(S_AXIS_TDATA),    // input wire [127 : 0] s_axis_tdata
  .m_axis_tvalid({M1_AXIS_TVALID, M0_AXIS_TVALID}),  // output wire [1 : 0] m_axis_tvalid
  .m_axis_tready({M1_AXIS_TREADY, M0_AXIS_TREADY}),  // input wire [1 : 0] m_axis_tready
  .m_axis_tdata({M1_AXIS_TDATA, M0_AXIS_TDATA})     // output wire [255 : 0] m_axis_tdata

  
  );
    
    
    
    
endmodule
