`timescale 1ns / 1ps
module RST_SYNC_tb ();
    // Testbench signals
    reg RST_tb;
    reg CLK_tb;
    wire SYNC_RST_tb;

    parameter CLOCK_PERIOD = 10;
    parameter NUM_STAGES = 6;

    // CLK Generator
    always #(CLOCK_PERIOD/2) CLK_tb = ~CLK_tb;

    // Design Instantiation
    RST_SYNC #(.NUM_STAGES(NUM_STAGES)) DUT(
        .RST(RST_tb),
        .CLK(CLK_tb),
        .SYNC_RST(SYNC_RST_tb)
    );

    initial begin
        $dumpfile("RST_SYNC.vcd");           // Save waveform to this file     
        $dumpvars;                           // Dump all variables recursively 

        initialize;
        reset;

        #(10*CLOCK_PERIOD)

        $stop;
    end


    // Tasks Definitions 
    task initialize;
    begin
        CLK_tb = 1'b0;
    end
    endtask

    task reset;
    begin
        RST_tb = 1'b1;
        #((NUM_STAGES+1)*CLOCK_PERIOD)
        RST_tb = 1'b0;
        #(CLOCK_PERIOD)
        RST_tb = 1'b1;
    end
    endtask

endmodule