`timescale 1ns / 1ps
module ASYNC_FIFO_tb();
    // Testbench signals
    parameter DATA_WIDTH = 8;
    parameter WR_CLOCK_PERIOD = 10;
    parameter RD_CLOCK_PERIOD = 25;

    reg W_CLK_tb;
    reg W_RST_tb;
    reg W_inc_tb;
    reg [DATA_WIDTH-1:0] W_data_tb;
    reg R_CLK_tb;
    reg R_RST_tb;
    reg R_inc_tb;
    wire [DATA_WIDTH-1:0] R_data_tb;
    wire empty_tb;
    wire full_tb;

    integer i;
    integer j;

    // CLK Generator
    always #(WR_CLOCK_PERIOD/2) W_CLK_tb = ~W_CLK_tb;
    always #(RD_CLOCK_PERIOD/2) R_CLK_tb = ~R_CLK_tb;

    // Design Instantiation
    ASYNC_FIFO #(
        .DATA_WIDTH(DATA_WIDTH)
    ) DUT (
        .W_CLK(W_CLK_tb),
        .W_RST(W_RST_tb),
        .W_inc(W_inc_tb),
        .W_data(W_data_tb),
        .R_CLK(R_CLK_tb),
        .R_RST(R_RST_tb),
        .R_inc(R_inc_tb),
        .R_data(R_data_tb),
        .empty(empty_tb),
        .full(full_tb)
    );

    initial begin
        $dumpfile("ASYNC_FIFO.vcd");           // Save waveform to this file     
        $dumpvars;                             // Dump all variables recursively 
        
        fork
            // --- Writer process ---
            begin : WRITE_PROC
                WR_initialize;
                WR_reset;
                $display("Start writing 14 bytes...");
                for (i = 0; i < 14; i = i + 1) begin
                    write(i+1);
                    $display("WROTE: %0d",i+1);
                end
                $display("Finished writing");
            end

            // --- Reader process ---
            begin : READ_PROC
                RD_initialize;
                RD_reset;
                $display("Start reading 14 bytes...");
                for (j = 0; j < 14; j = j + 1) begin
                    read(j+1);
                end
                read(7);
                $display("Finished reading");
            end
        join
        
        repeat (2) @(negedge R_CLK_tb);
        $stop;
    end

    // Tasks Definitions 
    task WR_initialize;
    begin
        W_CLK_tb = 1'b0;
        W_inc_tb = 1'b0;
        W_data_tb = 'b0;
    end
    endtask

    task RD_initialize;
    begin
        R_CLK_tb = 1'b0;
        R_inc_tb = 1'b0;
    end
    endtask

    task WR_reset;
    begin
        W_RST_tb = 1'b1;
        #(WR_CLOCK_PERIOD)
        W_RST_tb = 1'b0;
        #(WR_CLOCK_PERIOD)
        W_RST_tb = 1'b1;
    end
    endtask

    task RD_reset;
    begin
        R_RST_tb = 1'b1;
        #(RD_CLOCK_PERIOD)
        R_RST_tb = 1'b0;
        #(RD_CLOCK_PERIOD)
        R_RST_tb = 1'b1;
    end
    endtask

    task write(input [DATA_WIDTH-1:0] data);
    begin
        @(negedge W_CLK_tb);
        while (full_tb) begin
            $display("[%0t] FIFO FULL, writer waiting...", $time);
            @(negedge W_CLK_tb);
        end
        W_data_tb = data;
        @(negedge W_CLK_tb);
        W_inc_tb = 1'b1;
        @(negedge W_CLK_tb);
        W_inc_tb = 1'b0;
    end
    endtask

    task read(input [DATA_WIDTH-1:0] exp_data);
    begin
        @(negedge R_CLK_tb);
        R_inc_tb = 1'b1;
        @(negedge R_CLK_tb);
        R_inc_tb = 1'b0;

        if (R_data_tb == exp_data)
            $display("PASS: Expected %0d, Got %0d",exp_data,R_data_tb);
        else
            $display("FAIL: Expected %0d, Got %0d",exp_data,R_data_tb);
    end
    endtask
endmodule