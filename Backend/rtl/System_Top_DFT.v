module System_Top_DFT #(
    parameter DATA_WIDTH = 8,
              ADDR = 4,
              ALU_OUT_WIDTH = 16,
              NUM_OF_CHAINS = 3
) (
    input wire  [NUM_OF_CHAINS-1:0] SI,
    input wire                      SE,
    input wire                      test_mode,
    input wire                      scan_clk,
    input wire                      scan_rst,
    output wire [NUM_OF_CHAINS-1:0] SO,
    input wire                      RST,
    input wire                      REF_CLK,
    input wire                      UART_CLK,
    input wire                      UART_RX_IN,
    output wire                     UART_TX_OUT,
    output wire                     parity_error,
    output wire                     framing_error
);
    wire SYNC_RST_REF, SYNC_RST_UART;
    wire ALU_CLK, TX_CLK, RX_CLK;
    wire [ALU_OUT_WIDTH-1:0] ALU_OUT;
    wire Out_Valid, ALU_EN, CLK_EN;
    wire [3:0] ALU_FUN;
    wire RdData_Valid, WrEn, RdEn;
    wire [ADDR-1:0] Address;
    wire [DATA_WIDTH-1:0] RdData, WrData, opA, opB;
    wire FIFO_Full, FIFO_EMPTY, Busy, RD_inc;
    wire [DATA_WIDTH-1:0] RX_P_Data, TX_P_DATA, RX_OUT;
    wire [DATA_WIDTH-1:0] Div_Ratio, Div_Ratio_RX;
    wire [DATA_WIDTH-1:0] UART_CONFIG;
    wire RX_D_VLD, TX_D_VLD, clk_div_en;
    wire [DATA_WIDTH-1:0] FIFO_RD_DATA;
    wire data_sync_en;

    wire SYNC_RST_REF_scan, SYNC_RST_UART_scan;
    wire TX_CLK_scan, RX_CLK_scan;
    wire RST_scan, REF_CLK_scan, UART_CLK_scan;

    mux2X1 M1 (
        .IN_0(RST),
        .IN_1(scan_rst),
        .SEL(test_mode),
        .OUT(RST_scan)
    );

    mux2X1 M2 (
        .IN_0(SYNC_RST_REF),
        .IN_1(scan_rst),
        .SEL(test_mode),
        .OUT(SYNC_RST_REF_scan)
    );

    mux2X1 M3 (
        .IN_0(SYNC_RST_UART),
        .IN_1(scan_rst),
        .SEL(test_mode),
        .OUT(SYNC_RST_UART_scan)
    );

    mux2X1 M4 (
        .IN_0(REF_CLK),
        .IN_1(scan_clk),
        .SEL(test_mode),
        .OUT(REF_CLK_scan)
    );

    mux2X1 M5 (
        .IN_0(UART_CLK),
        .IN_1(scan_clk),
        .SEL(test_mode),
        .OUT(UART_CLK_scan)
    );

    mux2X1 M6 (
        .IN_0(TX_CLK),
        .IN_1(scan_clk),
        .SEL(test_mode),
        .OUT(TX_CLK_scan)
    );

    mux2X1 M7 (
        .IN_0(RX_CLK),
        .IN_1(scan_clk),
        .SEL(test_mode),
        .OUT(RX_CLK_scan)
    );

    Sys_Ctrl #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR(ADDR),
        .ALU_OUT_WIDTH(ALU_OUT_WIDTH)
    ) U_SYS_CTRL (
        .CLK(REF_CLK_scan),
        .RST(SYNC_RST_REF_scan),
        .ALU_OUT(ALU_OUT),
        .Out_Valid(Out_Valid),
        .RdData(RdData),
        .RdData_Valid(RdData_Valid),
        .RX_P_Data(RX_P_Data),
        .RX_D_VLD(RX_D_VLD),
        .FIFO_Full(FIFO_Full),
        .ALU_FUN(ALU_FUN),
        .ALU_EN(ALU_EN),
        .CLK_EN(CLK_EN),
        .Address(Address),
        .WrEn(WrEn),
        .RdEn(RdEn),
        .WrData(WrData),
        .TX_P_DATA(TX_P_DATA),
        .TX_D_VLD(TX_D_VLD),
        .clk_div_en(clk_div_en)
    );

    Reg_file #(
        .WIDTH(DATA_WIDTH),
        .ADDR(ADDR)
    ) U_REG_FILE (
        .CLK(REF_CLK_scan),
        .RST(SYNC_RST_REF_scan),        
        .WrEn(WrEn),       
        .RdEn(RdEn),       
        .Address(Address),    
        .WrData(WrData),     
        .RdData(RdData),      
        .RdData_VLD(RdData_Valid),
        .REG0(opA),
        .REG1(opB),
        .REG2(UART_CONFIG),
        .REG3(Div_Ratio)
    );

    ALU #(
        .OPER_WIDTH(DATA_WIDTH)
    ) U_ALU (
        .A(opA), 
        .B(opB),
        .EN(ALU_EN),
        .ALU_FUN(ALU_FUN),
        .CLK(ALU_CLK),
        .RST(SYNC_RST_REF_scan),  
        .ALU_OUT(ALU_OUT),
        .OUT_VALID(Out_Valid) 
    );

    UART #(
        .DATA_WIDTH(DATA_WIDTH)
    ) U_UART (
        .RST(SYNC_RST_UART_scan),
        .TX_CLK(TX_CLK_scan),
        .RX_CLK(RX_CLK_scan),
        .RX_IN_S(UART_RX_IN),
        .RX_OUT_P(RX_OUT), 
        .RX_OUT_V(data_sync_en),
        .TX_IN_P(FIFO_RD_DATA), 
        .TX_IN_V(!FIFO_EMPTY), 
        .TX_OUT_S(UART_TX_OUT),
        .TX_OUT_V(Busy),  
        .Prescale(UART_CONFIG[7:2]), 
        .parity_enable(UART_CONFIG[0]),
        .parity_type(UART_CONFIG[1]),
        .parity_error(parity_error),
        .framing_error(framing_error)
    );
    
    DATA_SYNC #(
        .BUS_WIDTH(DATA_WIDTH),
        .NUM_STAGES(2)
    ) U_DATA_SYNC (
        .unsync_bus(RX_OUT),
        .bus_enable(data_sync_en),
        .CLK(REF_CLK_scan),
        .RST(SYNC_RST_REF_scan),
        .sync_bus(RX_P_Data),
        .enable_pulse(RX_D_VLD)
    );

    ASYNC_FIFO #(
        .DATA_WIDTH(DATA_WIDTH)
    ) U_ASYNC_FIFO (
        .W_CLK(REF_CLK_scan),
        .W_RST(SYNC_RST_REF_scan),
        .W_inc(TX_D_VLD),
        .W_data(TX_P_DATA),
        .R_CLK(TX_CLK_scan),
        .R_RST(SYNC_RST_UART_scan),
        .R_inc(RD_inc),
        .R_data(FIFO_RD_DATA),
        .empty(FIFO_EMPTY),
        .full(FIFO_Full)    
    );

    PULSE_GEN U_PULSE_GEN (
        .CLK(TX_CLK_scan),
        .RST(SYNC_RST_UART_scan),
        .lvl_sig(Busy),
        .pulse_sig(RD_inc)
    );

    CLK_GATE U_CLK_GATE (
        .CLK_EN(CLK_EN || test_mode),
        .CLK(REF_CLK_scan),
        .GATED_CLK(ALU_CLK)
    );

    Clock_Divider U0_CLK_DIV (
        .i_ref_clk(UART_CLK_scan),
        .i_rst_n(SYNC_RST_UART_scan),
        .i_clk_en(clk_div_en),
        .i_div_ratio(Div_Ratio),
        .o_div_clk(TX_CLK)
    );

    Clock_Divider U1_CLK_DIV (
        .i_ref_clk(UART_CLK_scan),
        .i_rst_n(SYNC_RST_UART_scan),
        .i_clk_en(clk_div_en),
        .i_div_ratio(Div_Ratio_RX),
        .o_div_clk(RX_CLK)
    );

    CLKDIV_MUX #(
        .WIDTH(DATA_WIDTH)
    ) U_CLK_DIVMUX (
        .IN(UART_CONFIG[7:2]),
        .OUT(Div_Ratio_RX)
    );

    RST_SYNC # (.NUM_STAGES(2)) RST_SYNC_1 (
        .RST(RST_scan),
        .CLK(REF_CLK_scan),
        .SYNC_RST(SYNC_RST_REF)
    );

    RST_SYNC # (.NUM_STAGES(2)) RST_SYNC_2 (
        .RST(RST_scan),
        .CLK(UART_CLK_scan),
        .SYNC_RST(SYNC_RST_UART)
    );

endmodule