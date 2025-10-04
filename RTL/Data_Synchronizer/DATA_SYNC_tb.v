`timescale 1ns / 1ps
module DATA_SYNC_tb();
    parameter CLOCK_PERIOD = 10;
    parameter NUM_STAGES = 2;
    parameter BUS_WIDTH = 8;
    // Testbench signals
    reg [BUS_WIDTH-1:0]  unsync_bus_tb;
    reg                  bus_enable_tb;
    reg                  CLK_tb;
    reg                  RST_tb;
    wire [BUS_WIDTH-1:0] sync_bus_tb;
    wire                 enable_pulse_tb;


    // CLK Generator
    always #(CLOCK_PERIOD/2) CLK_tb = ~CLK_tb;

    // Design Instantiation
    DATA_SYNC #(
        .NUM_STAGES(NUM_STAGES),
        .BUS_WIDTH(BUS_WIDTH)
    ) DUT (
        .unsync_bus(unsync_bus_tb),
        .bus_enable(bus_enable_tb),
        .CLK(CLK_tb),
        .RST(RST_tb),
        .sync_bus(sync_bus_tb),
        .enable_pulse(enable_pulse_tb)
    );

    initial begin
        $dumpfile("DATA_SYNC.vcd");           // Save waveform to this file     
        $dumpvars;                            // Dump all variables recursively 

        initialize;
        reset;

        $display("=== Normal Data Transfer Tests ===");
        drive_and_check('hA3);
        drive_and_check('hF3);
        drive_and_check('h55);

        $display("\n=== Corner Case: bus_enable stuck at 0 ===");
        unsync_bus_tb = 'h77;
        bus_enable_tb = 1'b0;
        #((NUM_STAGES + 1) * CLOCK_PERIOD);
        if (sync_bus_tb == 'h55) begin
            $display("PASS: Data unchanged when bus_enable=0: sync_bus=%0h",sync_bus_tb);
        end else begin
            $display("FAIL: Data changed unexpectedly: expected 55, got %0h",sync_bus_tb);
        end

        $display("\n=== Corner Case: bus_enable stuck at 1 ===");
        unsync_bus_tb = 'h99;
        bus_enable_tb = 1'b1;
        #((NUM_STAGES + 1) * CLOCK_PERIOD);
        unsync_bus_tb = 'hAA;
        #((NUM_STAGES + 1) * CLOCK_PERIOD);
        unsync_bus_tb = 'hBB;
        #((NUM_STAGES + 1) * CLOCK_PERIOD);
        if (sync_bus_tb == 'h99) begin
            $display("PASS: Only first data captured when bus_enable stuck at 1: %0h",sync_bus_tb);
        end else begin
            $display("FAIL: Expected 99, got %0h",sync_bus_tb);
        end

        $display("\n=== Back to Normal Data Transfer Tests ===");
        bus_enable_tb = 1'b0; 
        #(2*CLOCK_PERIOD);
        drive_and_check('h44);
        
        $stop;
    end


    // Tasks Definitions 
    task initialize;
    begin
        CLK_tb = 1'b0;
        unsync_bus_tb = 'b0;
        bus_enable_tb = 1'b0;
    end
    endtask

    task reset;
    begin
        RST_tb = 1'b1;
        #(CLOCK_PERIOD)
        RST_tb = 1'b0;
        #(CLOCK_PERIOD)
        RST_tb = 1'b1;
    end
    endtask

    task drive_and_check (input [BUS_WIDTH-1:0] data);
    begin        
        unsync_bus_tb = data;
        bus_enable_tb = 1'b1;
        #(CLOCK_PERIOD);
        bus_enable_tb = 1'b0;
        
        #((NUM_STAGES + 1) * CLOCK_PERIOD);
        
        // Check the results
        if (sync_bus_tb != unsync_bus_tb) begin
            $display("Data mismatch: unsync_bus = %0h and sync_bus = %0h",unsync_bus_tb,sync_bus_tb);
        end else begin
            $display("Test passed: Data correctly synchronized = %h",sync_bus_tb);
        end
        
    end
    endtask
endmodule