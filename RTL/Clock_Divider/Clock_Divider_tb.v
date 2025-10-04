`timescale 1ns / 1ps
module Clock_Divider_tb();
// Testbench signals
reg       i_ref_clk_tb;
reg       i_rst_n_tb;
reg       i_clk_en_tb;
reg [7:0] i_div_ratio_tb;
wire      o_div_clk_tb;

parameter CLOCK_REF_PERIOD = 10;

// ref_clk Generator
always #(CLOCK_REF_PERIOD/2) i_ref_clk_tb = ~i_ref_clk_tb;

// Design Instantiation
Clock_Divider DUT (
    .i_ref_clk(i_ref_clk_tb),
    .i_rst_n(i_rst_n_tb),
    .i_clk_en(i_clk_en_tb),
    .i_div_ratio(i_div_ratio_tb),
    .o_div_clk(o_div_clk_tb)
);

initial begin
    $dumpfile("Clock_Divider.vcd");           // Save waveform to this file     
    $dumpvars;                                // Dump all variables recursively 

    initialize;
    reset;

    // === Test Case 1: clk_en = 1, div_ratio = 0 ===
    in(1,0);
    #(10*CLOCK_REF_PERIOD);

    // === Test Case 2: clk_en = 1, div_ratio = 1 ===
    in(1,1);
    #(10*CLOCK_REF_PERIOD);

    // === Test Case 3: clk_en = 1, div_ratio = 2 ===
    in(1,2);
    #(20*CLOCK_REF_PERIOD);

    // === Test Case 4: clk_en = 1, div_ratio = 3 ===
    in(1,3);
    #(20*CLOCK_REF_PERIOD);

    // === Test Case 5: clk_en = 1, div_ratio = 4 ===
    in(1,4);
    #(20*CLOCK_REF_PERIOD);

    // === Test Case 6: clk_en = 1, div_ratio = 5 ===
    in(1,5);
    #(20*CLOCK_REF_PERIOD);

    // === Test Case 7: clk_en = 1, div_ratio = 6 ===
    in(1,6);
    #(20*CLOCK_REF_PERIOD);

    // === Test Case 8: clk_en = 1, div_ratio = 7 ===
    in(1,7);
    #(30*CLOCK_REF_PERIOD);

    // === Test Case 9: clk_en = 0, div_ratio = 2 ===
    in(0,2);
    #(20*CLOCK_REF_PERIOD);

    // === Test Case 10: clk_en = 1, div_ratio = 5 ===
    in(1,5);
    #(20*CLOCK_REF_PERIOD);

    // === Test Case 11: clk_en = 1, div_ratio = 4 ===
    in(1,4);
    #(20*CLOCK_REF_PERIOD);
    $stop;
end

// Tasks Definitions 
    task initialize;
    begin
        i_ref_clk_tb = 1'b0;
        i_clk_en_tb = 1'b0;
        i_div_ratio_tb = 8'b0;
    end
    endtask

    task reset;
    begin
        i_rst_n_tb = 1'b1;
        #(CLOCK_REF_PERIOD)
        i_rst_n_tb = 1'b0;
        #(CLOCK_REF_PERIOD)
        i_rst_n_tb = 1'b1;
    end
    endtask

    task in(input enable, input [7:0] div_ratio);
    begin
        i_clk_en_tb = enable;
        i_div_ratio_tb = div_ratio;
    end
    endtask
endmodule