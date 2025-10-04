module Clock_Divider #( 
    parameter RATIO_WD = 8 
)
(
    input wire       i_ref_clk,
    input wire       i_rst_n,
    input wire       i_clk_en,
    input wire [RATIO_WD-1:0] i_div_ratio,
    output wire      o_div_clk
);
    reg [RATIO_WD-1:0] counter;
    wire div_odd;
    wire [RATIO_WD-1:0] high_pulse;
    wire [RATIO_WD-1:0] low_pulse;
    reg div_clk;
    reg flag;
    wire clk_en;
    wire high_condition;
    wire low_condition;

    assign clk_en = i_clk_en && (i_div_ratio != 'd1) && (i_div_ratio != 'd0);
    assign div_odd = i_div_ratio[0];
    assign high_pulse = i_div_ratio >> 1;
    assign low_pulse = i_div_ratio - high_pulse;
    assign high_condition = (counter == high_pulse - 1) && flag;
    assign low_condition = (counter == low_pulse - 1) && !flag;
    assign o_div_clk = clk_en ? div_clk : i_ref_clk;

    always @(posedge i_ref_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            div_clk <= 1'b0;
            counter <= 'd0;
            flag <= 1'b0;
        end else if (clk_en && !div_odd && (counter == (high_pulse - 1))) begin
            div_clk <= ~div_clk;
            counter <= 'd0;
        end else if (clk_en && div_odd && ((high_condition) || (low_condition))) begin
            div_clk <= ~div_clk;
            counter <= 'd0;
            flag <= ~flag;                  // flag = 1 when div_vlk = 1 
                                            // flag = 0 when div_vlk = 0 
        end else if(clk_en) begin
            counter <= counter + 1'd1;
        end else begin
            counter <= 'd0;
        end
    end

endmodule