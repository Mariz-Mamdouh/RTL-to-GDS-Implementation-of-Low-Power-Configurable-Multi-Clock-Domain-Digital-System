`timescale 1ns / 1ps
module UART_TX_tb;
parameter Clock_PERIOD = 5;
// Testbench signals
reg [7:0] P_DATA_tb;
reg       DATA_VALID_tb;
reg       PAR_EN_tb;
reg       PAR_TYP_tb;
reg       CLK_tb;
reg       RST_tb;
wire      TX_OUT_tb;
wire      Busy_tb;

integer i;

// Clock Generator (T = 5 ns)
always #(Clock_PERIOD/2) CLK_tb = ~CLK_tb;

// Design Instantiation
UART_TX DUT (
    .P_DATA(P_DATA_tb),
    .DATA_VALID(DATA_VALID_tb),
    .PAR_EN(PAR_EN_tb),
    .PAR_TYP(PAR_TYP_tb),
    .CLK(CLK_tb),
    .RST(RST_tb),
    .TX_OUT(TX_OUT_tb),
    .Busy(Busy_tb)
);

initial begin
    $dumpfile("UART_TX.vcd");           // Save waveform to this file     
    $dumpvars;                          // Dump all variables recursively 

    initialize;
    reset;

    // Case 1: Even parity, data = 0x2E
    $display("Case 1: Sending 0b00101110 with even parity");
    transmit_withparity(8'b00101110,0);
    // Case 2: Odd parity, data = 0x2E
    $display("\nCase 2: Sending 0b00101110 with odd parity");
    transmit_withparity(8'b00101110,1);
    // Case 3: No parity, data = 0x2E
    $display("\nCase 3: Sending 0b00101110 without parity");
    transmit_withoutparity(8'b00101110);
    // Case 4: Even parity, data = 0xAE
    $display("\nCase 4: Sending 0b10101110 with even parity");
    transmit_withparity(8'b10101110,0);
    // Case 5: Odd parity, data = 0xAE
    $display("\nCase 5: Sending 0b10101110 with odd parity");
    transmit_withparity(8'b10101110,1);
    // Case 6: No parity, data = 0xAE
    $display("\nCase 6: Sending 0b10101110 without parity");
    transmit_withoutparity(8'b10101110);

    #(Clock_PERIOD)
    $stop;
end

// Tasks Definitions 
task initialize;
begin
    P_DATA_tb = 8'd0;
    DATA_VALID_tb = 1'b0;
    PAR_EN_tb = 1'b0;
    PAR_TYP_tb = 1'b0;
    CLK_tb = 1'b0;
end
endtask

task reset;
begin
    RST_tb = 1'b1;
    #(Clock_PERIOD)
    RST_tb = 1'b0;
    #(Clock_PERIOD)
    RST_tb = 1'b1;
end
endtask

task transmit_withparity(input [7:0] data, input parity_type);
    reg [10:0] expected_frame;
    reg even_parity, odd_parity;
    begin
      @(negedge CLK_tb);
      P_DATA_tb     = data;
      PAR_EN_tb     = 1;
      PAR_TYP_tb    = parity_type;
      DATA_VALID_tb = 1;
      @(negedge CLK_tb);
      DATA_VALID_tb = 0;

      even_parity = ^data;
      odd_parity = ~(^data);
      if (parity_type) begin
        expected_frame[0] = 1'b0;           // Start bit
        expected_frame[8:1] = data;         // Data bits
        expected_frame[9] = odd_parity;     // Parity bit
        expected_frame[10] = 1'b1;          // Stop bit
      end else begin
        expected_frame[0] = 1'b0;           // Start bit
        expected_frame[8:1] = data;         // Data bits
        expected_frame[9] = even_parity;    // Parity bit
        expected_frame[10] = 1'b1;          // Stop bit
      end
      
      for (i=0; i<11; i=i+1) begin
        @(negedge CLK_tb);
        if (TX_OUT_tb != expected_frame[i])
          $display("Mismatch at bit %0d: Expected %0b, Got %0b at time %0t",i,expected_frame[i],TX_OUT_tb,$time);
        else
          $display("Match at bit %0d: %0b",i,TX_OUT_tb);
      end
        $display("UART frame is 0b%0b",expected_frame);
    end
  endtask

task transmit_withoutparity(input [7:0] data);
    reg [9:0] expected_frame;
    begin
      @(negedge CLK_tb);
      P_DATA_tb     = data;
      PAR_EN_tb     = 0;
      DATA_VALID_tb = 1;
      @(negedge CLK_tb);
      DATA_VALID_tb = 0;

      expected_frame[0] = 1'b0;           // Start bit
      expected_frame[8:1] = data;         // Data bits
      expected_frame[9] = 1'b1;           // Stop bit

      for (i=0; i<10; i=i+1) begin
        @(negedge CLK_tb);
        if (TX_OUT_tb != expected_frame[i])
          $display("Mismatch at bit %0d: Expected %0b, Got %0b at time %0t",i,expected_frame[i],TX_OUT_tb,$time);
        else
          $display("Match at bit %0d: %0b",i,TX_OUT_tb);
      end
        $display("UART frame is 0b%0b",expected_frame);
    end
  endtask
endmodule