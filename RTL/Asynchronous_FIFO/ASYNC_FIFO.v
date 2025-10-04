module ASYNC_FIFO #(
    parameter DATA_WIDTH = 8,
    localparam ADDR_WIDTH = $clog2(DATA_WIDTH)
) (
    input wire                   W_CLK,
    input wire                   W_RST,
    input wire                   W_inc,
    input wire  [DATA_WIDTH-1:0] W_data,
    input wire                   R_CLK,
    input wire                   R_RST,
    input wire                   R_inc,
    output wire [DATA_WIDTH-1:0] R_data,
    output wire                  empty,
    output wire                  full
);
    wire [ADDR_WIDTH-1:0] W_addr,R_addr; 
    wire [ADDR_WIDTH:0] gray_rd_ptr,gray_wr_ptr;
    wire [ADDR_WIDTH:0] sync_gray_wptr,sync_gray_rptr;

    FIFO_MEM_CNTRL #(
        .DATA_WIDTH(DATA_WIDTH)
    ) U0_FIFO_MEM (
        .W_CLK(W_CLK),
        .W_RST(W_RST),
        .W_inc(W_inc),
        .full(full),
        .W_addr(W_addr),
        .W_data(W_data),
        .R_addr(R_addr),
        .R_data(R_data)
    );

    DF_SYNC #(
        .DATA_WIDTH(DATA_WIDTH)
    ) sync_r2w (
        .CLK(W_CLK),
        .RST(W_RST),
        .in(gray_rd_ptr),
        .out(sync_gray_rptr)
    );

    DF_SYNC #(
        .DATA_WIDTH(DATA_WIDTH)
    ) sync_w2r (
        .CLK(R_CLK),
        .RST(R_RST),
        .in(gray_wr_ptr),
        .out(sync_gray_wptr)
    );

    FIFO_WR #(
        .DATA_WIDTH(DATA_WIDTH)
    ) U1_FIFO_WR (
        .W_CLK(W_CLK),
        .W_RST(W_RST),
        .W_inc(W_inc),
        .sync_gray_rptr(sync_gray_rptr),
        .W_addr(W_addr),
        .gray_wr_ptr(gray_wr_ptr),
        .full(full)
    );

    FIFO_RD #(
        .DATA_WIDTH(DATA_WIDTH)
    ) U1_FIFO_RD (
        .R_CLK(R_CLK),
        .R_RST(R_RST),
        .R_inc(R_inc),
        .sync_gray_wptr(sync_gray_wptr),
        .R_addr(R_addr),
        .gray_rd_ptr(gray_rd_ptr),
        .empty(empty)
    );
endmodule