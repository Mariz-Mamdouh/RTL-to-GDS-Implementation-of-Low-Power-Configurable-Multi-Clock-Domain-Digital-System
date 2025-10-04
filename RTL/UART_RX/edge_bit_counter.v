module edge_bit_counter (
    input wire       CLK,
    input wire       RST,
    input wire       enable,
    input wire       PAR_EN,
    input wire [5:0] Prescale,
    output reg [5:0] edge_cnt,
    output reg [3:0] bit_cnt
);
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            edge_cnt <= 6'b0;
            bit_cnt <= 4'b0;
        end else if (enable && (edge_cnt < (Prescale - 6'b1))) begin
            edge_cnt <= edge_cnt + 1'b1;
        end else if (enable && (edge_cnt == (Prescale - 6'b1))) begin
            edge_cnt <= 6'b0;
            if (PAR_EN && (bit_cnt == 4'd10)) begin
                bit_cnt <= 4'b0;
            end else if (!PAR_EN && (bit_cnt == 4'd9)) begin 
                bit_cnt <= 4'b0;
            end else begin
                bit_cnt <= bit_cnt + 1'b1;
            end
        end else begin
            bit_cnt <= 4'b0;
        end
    end
endmodule