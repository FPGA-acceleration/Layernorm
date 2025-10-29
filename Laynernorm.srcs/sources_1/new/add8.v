module add8(
    input              aclk,
    input              arstn,
    input  [127:0]     S_AXIS_TDATA,
    input              S_AXIS_TVALID,
    output             S_AXIS_TREADY,

    output [15:0]      M_AXIS_TDATA,
    output             M_AXIS_TVALID,
    input              M_AXIS_TREADY
);

    // ---------------------------------------
    // 拆分输入数据
    // ---------------------------------------
    wire [15:0] bf16_in [7:0];
    assign { bf16_in[7], bf16_in[6], bf16_in[5], bf16_in[4],
             bf16_in[3], bf16_in[2], bf16_in[1], bf16_in[0] } = S_AXIS_TDATA;

    // ---------------------------------------
    // Stage 1: 四个加法器
    // ---------------------------------------
    wire [15:0] s1_out [3:0];
    wire        s1_valid [3:0];
    wire        s1_ready [3:0];
    wire [7:0]  ready;

    assign S_AXIS_TREADY = &ready; // 所有加法器都准备好时，输入才准备好    

    genvar i;
    generate
        for (i=0; i<4; i=i+1) begin : STAGE1
            floating_point_1 add_s1 (
                .aclk(aclk),
                .aresetn(arstn),
                .s_axis_a_tvalid(S_AXIS_TVALID),
                .s_axis_a_tready(ready[2*i]),
                .s_axis_a_tdata(bf16_in[2*i]),
                .s_axis_b_tvalid(S_AXIS_TVALID),
                .s_axis_b_tready(ready[2*i+1]),
                .s_axis_b_tdata(bf16_in[2*i+1]),
                .m_axis_result_tvalid(s1_valid[i]),
                .m_axis_result_tready(s1_ready[i]),
                .m_axis_result_tdata(s1_out[i])
            );
        end
    endgenerate

    // ---------------------------------------
    // Stage 2: 两个加法器
    // ---------------------------------------
    wire [15:0] s2_out [1:0];
    wire        s2_valid [1:0];
    wire        s2_ready [1:0];

    generate
        for (i=0; i<2; i=i+1) begin : STAGE2
            floating_point_1 add_s2 (
                .aclk(aclk),
                .aresetn(arstn),
                .s_axis_a_tvalid(s1_valid[2*i]),
                .s_axis_a_tready(s1_ready[2*i]),
                .s_axis_a_tdata(s1_out[2*i]),
                .s_axis_b_tvalid(s1_valid[2*i+1]),
                .s_axis_b_tready(s1_ready[2*i+1]),
                .s_axis_b_tdata(s1_out[2*i+1]),
                .m_axis_result_tvalid(s2_valid[i]),
                .m_axis_result_tready(s2_ready[i]),
                .m_axis_result_tdata(s2_out[i])
            );
        end
    endgenerate

    // ---------------------------------------
    // Stage 3: 最终加法
    // ---------------------------------------

    floating_point_1 add_s3 (
        .aclk(aclk),
        .aresetn(arstn),
        .s_axis_a_tvalid(s2_valid[0]),
        .s_axis_a_tready(s2_ready[0]),
        .s_axis_a_tdata(s2_out[0]),
        .s_axis_b_tvalid(s2_valid[1]),
        .s_axis_b_tready(s2_ready[1]),
        .s_axis_b_tdata(s2_out[1]),
        .m_axis_result_tvalid(M_AXIS_TVALID),
        .m_axis_result_tready(M_AXIS_TREADY),
        .m_axis_result_tdata(M_AXIS_TDATA)
    );


endmodule
