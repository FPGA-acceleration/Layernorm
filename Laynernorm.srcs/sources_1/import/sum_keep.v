`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2025 12:00:37 PM
// Design Name: 
// Module Name: sum_keep
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


module sum_keep(
    input aclk,
    input arstn,

    input [15:0] S_AXIS_TDATA,
    input S_AXIS_TVALID,
    input S_AXIS_TLAST,
    output S_AXIS_TREADY,

    output [15:0] M_AXIS_TDATA,
    output M_AXIS_TVALID,
    input M_AXIS_TREADY
    );
    
    
    
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
    
    
    wire [15:0] acc_data; 
    assign acc_data = S_AXIS_TDATA ;
    
    
    
    
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
