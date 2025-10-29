`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 09:30:14 PM
// Design Name: 
// Module Name: acc_fifo
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


module acc_fifo(
    input aclk,
    input arstn,

    input [143:0] S_AXIS_TDATA,
    input S_AXIS_TVALID,
    input S_AXIS_TLAST,
    output S_AXIS_TREADY,

    output [143:0] M_AXIS_TDATA,
    output M_AXIS_TVALID,
    output M_AXIS_TLAST,
    input M_AXIS_TREADY
    );

    wire [127:0] meta_data = S_AXIS_TDATA[143:16];
    wire [15:0] acc_data = S_AXIS_TDATA[15:0];

    reg [95:0] m_axis_tvalid;

    always @(posedge aclk or negedge arstn) begin
        if(!arstn) begin
            m_axis_tvalid <= 96'b0;
        end

        else if(S_AXIS_TREADY & S_AXIS_TVALID) begin
            m_axis_tvalid <= {m_axis_tvalid[94:0], 1'b1};
        end

        else if(M_AXIS_TREADY & M_AXIS_TVALID)begin
            m_axis_tvalid <= {m_axis_tvalid[94:0], 1'b0};
        end

        else begin
            m_axis_tvalid <= m_axis_tvalid;
        end
    end

    assign M_AXIS_TVALID = m_axis_tvalid[95];

    c_shift_ram_2 shift_ram_u (
        .D({S_AXIS_TLAST, meta_data}),      // input wire [128 : 0] D
        .CLK(aclk),  // input wire CLK
        .CE((S_AXIS_TREADY & S_AXIS_TVALID) || (M_AXIS_TREADY & M_AXIS_TVALID)),    // input wire CE
        .Q({M_AXIS_TLAST, M_AXIS_TDATA[143:16]})      // output wire [128 : 0] Q
    );

    reg [15:0] acc_data_reg;
    always @(posedge aclk or negedge arstn) begin
        if(!arstn) begin
            acc_data_reg <= 16'b0;
        end

        else if(S_AXIS_TREADY & S_AXIS_TVALID & S_AXIS_TLAST) begin
            acc_data_reg <= acc_data;
        end

        else begin
            acc_data_reg <= acc_data_reg;
        end
    end

    assign M_AXIS_TDATA[15:0] = acc_data_reg;

    assign S_AXIS_TREADY = !m_axis_tvalid[95] || M_AXIS_TREADY;
endmodule
