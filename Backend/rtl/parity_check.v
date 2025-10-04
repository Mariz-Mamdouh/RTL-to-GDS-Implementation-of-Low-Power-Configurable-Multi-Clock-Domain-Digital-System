module parity_check #(parameter DATA_WIDTH = 8)(
    input wire                  CLK,
    input wire                  RST,
    input wire                  PAR_TYP,
    input wire                  par_chk_en,
    input wire                  sampled_bit,
    input wire [DATA_WIDTH-1:0] P_DATA,
    output reg                  par_err
);
    wire parity_bit;

    assign parity_bit = (PAR_TYP) ? ~(^P_DATA) : (^P_DATA);

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            par_err <= 1'b0;
        end else if (par_chk_en) begin
            par_err <= (parity_bit != sampled_bit);
        end
    end
endmodule