`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 07:12:21 PM
// Design Name: 
// Module Name: gen_tlast
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


module gen_tlast(
    input aclk,
    input arstn,

    input [15:0] S_AXIS_TDATA,
    input        S_AXIS_TVALID,
    output       S_AXIS_TREADY,

    output [15:0] M_AXIS_TDATA,
    output        M_AXIS_TVALID,
    output        M_AXIS_TLAST,    
    input         M_AXIS_TREADY
    );

    reg [15:0] s_axis_tdata;

    always @(posedge aclk or negedge arstn) begin
        if(!arstn) begin
            s_axis_tdata <= 16'b0;
        end

        else if(S_AXIS_TREADY & S_AXIS_TVALID)begin
            s_axis_tdata <= S_AXIS_TDATA;
        end

        else begin
            s_axis_tdata <= s_axis_tdata;
        end
    end

    assign M_AXIS_TDATA = s_axis_tdata;
    
    reg [6:0] count;

    always @(posedge aclk or negedge arstn) begin
        if(!arstn) begin
            count <= 7'd95;
        end

        else if(S_AXIS_TREADY & S_AXIS_TVALID) begin
            if(count == 7'd95) begin
                count <= 7'b0;
            end
            else begin
                count <= count + 1'b1;
            end
        end

        else begin
            count <= count;
        end
    end

    assign M_AXIS_TLAST = count == 7'd95;


    reg m_axis_tvalid;

    always @(posedge aclk or negedge arstn) begin
        if(!arstn) begin
            m_axis_tvalid <= 1'b0;
        end

        else if(S_AXIS_TREADY & S_AXIS_TVALID) begin
            m_axis_tvalid <= 1'b1;
        end

        else if(M_AXIS_TREADY & M_AXIS_TVALID)begin
            m_axis_tvalid <= 1'b0;
        end

        else begin
            m_axis_tvalid <= m_axis_tvalid;
        end
    end

    assign M_AXIS_TVALID = m_axis_tvalid;

    assign S_AXIS_TREADY = !m_axis_tvalid || M_AXIS_TREADY;
endmodule
