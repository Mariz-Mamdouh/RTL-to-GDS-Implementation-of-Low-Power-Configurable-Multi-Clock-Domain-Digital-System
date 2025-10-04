module System_Top #(
    parameter DATA_WIDTH = 8,
              ADDR = 4,
              ALU_OUT_WIDTH = 16
) (
    input wire  RST,
    input wire  REF_CLK,
    input wire  UART_CLK,
    input wire  UART_RX_IN,
    output wire UART_TX_OUT,
    output wire parity_error,
    output wire framing_error
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

    Sys_Ctrl #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR(ADDR),
        .ALU_OUT_WIDTH(ALU_OUT_WIDTH)
    ) U_SYS_CTRL (
        .CLK(REF_CLK),
        .RST(SYNC_RST_REF),
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
        .CLK(REF_CLK),
        .RST(SYNC_RST_REF),        
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
        .RST(SYNC_RST_REF),  
        .ALU_OUT(ALU_OUT),
        .OUT_VALID(Out_Valid) 
    );

    UART #(
        .DATA_WIDTH(DATA_WIDTH)
    ) U_UART (
        .RST(SYNC_RST_UART),
        .TX_CLK(TX_CLK),
        .RX_CLK(RX_CLK),
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
        .CLK(REF_CLK),
        .RST(SYNC_RST_REF),
        .sync_bus(RX_P_Data),
        .enable_pulse(RX_D_VLD)
    );

    ASYNC_FIFO #(
        .DATA_WIDTH(DATA_WIDTH)
    ) U_ASYNC_FIFO (
        .W_CLK(REF_CLK),
        .W_RST(SYNC_RST_REF),
        .W_inc(TX_D_VLD),
        .W_data(TX_P_DATA),
        .R_CLK(TX_CLK),
        .R_RST(SYNC_RST_UART),
        .R_inc(RD_inc),
        .R_data(FIFO_RD_DATA),
        .empty(FIFO_EMPTY),
        .full(FIFO_Full)    
    );

    PULSE_GEN U_PULSE_GEN (
        .CLK(TX_CLK),
        .RST(SYNC_RST_UART),
        .lvl_sig(Busy),
        .pulse_sig(RD_inc)
    );

    CLK_GATE U_CLK_GATE (
        .CLK_EN(CLK_EN),
        .CLK(REF_CLK),
        .GATED_CLK(ALU_CLK)
    );

    Clock_Divider U0_CLK_DIV (
        .i_ref_clk(UART_CLK),
        .i_rst_n(SYNC_RST_UART),
        .i_clk_en(clk_div_en),
        .i_div_ratio(Div_Ratio),
        .o_div_clk(TX_CLK)
    );

    Clock_Divider U1_CLK_DIV (
        .i_ref_clk(UART_CLK),
        .i_rst_n(SYNC_RST_UART),
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
        .RST(RST),
        .CLK(REF_CLK),
        .SYNC_RST(SYNC_RST_REF)
    );

    RST_SYNC # (.NUM_STAGES(2)) RST_SYNC_2 (
        .RST(RST),
        .CLK(UART_CLK),
        .SYNC_RST(SYNC_RST_UART)
    );

endmodule