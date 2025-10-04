module UART_TX #(parameter DATA_WIDTH = 8)(
    input wire [DATA_WIDTH-1:0] P_DATA,
    input wire                  DATA_VALID,
    input wire                  PAR_EN,
    input wire                  PAR_TYP,
    input wire                  CLK,
    input wire                  RST,
    output wire                 TX_OUT,
    output wire                 Busy
);
    wire ser_done, ser_en, ser_data, par_bit;
    wire start_bit = 1'b0;
    wire stop_bit = 1'b1;
    wire [2:0] mux_sel;

    UART_FSM fsm (
        .CLK(CLK),
        .RST(RST),
        .Data_Valid(DATA_VALID),
        .ser_done(ser_done),
        .PAR_EN(PAR_EN),
        .ser_en(ser_en),
        .mux_sel(mux_sel),
        .busy(Busy)
    );

    serializer #(.DATA_WIDTH(DATA_WIDTH)) ser (
        .CLK(CLK),
        .RST(RST),
        .P_DATA(P_DATA),
        .ser_en(ser_en),
        .ser_done(ser_done),
        .Data_Valid(DATA_VALID),
        .Busy(Busy),
        .ser_data(ser_data)
    );

    parity_calc #(.DATA_WIDTH(DATA_WIDTH)) par_calc (
        .CLK(CLK),
        .RST(RST),
        .P_DATA(P_DATA),
        .PAR_EN(PAR_EN),
        .Data_Valid(DATA_VALID),
        .PAR_TYP(PAR_TYP),
        .par_bit(par_bit),
        .Busy(Busy)
    );

    UART_MUX mux (
        .CLK(CLK),
        .RST(RST),
        .mux_sel(mux_sel),
        .start_bit(start_bit),
        .stop_bit(stop_bit),
        .ser_data(ser_data),
        .par_bit(par_bit),
        .TX_OUT(TX_OUT)
    );
endmodule