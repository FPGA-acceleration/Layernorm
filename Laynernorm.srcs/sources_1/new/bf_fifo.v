`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 04:28:27 PM
// Design Name: 
// Module Name: bf_fifo
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
module bf_fifo(
    input  wire       aclk,
    input  wire       aresetn,

    input  wire [15:0] S_AXIS_TDATA,
    input  wire        S_AXIS_TVALID,
    output wire        S_AXIS_TREADY,

    output wire [15:0] M_AXIS_TDATA,
    output wire        M_AXIS_TVALID,
    input  wire        M_AXIS_TREADY
);

// Pipeline depth
localparam integer PIPELINE_STAGES = 27;

// Pipeline registers
reg  [15:0] pipe_data  [0:PIPELINE_STAGES-1];
reg         pipe_valid [0:PIPELINE_STAGES-1];
wire        pipe_ready [0:PIPELINE_STAGES-1];


genvar g;
generate
  for (g = 0; g < PIPELINE_STAGES; g = g + 1) begin : ready_chain
    if (g == PIPELINE_STAGES - 1)  // 最后一级连到输出
      assign pipe_ready[g] = !pipe_valid[g] || M_AXIS_TREADY;
    else                           // 中间级往前传
      assign pipe_ready[g] = !pipe_valid[g] || pipe_ready[g + 1];
  end
endgenerate


assign S_AXIS_TREADY = pipe_ready[0];


// Stage 0: sample only when TVALID=1
always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        pipe_data[0]  <= 128'b0;
        pipe_valid[0] <= 1'b0;
    end else if (pipe_ready[0]) begin
        pipe_valid[0] <= S_AXIS_TVALID; // pass through valid
        if (S_AXIS_TVALID) begin
            pipe_data[0] <= S_AXIS_TDATA; // update data only when valid
        end
    end
end

// Stages 1-3: propagate; update data only when previous stage is valid
integer i;

always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        for (i = 1; i < PIPELINE_STAGES; i = i + 1) begin
            pipe_data[i]  <= 128'b0;
            pipe_valid[i] <= 1'b0;
        end
    end else begin
        for (i = 1; i < PIPELINE_STAGES; i = i + 1) begin
            if (pipe_ready[i]) begin
                pipe_valid[i] <= pipe_valid[i-1];
                if (pipe_valid[i-1]) begin
                    pipe_data[i] <= pipe_data[i-1];
                end
            end
        end
    end
end

assign M_AXIS_TDATA  = pipe_data[PIPELINE_STAGES-1];
assign M_AXIS_TVALID = pipe_valid[PIPELINE_STAGES-1];

endmodule
