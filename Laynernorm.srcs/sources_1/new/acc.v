//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 07:51:31 PM
// Design Name: 
// Module Name: accumulater
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


module acc(
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

    c_shift_ram_1 shift_ram_u (
    .D(S_AXIS_TDATA),      // input wire [127 : 0] D
    .CLK(aclk),  // input wire CLK
    .Q(M_AXIS_TDATA[143:16])      // output wire [127 : 0] Q
    );

    wire [15:0] tdata_add2last;
    wire tvalid_add2last;
    wire tready_add2last;

    add8 add8_u(
        .aclk(aclk),
        .arstn(arstn),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .S_AXIS_TREADY(S_AXIS_TREADY),

        .M_AXIS_TDATA(tdata_add2last),
        .M_AXIS_TVALID(tvalid_add2last),
        .M_AXIS_TREADY(tready_add2last)
    );

    wire [15:0] tdata_last2acc;
    wire tvalid_last2acc;
    wire tlast_last2acc;
    wire tready_last2acc;

    gen_tlast gen_last_u(
        .aclk(aclk),
        .arstn(arstn),

        .S_AXIS_TDATA(tdata_add2last),
        .S_AXIS_TVALID(tvalid_add2last),
        .S_AXIS_TREADY(tready_add2last),

        .M_AXIS_TDATA(tdata_last2acc),
        .M_AXIS_TVALID(tvalid_last2acc),
        .M_AXIS_TLAST(tlast_last2acc),    
        .M_AXIS_TREADY(tready_last2acc)
    );


    floating_point_2 acc_u (
        .aclk(aclk),                                  // input wire aclk
        .aresetn(arstn),                            // input wire aresetn
        .s_axis_a_tvalid(tvalid_last2acc),            // input wire s_axis_a_tvalid
        .s_axis_a_tready(tready_last2acc),            // output wire s_axis_a_tready
        .s_axis_a_tdata(tdata_last2acc),              // input wire [15 : 0] s_axis_a_tdata
        .s_axis_a_tlast(tlast_last2acc),              // input wire s_axis_a_tlast
        .m_axis_result_tvalid(M_AXIS_TVALID),  // output wire m_axis_result_tvalid
        .m_axis_result_tready(M_AXIS_TREADY),  // input wire m_axis_result_tready
        .m_axis_result_tdata(M_AXIS_TDATA[15:0]),    // output wire [15 : 0] m_axis_result_tdata
        .m_axis_result_tlast(M_AXIS_TLAST)    // output wire m_axis_result_tlast
    );


endmodule
