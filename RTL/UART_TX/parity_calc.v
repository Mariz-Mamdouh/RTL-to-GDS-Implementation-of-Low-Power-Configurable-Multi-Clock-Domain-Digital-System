module parity_calc #(parameter DATA_WIDTH = 8)(
    input wire [DATA_WIDTH-1:0] P_DATA,
    input wire                  Data_Valid,
    input wire                  PAR_TYP,
    input wire                  PAR_EN,
    input wire                  Busy,
    input wire                  CLK,
    input wire                  RST,
    output reg                  par_bit
);

    reg [DATA_WIDTH-1:0] Data;

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            Data <= 'b0;
        end else if (Data_Valid && !Busy) begin
            Data <= P_DATA;
        end
    end

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            par_bit <= 1'b0;
        end else begin
            if (PAR_EN) begin
                case (PAR_TYP)
                    1'b0: par_bit <= ^Data;
                    1'b1: par_bit <= ~(^Data);
                endcase
            end
        end
    end
endmodule