module FIFO_RD #(
    parameter DATA_WIDTH = 8
) (
    input wire                   R_CLK,
    input wire                   R_RST,
    input wire                   R_inc,
    input wire  [$clog2(DATA_WIDTH):0]   sync_gray_wptr,
    output wire [$clog2(DATA_WIDTH)-1:0] R_addr,
    output reg  [$clog2(DATA_WIDTH):0]   gray_rd_ptr,
    output wire                  empty
);
    localparam ADDR_WIDTH = $clog2(DATA_WIDTH);

    reg [ADDR_WIDTH:0] bn_rd_ptr;

    assign R_addr = bn_rd_ptr[ADDR_WIDTH-1:0];
    assign empty = (gray_rd_ptr == sync_gray_wptr);

    always @(posedge R_CLK or negedge R_RST) begin
        if (!R_RST) begin
            bn_rd_ptr <= 'b0;
        end else if (!empty && R_inc) begin
            bn_rd_ptr <= bn_rd_ptr + 1'b1;
        end
    end

    always @(posedge R_CLK or negedge R_RST) begin
        if (!R_RST) begin
            gray_rd_ptr <= 'b0;
        end else begin
            gray_rd_ptr <= bn_rd_ptr ^ (bn_rd_ptr >> 1'b1);
        end
    end
endmodule
