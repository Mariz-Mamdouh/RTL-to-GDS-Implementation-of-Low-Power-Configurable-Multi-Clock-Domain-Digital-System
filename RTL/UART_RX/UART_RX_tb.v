`timescale 1ns / 1ps
module UART_RX_tb ();
    // Testbench signals
    reg        CLK_tx_tb;
    reg        CLK_rx;
    reg        RST_tb;
    reg        RX_IN_tb;
    reg        PAR_TYP_tb;
    reg        PAR_EN_tb;
    reg [5:0]  Prescale_tb;
    wire       data_valid_tb;
    wire       Parity_Error_tb;
    wire       Stop_Error_tb;
    wire [7:0] P_DATA_tb;

    parameter CLOCK_TX_PERIOD = 8680;
    integer i;

    // Clock_tx Generator
    always #(CLOCK_TX_PERIOD/2) CLK_tx_tb = ~CLK_tx_tb;

    // Clock_rx Generator
    always #(CLOCK_TX_PERIOD/(2 * Prescale_tb)) CLK_rx = ~CLK_rx;

    // Design Instantiation
    UART_RX DUT (
        .CLK(CLK_rx),
        .RST(RST_tb),
        .RX_IN(RX_IN_tb),
        .PAR_TYP(PAR_TYP_tb),
        .PAR_EN(PAR_EN_tb),
        .Prescale(Prescale_tb),
        .data_valid(data_valid_tb),
        .Parity_Error(Parity_Error_tb),
        .Stop_Error(Stop_Error_tb),
        .P_DATA(P_DATA_tb)
    );

    initial begin
        $dumpfile("UART_RX.vcd");           // Save waveform to this file     
        $dumpvars;                          // Dump all variables recursively 

        initialize;
        reset;

        // ---- Test 1: No parity, prescale=8 ----
        $display("\n--- Test 1: No parity, Data = 0b10100101, Prescale = 8 ---");
        receive_withoutparity(10'b1101001010,6'd8,8'b10100101); 

        // ---- Test 2: Even parity, prescale=8 ----
        $display("\n--- Test 2: Even parity, Data = 0b10100101, Prescale = 8 ---");
        receive_withparity({1'b1,^(8'b10100101),8'b10100101,1'b0},1'b0,6'd8,8'b10100101);

        // ---- Test 3: Odd parity, prescale=8 ----
        $display("\n--- Test 3: Odd parity, Data = 0b10100101, Prescale = 8 ---");
        receive_withparity({1'b1,~(^(8'b10100101)),8'b10100101,1'b0},1'b1,6'd8,8'b10100101);

        // ---- Test 4: No parity, prescale=16 ----
        $display("\n--- Test 4: No parity, Data = 0b10110101, Prescale = 16 ---");
        receive_withoutparity(10'b1101101010,6'd16,8'b10110101); 

        // ---- Test 5: Even parity, prescale=16 ----
        $display("\n--- Test 5: Even parity, Data = 0b10110101, Prescale = 16 ---");
        receive_withparity({1'b1,^(8'b10110101),8'b10110101,1'b0},1'b0,6'd16,8'b10110101);

        // ---- Test 6: Odd parity, prescale=16 ----
        $display("\n--- Test 6: Odd parity, Data = 0b10110101, Prescale = 16 ---");
        receive_withparity({1'b1,~(^(8'b10110101)),8'b10110101,1'b0},1'b1,6'd16,8'b10110101);

        // ---- Test 7: No parity, prescale=32 ----
        $display("\n--- Test 7: No parity, Data = 0b10110001, Prescale = 32 ---");
        receive_withoutparity(10'b1101100010,6'd32,8'b10110001); 

        // ---- Test 8: Even parity, prescale=32 ----
        $display("\n--- Test 8: Even parity, Data = 0b10110001, Prescale = 32 ---");
        receive_withparity({1'b1,^(8'b10110001),8'b10110001,1'b0},1'b0,6'd32,8'b10110001);

        // ---- Test 9: Odd parity, prescale=32 ----
        $display("\n--- Test 9: Odd parity, Data = 0b10110001, Prescale = 32 ---");
        receive_withparity({1'b1,~(^(8'b10110001)),8'b10110001,1'b0},1'b1,6'd32,8'b10110001);

        // ---- Test 10: Return to idle then receive new frame ----
        $display("\n--- Test 10: Return to idle then receive new frame ---");
        RX_IN_tb = 1'b1;
        #(CLOCK_TX_PERIOD);
        receive_withoutparity(10'b1101100110,6'd8,8'b10110011); 

        // ---- Test 11: Start glitch ----
        $display("\n--- Test 11: Start glitch ---");
        RX_IN_tb = 1'b1;
        #(CLOCK_TX_PERIOD);
        RX_IN_tb = 1'b0;
        repeat(2) #(CLOCK_TX_PERIOD/(Prescale_tb));
        RX_IN_tb = 1'b1;
        @(posedge DUT.strt_chk.strt_glitch);
        $display("PASS: Start glitch detected at %0t",$time);
        #(CLOCK_TX_PERIOD);
        if (!DUT.strt_chk.strt_glitch)
            $display("PASS: Start glitch cleared");
        else
            $display("FAIL: Start glitch is sticky");


        // ---- Test 12: No parity, prescale=8 ----
        $display("\n--- Test 12: No parity, Data = 0b10111001, Prescale = 8 ---");
        receive_withoutparity(10'b1101110010,6'd8,8'b10111001); 

        // ---- Test 13: Even parity, prescale=8 ----
        $display("\n--- Test 13: Even parity, Data = 0b10111001, Prescale = 8 ---");
        receive_withparity({1'b1,^(8'b10111001),8'b10111001,1'b0},1'b0,6'd8,8'b10111001);

        // ---- Test 14: Odd parity, prescale=8 ----
        $display("\n--- Test 14: Odd parity, Data = 0b10111001, Prescale = 8 ---");
        receive_withparity({1'b1,~(^(8'b10111001)),8'b10111001,1'b0},1'b1,6'd8,8'b10111001);

        $stop;
    end


    // Tasks Definitions 
    task initialize;
    begin
        RX_IN_tb = 1'b1;
        Prescale_tb = 6'd8;
        PAR_EN_tb = 1'b0;
        PAR_TYP_tb = 1'b0;
        CLK_tx_tb = 1'b0;
        CLK_rx = 1'b0;
    end
    endtask

    task reset;
    begin
        RST_tb = 1'b1;
        #(CLOCK_TX_PERIOD)
        RST_tb = 1'b0;
        #(CLOCK_TX_PERIOD)
        RST_tb = 1'b1;
    end
    endtask

    task receive_withparity(input [10:0] data, input parity_type, input [5:0] prescale, input [7:0] exp_data);
    begin
        Prescale_tb = prescale;
        PAR_EN_tb = 1'b1;
        PAR_TYP_tb = parity_type;

        for (i=0 ; i<11 ; i=i+1) begin
            RX_IN_tb = data[i];
            #(CLOCK_TX_PERIOD);
        end
        if ((exp_data == P_DATA_tb) && !Parity_Error_tb && !Stop_Error_tb)
            $display("PASS: Received 0b%0b correctly with parity",P_DATA_tb);
        else if (Parity_Error_tb)
            $display("FAIL: Parity error detected");
        else if (Stop_Error_tb)
            $display("FAIL: Stop bit error detected");
        else
            $display("FAIL: Data mismatch (got 0b%0b)",P_DATA_tb);
    end
    endtask

    task receive_withoutparity(input [9:0] data, input [5:0] prescale, input [7:0] exp_data);
    begin
        Prescale_tb = prescale;
        PAR_EN_tb = 1'b0;

        for (i=0 ; i<10 ; i=i+1) begin
            RX_IN_tb = data[i];
            #(CLOCK_TX_PERIOD);
        end
        if ((exp_data == P_DATA_tb) && !Parity_Error_tb && !Stop_Error_tb)
            $display("PASS: Received 0b%0b correctly",P_DATA_tb);
        else if (Stop_Error_tb)
            $display("FAIL: Stop bit error detected");
        else
            $display("FAIL: Data mismatch (got 0b%0b)",P_DATA_tb);
    end
    endtask
endmodule