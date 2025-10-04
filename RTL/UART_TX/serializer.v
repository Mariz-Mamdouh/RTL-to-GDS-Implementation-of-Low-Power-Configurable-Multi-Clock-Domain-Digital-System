module serializer #(parameter DATA_WIDTH = 8)(
    input wire                  CLK,
    input wire                  RST,
    input wire [DATA_WIDTH-1:0] P_DATA,
    input wire                  ser_en,
    input wire                  Data_Valid,
    input wire                  Busy,
    output wire                 ser_done,
    output wire                 ser_data
);
    reg [DATA_WIDTH-1:0] shift_reg;
    reg [2:0] counter;

    assign ser_data = shift_reg[0];
    assign ser_done = (counter == 3'd7) ? 1'b1 : 1'b0;
    
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            counter <= 3'b0;
        end else if (ser_en) begin
            counter <= counter + 1'b1;
        end else begin
            counter <= 3'b0;
        end
    end

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            shift_reg <= 'b0;
        end else if (Data_Valid && !Busy) begin
            shift_reg <= P_DATA;
        end else if (ser_en) begin
            shift_reg <= shift_reg >> 1;
        end 
    end
endmodule