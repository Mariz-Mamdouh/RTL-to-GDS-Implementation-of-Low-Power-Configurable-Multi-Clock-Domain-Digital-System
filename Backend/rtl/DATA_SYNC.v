module DATA_SYNC #(
    parameter NUM_STAGES = 2,
    parameter BUS_WIDTH = 8
) (
    input wire [BUS_WIDTH-1:0] unsync_bus,
    input wire                 bus_enable,
    input wire                 CLK,
    input wire                 RST,
    output reg [BUS_WIDTH-1:0] sync_bus,
    output reg                 enable_pulse
);
    reg [NUM_STAGES-1:0] sync_ff;
    reg pulse_ff;
    wire pulse_gen_out;
    wire [BUS_WIDTH-1:0] mux_out;
    integer i;

    assign pulse_gen_out = (!pulse_ff) && sync_ff[NUM_STAGES-1];
    assign mux_out = pulse_gen_out ? unsync_bus : sync_bus;

    // Enable signal synchronization
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            sync_ff <= 'b0;
            pulse_ff <= 1'b0;
        end else begin
            sync_ff[0] <= bus_enable;
            for (i=1 ; i<NUM_STAGES ; i=i+1) begin
                sync_ff[i] <= sync_ff[i-1];
            end
            pulse_ff <= sync_ff[NUM_STAGES-1];
        end
    end

    // Data synchronization
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            enable_pulse <= 1'b0;
            sync_bus <= 'b0;
        end else begin
            enable_pulse <= pulse_gen_out;
            sync_bus <= mux_out;
        end
    end

endmodule