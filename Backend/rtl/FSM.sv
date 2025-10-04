module FSM (
    input wire       CLK,
    input wire       RST,
    input wire       PAR_EN,
    input wire       RX_IN,
    input wire       par_err,
    input wire       strt_glitch,
    input wire       stp_err,
    input wire [3:0] bit_cnt,
    input wire [5:0] edge_cnt,
    input wire [5:0] Prescale,
    output reg       enable,
    output reg       dat_samp_en,
    output reg       deser_en,
    output reg       data_valid,
    output reg       stp_chk_en,
    output reg       strt_chk_en,
    output reg       par_chk_en
);

    localparam IDLE = 3'b000,
               START = 3'b001,
               DATA = 3'b010,
      	       PARITY = 3'b011,
               STOP = 3'b100;
    
    reg [2:0] current_state;
    reg [2:0] next_state;

    // State Transition 	
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            current_state <= IDLE;
        end else begin
            current_state <= next_state;
        end
    end

    // Next State Logic
    always @(*) begin
        case (current_state)
            IDLE: begin
                if (!RX_IN) begin
                    next_state = START;
                end else begin
                    next_state = IDLE;
                end
            end
            START: begin
                if (!strt_glitch && (bit_cnt == 4'd1)) begin
                    next_state = DATA;
                end else if (strt_glitch) begin
                    next_state = IDLE;
                end else begin
                    next_state = START;
                end
            end
            DATA: begin
                if (PAR_EN && bit_cnt == 4'd9) begin
                    next_state = PARITY;
                end else if (!PAR_EN && bit_cnt == 4'd9) begin
                    next_state = STOP;
                end else begin
                    next_state = DATA;
                end
            end
            PARITY: begin
                if (!par_err && bit_cnt == 4'd10) begin
                    next_state = STOP;
                end else begin
                    next_state = PARITY;
                end
            end
            STOP: begin
                if (!stp_err && RX_IN && bit_cnt == 4'd0) begin
                    next_state = IDLE;
                end else if (!stp_err && !RX_IN && bit_cnt == 4'd0) begin
                    next_state = START;
                end else begin
                    next_state = STOP;
                end
            end
            default: begin
                next_state = IDLE;
            end
        endcase
    end


    // Output Logic
    always @(*) begin
        // Default values
        enable      = 1'b0;
        dat_samp_en = 1'b0;
        deser_en    = 1'b0;
        data_valid  = 1'b0;
        stp_chk_en  = 1'b0;
        strt_chk_en = 1'b0;
        par_chk_en  = 1'b0;
        case (current_state)
            IDLE: begin
                dat_samp_en = 1'b1;
                if (!RX_IN) begin
                    enable = 1'b1;
                end else begin
                    enable = 1'b0;
                end
            end
            START: begin
                dat_samp_en = 1'b1;
                enable = 1'b1;
                if (edge_cnt == ((Prescale >> 1'b1) + 2'd3)) begin
                    strt_chk_en = 1'b1;
                end else begin
                    strt_chk_en = 1'b0;
                end
            end
            DATA: begin
                dat_samp_en = 1'b1;
                enable = 1'b1;
                if (edge_cnt == ((Prescale >> 1'b1) + 2'd3)) begin
                    deser_en = 1'b1;
                end else begin
                    deser_en = 1'b0;
                end
            end
            PARITY: begin
                dat_samp_en = 1'b1;
                enable = 1'b1;
                if (edge_cnt == ((Prescale >> 1'b1) + 2'd3)) begin
                    par_chk_en = 1'b1;
                end else begin
                    par_chk_en = 1'b0;
                end
            end
            STOP: begin
                dat_samp_en = 1'b1;
                enable = 1'b1;
                if (!par_err && !stp_err && (edge_cnt == ((Prescale >> 1'b1) + 2'd3))) begin
                    data_valid = 1'b1;
                end else begin
                    data_valid = 1'b0;
                end

                if (edge_cnt == ((Prescale >> 1'b1) + 2'd3)) begin
                    stp_chk_en = 1'b1;
                end else begin
                    stp_chk_en = 1'b0;
                end
            end
            default: begin
                enable      = 1'b0;
                dat_samp_en = 1'b0;
                deser_en    = 1'b0;
                data_valid  = 1'b0;
                stp_chk_en  = 1'b0;
                strt_chk_en = 1'b0;
                par_chk_en  = 1'b0;
            end
        endcase
    end
endmodule
