`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2025 11:33:03 AM
// Design Name: 
// Module Name: parallel_squarev2
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


module parallel_squarev2(
        input aclk,
        input arstn,
    
        input [127:0] S_AXIS_TDATA,
        input S_AXIS_TVALID,
        output S_AXIS_TREADY,
    
        output [127:0] M_AXIS_TDATA,
        output M_AXIS_TVALID,
        input M_AXIS_TREADY
    );
    
wire a_ready [7:0];  
wire b_ready [7:0];
wire square_valid [7:0];
wire square_ready [7:0];
wire [15:0] square_out [7:0];
wire [15:0] bf16_in [7:0];

assign S_AXIS_TREADY = a_ready[7] & a_ready[6] & a_ready[5] & a_ready[4] & a_ready[3] & a_ready[2] & a_ready[1] & a_ready[0] & b_ready[7] & b_ready[6] & b_ready[5] & b_ready[4] & b_ready[3] & b_ready[2] & b_ready[1] & b_ready[0]; 

assign { bf16_in[7], bf16_in[6], bf16_in[5], bf16_in[4],
         bf16_in[3], bf16_in[2], bf16_in[1], bf16_in[0] } = S_AXIS_TDATA; 
  
genvar i;
    generate
        for (i=0; i<8; i=i+1) begin : square
            bf_mul square (
                .aclk(aclk),
                .aresetn(arstn),
                .s_axis_a_tvalid(S_AXIS_TVALID),
                .s_axis_a_tready(a_ready[i]),
                .s_axis_a_tdata(bf16_in[i]),
                .s_axis_b_tvalid(S_AXIS_TVALID),
                .s_axis_b_tready(b_ready[i]),
                .s_axis_b_tdata(bf16_in[i]),
                .m_axis_result_tvalid(square_valid[i]),
                .m_axis_result_tready(square_ready[i]),
                .m_axis_result_tdata(square_out[i])
            );
        end
endgenerate

assign {square_ready[7], square_ready[6], square_ready[5], square_ready[4],
         square_ready[3], square_ready[2], square_ready[1], square_ready[0]} =  {8{M_AXIS_TREADY}};

assign M_AXIS_TVALID = square_valid[0] & square_valid[1] & square_valid[2] & square_valid[3] & square_valid[4] & square_valid[5] & square_valid[6] & square_valid[7];

assign M_AXIS_TDATA = {square_out[7], square_out[6], square_out[5], square_out[4],
                        square_out[3], square_out[2], square_out[1], square_out[0]};
                        
endmodule
