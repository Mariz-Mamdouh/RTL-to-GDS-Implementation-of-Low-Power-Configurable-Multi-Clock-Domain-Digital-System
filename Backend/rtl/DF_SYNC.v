module DF_SYNC #(
    parameter DATA_WIDTH = 8
) (
    input wire                CLK,
    input wire                RST,
    input wire [$clog2(DATA_WIDTH):0] in,
    output reg [$clog2(DATA_WIDTH):0] out
);
    localparam ADDR_WIDTH = $clog2(DATA_WIDTH);

    reg [ADDR_WIDTH:0] Q;
    
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            Q <= 'b0;
            out <= 'b0;
        end else begin
            Q <= in;
            out <= Q;
        end
    end
endmodule
