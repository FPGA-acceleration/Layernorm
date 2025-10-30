`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2025 02:58:08 PM
// Design Name: 
// Module Name: inv_fifo
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


module inv_fifo(
    input aclk,
    input arstn,

    input [127:0] S_AXIS_TDATA,
    input S_AXIS_TVALID,
    output S_AXIS_TREADY,

    output [127:0] M_AXIS_TDATA,
    output M_AXIS_TVALID,
    output M_AXIS_TLAST,
    input M_AXIS_TREADY
    );

    localparam depth = 45 ;

    reg [ depth - 1 : 0 ] m_axis_tvalid;

    always @(posedge aclk or negedge arstn) begin
        if(!arstn) begin
            m_axis_tvalid <= 45'b0;
        end

        else if(S_AXIS_TREADY & S_AXIS_TVALID) begin
            m_axis_tvalid <= {m_axis_tvalid[ depth - 2 : 0], 1'b1};
        end

        else if(M_AXIS_TREADY)begin
            m_axis_tvalid <= {m_axis_tvalid[ depth - 2 : 0], 1'b0};
        end

        else begin
            m_axis_tvalid <= m_axis_tvalid;
        end
    end

    assign M_AXIS_TVALID = m_axis_tvalid[ depth - 1 ];

    c_shift_ram_3 shift_ram_u (
        .D({S_AXIS_TDATA}),      // input wire [127 : 0] D
        .CLK(aclk),  // input wire CLK
        .CE((S_AXIS_TREADY & S_AXIS_TVALID) || (M_AXIS_TREADY)),    // input wire CE
        .Q({M_AXIS_TDATA})      // output wire [127 : 0] Q
    );


    assign S_AXIS_TREADY = !m_axis_tvalid[ depth - 1 ] || M_AXIS_TREADY;
endmodule