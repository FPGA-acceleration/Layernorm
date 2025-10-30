`timescale 1ns / 1ps

module matrix_tb();
    parameter CLK_PERIOD = 10; // 100 MHz clock
    parameter NUM_ELEMENTS = 64*768;
    parameter BURST_SIZE = 8;
    parameter NUM_BURSTS = NUM_ELEMENTS / BURST_SIZE;
    
    reg aclk;
    reg arstn;
    reg [127:0] S_AXIS_TDATA;
    reg S_AXIS_TVALID;
    wire S_AXIS_TREADY;
    wire [127:0] M_AXIS_TDATA;
    wire M_AXIS_TVALID;
    reg M_AXIS_TREADY;
    
    Layernorm_wrapper wrapper_u(
        .M_AXIS_0_tdata(M_AXIS_TDATA),
        .M_AXIS_0_tready(M_AXIS_TREADY),
        .M_AXIS_0_tvalid(M_AXIS_TVALID),
        .S_AXIS_0_tdata(S_AXIS_TDATA),
        .S_AXIS_0_tready(S_AXIS_TREADY),
        .S_AXIS_0_tvalid(S_AXIS_TVALID),
        .aclk(aclk),
        .arstn(arstn)
    );
    
    always #(CLK_PERIOD/2) aclk = ~aclk;
    
    reg [15:0] bf16_memory [64*768-1:0];
    
    reg [15:0] test0, test1, test2, test3, test4, test5, test6, test7;
    wire [15:0] result0, result1, result2, result3, result4, result5, result6, result7;

    assign {result7, result6, result5, result4, result3, result2, result1, result0} = M_AXIS_TDATA;
    
    integer fd;
    integer n;
    integer c;
    initial begin
        fd = $fopen("X_test_tensor_bf16.bin", "rb");
        n = $fread(bf16_memory, fd);
        
        for(c=0;c<NUM_ELEMENTS;c=c+1) begin
            bf16_memory[c] = {bf16_memory[c][7:0], bf16_memory[c][15:8]};
        end
        
        $display("%d byte data has been loaded", n);
        //$readmemh("bf16_data_1.hex", bf16_memory, 0, 767);
        //$readmemh("bf16_data_0.hex", bf16_memory, 768, 1535); 
    end
    
    integer fd1;
    initial begin
        fd1 = $fopen("result.txt", "wb");
        $display("result file has been opened");
    end
    
    
    
    integer i, j;
    reg [127:0] temp_data;
    
    initial begin
        // Initialize signals
        aclk = 0;
        arstn = 0;
        S_AXIS_TVALID = 0;
        S_AXIS_TDATA = 0;
        M_AXIS_TREADY = 1;
        
        // Release reset after some time
        #100 arstn = 1;
        
        // Wait a few cycles after reset
        #(CLK_PERIOD * 5);
        
        // Send data bursts
        for (i = 0; i < NUM_BURSTS; i = i + 1) begin
            // Prepare data for current burst
            for (j = 0; j < BURST_SIZE; j = j + 1) begin
                temp_data[j*16 +: 16] = bf16_memory[i*BURST_SIZE + j];
            end

            test0 = temp_data[15:0];
            test1 = temp_data[31:16];
            test2 = temp_data[47:32];
            test3 = temp_data[63:48];
            test4 = temp_data[79:64];
            test5 = temp_data[95:80];
            test6 = temp_data[111:96];
            test7 = temp_data[127:112];
            
            S_AXIS_TVALID = 1;
            S_AXIS_TDATA = temp_data;
            
            wait(S_AXIS_TREADY);
            @(posedge aclk);
        end
        
        S_AXIS_TVALID = 0;
        S_AXIS_TDATA = 128'bx;
        
        // Wait for all processing to complete
        #(CLK_PERIOD * 100);
        $display("Simulation completed successfully");
    end
    
    
    integer count;
    always @(posedge aclk or negedge arstn) begin 
        if(!arstn) begin
            count<=32'b0;
        end
        
        else if(M_AXIS_TVALID) begin
            if(count==32'd95) count<=32'b0;
            else count<=count+1;
        end
        
        else count<=count;
    end
    
    integer k;
    always @(posedge aclk) begin 
        if(M_AXIS_TVALID) begin
            for(k=0;k<16;k=k+1) begin
                $fwrite(fd1, "%c", M_AXIS_TDATA[8*k+:8]);
            end
        end
    end
    
    
    integer batch;
    always @(posedge aclk or negedge arstn) begin
        if(!arstn)
            batch <= 0;
        else if(count == 32'd95) begin
            batch <= batch + 1;
            $display("Now in batch %d", batch);
        end
        else batch <= batch;
    end
    
    
    initial begin
        wait(batch == 64);
        $fclose(fd1);
        $stop;
    end

    
    
endmodule
