`timescale 1ns / 1ps

module cal_var_top_tb();

parameter CLK_PERIOD = 10;

/* 时钟 */
reg                   aclk;
always begin
    aclk = 1'b1;
    #(CLK_PERIOD/2) aclk = 1'b0;
    #(CLK_PERIOD/2);
end

/* 信号声明 */
reg                   arstn;
reg  [143:0]          S_AXIS_0_TDATA;
reg                   S_AXIS_0_TVALID;
wire                  S_AXIS_0_TREADY;
reg  [15:0]           S_AXIS_1_TDATA;
reg                   S_AXIS_1_TVALID;
wire                  S_AXIS_1_TREADY;
wire [143:0]          M_AXIS_TDATA;
wire                  M_AXIS_TVALID;
reg                   M_AXIS_TREADY;

/* 测试序列 */
initial begin
    /* 初始 */
    aclk           = 0;
    arstn          = 1;
    S_AXIS_0_TVALID= 0;
    S_AXIS_1_TVALID= 0;
    S_AXIS_0_TDATA = 144'h0;
    S_AXIS_1_TDATA = 16'h0;
    M_AXIS_TREADY  = 0;

    @(posedge aclk);
    arstn = 0;
    repeat(5) @(posedge aclk);
    arstn = 1;
    repeat(5) @(posedge aclk);

    /* 下游放通 */
    M_AXIS_TREADY  = 1;
    repeat(2) @(posedge aclk);

    /* 一帧数据：zero_mean=8×16'h1000, square_mean=16'h2000, E[x²]=16'h3000 */
    S_AXIS_0_TDATA = {128'h3f80_3f80_3f80_3f80_3f80_3f80_3f80_3f80, 16'h4440}; // {zm_data, sq_mean}
    S_AXIS_1_TDATA = 16'h4400;                                                   // E[x²]
    S_AXIS_0_TVALID= 1'b1;
    S_AXIS_1_TVALID= 1'b1;
    @(posedge aclk);
    while (!(S_AXIS_0_TREADY & S_AXIS_1_TREADY)) @(posedge aclk);  // 等待握手

    /* 发完 */
    S_AXIS_0_TVALID= 0;
    S_AXIS_1_TVALID= 0;
    repeat(200) @(posedge aclk);
    $finish;
end

/* DUT */
cal_var_top u_cal_var (
    .aclk            (aclk),
    .arstn           (arstn),
    .S_AXIS_0_TDATA  (S_AXIS_0_TDATA),
    .S_AXIS_0_TREADY (S_AXIS_0_TREADY),
    .S_AXIS_0_TVALID (S_AXIS_0_TVALID),
    .S_AXIS_1_TDATA  (S_AXIS_1_TDATA),
    .S_AXIS_1_TREADY (S_AXIS_1_TREADY),
    .S_AXIS_1_TVALID (S_AXIS_1_TVALID),
    .M_AXIS_TDATA    (M_AXIS_TDATA),
    .M_AXIS_TVALID   (M_AXIS_TVALID),
    .M_AXIS_TREADY   (M_AXIS_TREADY)
);

endmodule