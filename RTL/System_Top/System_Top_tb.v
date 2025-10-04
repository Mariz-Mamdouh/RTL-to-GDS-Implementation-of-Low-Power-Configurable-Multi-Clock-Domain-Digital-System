`timescale 1ns / 1ps
module System_Top_tb ();
    parameter DATA_WIDTH = 8;
    parameter ADDR = 4;
    parameter ALU_OUT_WIDTH = 16;
    parameter REF_CLOCK_PERIOD = 20;
    parameter UART_CLOCK_PERIOD = 271.267;

    // Testbench signals
    reg  RST_tb;
    reg  REF_CLK_tb;
    reg  UART_CLK_tb;
    reg  UART_RX_IN_tb;
    wire UART_TX_OUT_tb;
    wire parity_error_tb;
    wire framing_error_tb;

    // CLK Generator
    always #(REF_CLOCK_PERIOD/2) REF_CLK_tb = ~REF_CLK_tb;
    always #(UART_CLOCK_PERIOD/2) UART_CLK_tb = ~UART_CLK_tb;

    // Design Instantiation
    System_Top #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR(ADDR),
        .ALU_OUT_WIDTH(ALU_OUT_WIDTH)
    ) DUT (
        .RST(RST_tb),
        .REF_CLK(REF_CLK_tb),
        .UART_CLK(UART_CLK_tb),
        .UART_RX_IN(UART_RX_IN_tb),
        .UART_TX_OUT(UART_TX_OUT_tb),
        .parity_error(parity_error_tb),
        .framing_error(framing_error_tb)
    );

    initial begin
        $dumpfile("SYS_TOP.vcd");              // Save waveform to this file     
        $dumpvars;                             // Dump all variables recursively 
        
        initialize;
        reset;

        // --- Test 1: Register File Write ---
        $display("\n[Test 1] Write 0x5A to address 0x04");
        send_byte(8'hAA);
        send_byte(8'h04);
        send_byte(8'h5A);

        // --- Test 2: Register File Read ---
        $display("\n[Test 2] Read back from address 0x04, expect 0x5A");
        send_byte(8'hBB);
        send_byte(8'h04);
        check_uart_tx(8'h5A);

        // --- Test 3: ALU with operands (0x09 - 0x07 = 0x02, function=SUB) ---
        $display("\n[Test 3] ALU operation: 0x09 - 0x07 = 0x02, expect LSB=0x02 & MSB=0x00");
        send_byte(8'hCC);
        send_byte(8'h09);
        send_byte(8'h07);
        send_byte(8'h01);
        check_uart_tx(8'h02);

        // --- Test 4: ALU no operands (fun=MULT) ---
        $display("\n[Test 4] ALU no-operand operation: 0x09 * 0x07 = 0x3F, expect LSB=0x3F & MSB=0x00");
        send_byte(8'hDD);
        send_byte(8'h02);
        check_uart_tx(8'h3F);

        // --- Test 5: ALU with operand (A9 + AF = 0x158, function=ADD) ---
        $display("\n[Test 5] ALU operation: 0xA9 + 0xAF = 0x158, expect LSB=0x58 & MSB=0x01");
        send_byte(8'hCC);
        send_byte(8'hA9);
        send_byte(8'hAF);
        send_byte(8'h00);
        check_uart_tx(8'h58);
        check_uart_tx(8'h01);

        // --- Test 6: ALU no operands (fun=MULT) ---
        $display("\n[Test 6] ALU no-operand operation: 0xA9 * 0xAF = 0x7387, expect LSB=0x87 & MSB=0x73");
        send_byte(8'hDD);
        send_byte(8'h02);
        check_uart_tx(8'h87);
        check_uart_tx(8'h73);

        #(UART_CLOCK_PERIOD*32*5);  
        $stop;
    end


    // Tasks Definitions 
    task initialize;
    begin
        REF_CLK_tb = 1'b0;
        UART_CLK_tb = 1'b0;
        UART_RX_IN_tb = 1'b1;
    end
    endtask

    task reset;
    begin
        RST_tb = 1'b1;
        #(REF_CLOCK_PERIOD)
        RST_tb = 1'b0;
        #(REF_CLOCK_PERIOD)
        RST_tb = 1'b1;
    end
    endtask

    task send_byte(input [DATA_WIDTH-1:0] data);
        integer i;
    begin
        @(posedge DUT.U_UART.RX_CLK);   
        UART_RX_IN_tb = 1'b0;           // start bit = 0
        #(UART_CLOCK_PERIOD*32);        

        // --- DATA BITS (LSB first) ---
        for (i = 0; i < DATA_WIDTH; i = i + 1) begin
            UART_RX_IN_tb = data[i];
            #(UART_CLOCK_PERIOD*32);   
        end

        // --- PARITY BIT ---
        if (DUT.U_REG_FILE.REG2[0] == 1'b1) begin
            if (DUT.U_REG_FILE.REG2[1] == 1'b0) begin
                UART_RX_IN_tb = ^data;    // even parity
            end else begin
                UART_RX_IN_tb = ~^data;   // odd parity
            end
            #(UART_CLOCK_PERIOD*32);
        end

        UART_RX_IN_tb = 1'b1;           // stop bit = 1
        #(UART_CLOCK_PERIOD*32);
    end
    endtask
    
    task check_uart_tx (input [DATA_WIDTH-1:0] expected);
        integer i;
        reg [DATA_WIDTH-1:0] rx_byte;
    begin
        @(posedge DUT.U_UART.TX_OUT_V);
        #(UART_CLOCK_PERIOD*32*1.5); 

        rx_byte = 'b0;
        for (i = 0; i < DATA_WIDTH; i = i + 1) begin
            rx_byte[i] = UART_TX_OUT_tb;
            #(UART_CLOCK_PERIOD*32);
        end

        if (rx_byte != expected) begin
            $display("Mismatch: expected %0h, got %0h at time %0t",expected, rx_byte, $time);
        end else begin
            $display("PASS: got %0h as expected at time %0t",rx_byte, $time);
        end
    end
    endtask

endmodule