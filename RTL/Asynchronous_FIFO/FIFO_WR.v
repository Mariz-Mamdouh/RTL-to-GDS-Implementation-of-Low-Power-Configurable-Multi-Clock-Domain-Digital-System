module FIFO_WR #(
    parameter DATA_WIDTH = 8,
    localparam ADDR_WIDTH = $clog2(DATA_WIDTH)
) (
    input wire                   W_CLK,
    input wire                   W_RST,
    input wire                   W_inc,
    input wire  [ADDR_WIDTH:0]   sync_gray_rptr,
    output wire [ADDR_WIDTH-1:0] W_addr,
    output reg  [ADDR_WIDTH:0]   gray_wr_ptr,
    output wire                  full
);

    reg [ADDR_WIDTH:0] bn_wr_ptr;
    reg [ADDR_WIDTH:0] comb_gray_wr_ptr;
    
    assign W_addr = bn_wr_ptr[ADDR_WIDTH-1:0];
    assign comb_gray_wr_ptr = bn_wr_ptr ^ (bn_wr_ptr >> 1'b1);
    
    assign full = (comb_gray_wr_ptr[ADDR_WIDTH-2:0] == sync_gray_rptr[ADDR_WIDTH-2:0])
                && (comb_gray_wr_ptr[ADDR_WIDTH-1] != sync_gray_rptr[ADDR_WIDTH-1])
                && (comb_gray_wr_ptr[ADDR_WIDTH] != sync_gray_rptr[ADDR_WIDTH]);

    always @(posedge W_CLK or negedge W_RST) begin
        if (!W_RST) begin
            bn_wr_ptr <= 'b0;
        end else if (!full && W_inc) begin
            bn_wr_ptr <= bn_wr_ptr + 1'b1;
        end
    end

    always @(posedge W_CLK or negedge W_RST) begin
        if (!W_RST) begin
            gray_wr_ptr <= 'b0;
        end else begin
            gray_wr_ptr <= comb_gray_wr_ptr;
        end
    end
endmodule