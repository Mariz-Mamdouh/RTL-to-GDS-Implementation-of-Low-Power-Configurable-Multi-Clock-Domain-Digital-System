module UART_MUX (
    input wire [2:0] mux_sel,
    input wire       start_bit,
    input wire       stop_bit,
    input wire       ser_data,
    input wire       par_bit,
    input wire       CLK,
    input wire       RST,
    output reg       TX_OUT
);

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            TX_OUT <= 1'b0;
        end else begin
            case (mux_sel)
            3'b111: TX_OUT <= start_bit;
            3'b001: TX_OUT <= stop_bit;
            3'b010: TX_OUT <= ser_data;
            3'b011: TX_OUT <= par_bit;
            default: TX_OUT <= 1'b0;
            endcase
        end
    end
endmodule