module UART_RX #(parameter DATA_WIDTH = 8)(
    input wire                   CLK,
    input wire                   RST,
    input wire                   RX_IN,
    input wire                   PAR_TYP,
    input wire                   PAR_EN,
    input wire  [5:0]            Prescale,
    output wire                  data_valid,
    output wire                  Parity_Error,
    output wire                  Stop_Error,
    output wire [DATA_WIDTH-1:0] P_DATA
);
    wire enable, par_chk_en, strt_chk_en, strt_glitch, stp_chk_en, deser_en, dat_samp_en, sampled_bit;
    wire [5:0] edge_cnt;
    wire [3:0] bit_cnt;

    data_sampling data_samp (
        .CLK(CLK),
        .RST(RST),
        .RX_IN(RX_IN),
        .dat_samp_en(dat_samp_en),
        .edge_cnt(edge_cnt),
        .sampled_bit(sampled_bit),
        .Prescale(Prescale)
    );

    deserializer #(.DATA_WIDTH(DATA_WIDTH)) deserial (
        .CLK(CLK),
        .RST(RST),
        .deser_en(deser_en),
        .sampled_bit(sampled_bit),
        .edge_count(edge_cnt),
        .Prescale(Prescale),
        .P_DATA(P_DATA)
    );

    edge_bit_counter counter (
        .CLK(CLK),
        .RST(RST),
        .enable(enable),
        .PAR_EN(PAR_EN),
        .Prescale(Prescale),
        .edge_cnt(edge_cnt),
        .bit_cnt(bit_cnt)
    );

    parity_check #(.DATA_WIDTH(DATA_WIDTH)) par_chk (
        .CLK(CLK),
        .RST(RST),
        .PAR_TYP(PAR_TYP),
        .par_chk_en(par_chk_en),
        .sampled_bit(sampled_bit),
        .P_DATA(P_DATA),
        .par_err(Parity_Error)
    );

    stop_check stp_chk (
        .CLK(CLK),
        .RST(RST),
        .sampled_bit(sampled_bit),
        .stp_chk_en(stp_chk_en),
        .stp_err(Stop_Error)
    );

    strt_check strt_chk (
        .CLK(CLK),
        .RST(RST),
        .sampled_bit(sampled_bit),
        .strt_chk_en(strt_chk_en),
        .strt_glitch(strt_glitch)
    );

    FSM fsm (
        .CLK(CLK),
        .RST(RST),
        .PAR_EN(PAR_EN),
        .RX_IN(RX_IN),
        .par_err(Parity_Error),
        .strt_glitch(strt_glitch),
        .stp_err(Stop_Error),
        .edge_cnt(edge_cnt),
        .bit_cnt(bit_cnt),
        .Prescale(Prescale),
        .enable(enable),
        .dat_samp_en(dat_samp_en),
        .deser_en(deser_en),
        .data_valid(data_valid),
        .strt_chk_en(strt_chk_en),
        .stp_chk_en(stp_chk_en),
        .par_chk_en(par_chk_en)
    );
endmodule