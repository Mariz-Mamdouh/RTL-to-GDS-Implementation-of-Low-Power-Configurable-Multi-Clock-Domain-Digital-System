module RST_SYNC #(parameter NUM_STAGES = 2)(
    input wire  RST,
    input wire  CLK,
    output wire SYNC_RST
);
    reg [NUM_STAGES-1:0] sync_ff;
    integer i;

    assign SYNC_RST = sync_ff[NUM_STAGES-1];

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            sync_ff <= 'b0;
        end else begin
            sync_ff[0] <= 1'b1;
            for (i=1 ; i<NUM_STAGES ; i=i+1) begin
                sync_ff[i] <= sync_ff[i-1];
            end
        end
    end
endmodule