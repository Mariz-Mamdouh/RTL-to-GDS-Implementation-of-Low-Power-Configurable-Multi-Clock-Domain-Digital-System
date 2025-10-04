module deserializer #(parameter DATA_WIDTH = 8)(
    input wire                  CLK,
    input wire                  RST,
    input wire                  sampled_bit,
    input wire                  deser_en,
    input wire [5:0]            edge_count, 
    input wire [5:0]            Prescale, 
    output reg [DATA_WIDTH-1:0] P_DATA
);

    reg [2:0] counter;

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            P_DATA <= 'b0;
            counter <= 8'b0;
        end else if (deser_en) begin
            P_DATA[counter] <= sampled_bit;
            counter <= counter + 1'b1;
        end
    end  
endmodule