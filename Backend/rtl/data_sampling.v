module data_sampling (
    input wire       CLK,
    input wire       RST,
    input wire       RX_IN,
    input wire       dat_samp_en,
    input wire [5:0] edge_cnt,
    input wire [5:0] Prescale,
    output reg       sampled_bit
);

    reg sample1, sample2, sample3;

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            sample1 <= 1'b0;
            sample2 <= 1'b0;
            sample3 <= 1'b0;
        end else if (dat_samp_en) begin
            case (edge_cnt)
                (Prescale / 2'd2) - 1'd1:   sample1 <= RX_IN;
                (Prescale / 2'd2):          sample2 <= RX_IN;
                (Prescale / 2'd2) + 1'd1:   sample3 <= RX_IN;
                (Prescale >> 1'b1) + 2'd2:  sampled_bit <= (sample1 & sample2) | (sample1 & sample3) | (sample2 & sample3);
                default: begin
                    sample1 <= 1'b0;
                    sample2 <= 1'b0;
                    sample3 <= 1'b0;
                end
            endcase
        end 
    end
endmodule