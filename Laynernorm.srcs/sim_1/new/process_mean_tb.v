`timescale 1ns / 1ps

module process_mean_tb();

parameter CLK_PERIOD = 10;

reg                   aclk;
reg                   arstn;
reg  [143:0]          S_AXIS_TDATA;
reg                   S_AXIS_TVALID;
wire                  S_AXIS_TREADY;
wire [143:0]          M_AXIS_TDATA;
wire                  M_AXIS_TVALID;
reg                   M_AXIS_TREADY;

always begin
    aclk = 1'b1;
    #(CLK_PERIOD/2) aclk = 1'b0;
    #(CLK_PERIOD/2);
end

initial begin
    aclk          = 0;
    arstn         = 1;
    S_AXIS_TVALID = 0;
    S_AXIS_TDATA  = 144'h0;
    M_AXIS_TREADY = 0;

    @(posedge aclk);
    arstn = 0;
    repeat(5) @(posedge aclk);
    arstn = 1;
    repeat(5) @(posedge aclk);
    M_AXIS_TREADY = 1;
    repeat(2) @(posedge aclk);

    // 发送一帧：8 个 16'h3f80 (=1.0) + sum=16'h3606
    S_AXIS_TDATA  = 144'h3f80_3f80_3f80_3f80_3f80_3f80_3f80_3f80_44c0;
    S_AXIS_TVALID = 1'b1;
    @(posedge aclk);
    while (!S_AXIS_TREADY) @(posedge aclk);

    S_AXIS_TVALID = 0;
    repeat(200) @(posedge aclk);
    $finish;
end

// DUT
process_mean_top u0 (
    .aclk          (aclk),
    .arstn         (arstn),
    .S_AXIS_TDATA  (S_AXIS_TDATA),
    .S_AXIS_TVALID (S_AXIS_TVALID),
    .S_AXIS_TREADY (S_AXIS_TREADY),
    .M_AXIS_TDATA  (M_AXIS_TDATA),
    .M_AXIS_TVALID (M_AXIS_TVALID),
    .M_AXIS_TREADY (M_AXIS_TREADY)
);

endmodule