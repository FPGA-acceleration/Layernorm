`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2025 03:16:04 PM
// Design Name: 
// Module Name: rms_norm_top
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


module rms_norm_top(
    input aclk,
    input arstn,

    input [143:0] S_AXIS_TDATA,
    input S_AXIS_TVALID,
    output S_AXIS_TREADY,

    output [127:0] M_AXIS_TDATA,
    output M_AXIS_TVALID,
    input M_AXIS_TREADY
    );

wire [127:0] data;
wire [15:0] inv_sqrt_rms; 


wire top_ready;
wire top_valid; 
wire [7:0] data_ready;
wire [7:0] rms_ready;


    inv_sqrt_top u_inv_sqrt_top(
        .aclk(aclk),
        .arstn(arstn),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .S_AXIS_TREADY(S_AXIS_TREADY),

        .M_AXIS_TDATA({data, inv_sqrt_rms}),
        .M_AXIS_TVALID(top_valid),
        .M_AXIS_TREADY(top_ready)

    );

assign top_ready = (&data_ready) & (&rms_ready);

wire [7:0] mul_valid;



genvar i;
generate
    for(i=0;i<8;i=i+1) begin : mul_invsqrtrms
        bf_mul mul(
        .aclk(aclk),
        .aresetn(arstn),
        .s_axis_a_tvalid(top_valid),            // input wire s_axis_a_tvalid
        .s_axis_a_tready(data_ready[i]),            // output wire s_axis_a_tready
        .s_axis_a_tdata(data[16*i+15:16*i]),              // input wire [15 : 0] s_axis_a_tdata
        .s_axis_b_tready(rms_ready[i]),
        .s_axis_b_tvalid(top_valid),
        .s_axis_b_tdata(inv_sqrt_rms),

        .m_axis_result_tvalid(mul_valid[i]),  // output wire m_axis_result_tvalid
        .m_axis_result_tready(M_AXIS_TREADY),  // input wire m_axis_result_tready
        .m_axis_result_tdata(M_AXIS_TDATA[16*i+15:16*i])    // output wire [15 : 0] m_axis_result_tdata

        );
    end
endgenerate
   
assign M_AXIS_TVALID = &mul_valid;
    
endmodule
