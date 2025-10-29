`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2025 10:35:24 AM
// Design Name: 
// Module Name: accumulator
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


module accumulator(
    input aclk,
    input arstn,

    input [127:0] S_AXIS_TDATA,
    input S_AXIS_TVALID,
    output S_AXIS_TREADY,

    output [143:0] M_AXIS_TDATA,
    output M_AXIS_TVALID,
    output M_AXIS_TLAST,
    input M_AXIS_TREADY
    );

    wire [143:0] tdata_acc2fifo;
    wire tvalid_acc2fifo;
    wire tready_acc2fifo;
    wire tlast_acc2fifo;

    acc acc_u(
        .aclk(aclk),
        .arstn(arstn),

        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .S_AXIS_TREADY(S_AXIS_TREADY),

        .M_AXIS_TDATA(tdata_acc2fifo),
        .M_AXIS_TVALID(tvalid_acc2fifo),
        .M_AXIS_TLAST(tlast_acc2fifo),
        .M_AXIS_TREADY(tready_acc2fifo)
    );

    acc_fifo fifo_u(
        .aclk(aclk),
        .arstn(arstn),

        .S_AXIS_TDATA(tdata_acc2fifo),
        .S_AXIS_TVALID(tvalid_acc2fifo),
        .S_AXIS_TLAST(tlast_acc2fifo),
        .S_AXIS_TREADY(tready_acc2fifo),

        .M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .M_AXIS_TLAST(M_AXIS_TLAST),
        .M_AXIS_TREADY(M_AXIS_TREADY)
    );
endmodule
