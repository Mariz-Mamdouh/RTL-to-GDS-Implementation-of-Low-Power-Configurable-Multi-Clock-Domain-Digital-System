module UART_FSM (
    input wire       CLK,
    input wire       RST,
    input wire       Data_Valid,
    input wire       ser_done,
    input wire       PAR_EN,
    output reg       ser_en,
    output reg [2:0] mux_sel,
    output reg       busy
);
    localparam [2:0] IDLE = 3'b000,
                     START = 3'b001,
                     SEND_DATA = 3'b010,
                     PARITY = 3'b011,
                     STOP = 3'b100;

    reg [2:0] current_state, next_state;
    reg busy_c;

    // State Transition 	
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            current_state <= IDLE;
        end else begin
            current_state <= next_state;
        end
    end

    // Next State Logic & Output Logic
    always @(*) begin
        case (current_state)
            IDLE: begin
                if (Data_Valid == 1'b1) begin
                    next_state = START;
                end else begin
                    next_state = IDLE;
                end
            end
            START: begin
                next_state = SEND_DATA;
            end
            SEND_DATA: begin
                if (ser_done && PAR_EN) begin
                    next_state = PARITY;
                end else if (ser_done && !PAR_EN) begin
                    next_state = STOP;
                end else begin
                    next_state = SEND_DATA;
                end
            end
            PARITY: begin
                next_state = STOP;
            end
            STOP: begin
                next_state = IDLE;
            end
            default: begin
			    next_state = IDLE; 
            end	
        endcase
    end

    always @ (*) begin
        ser_en = 1'b0;
        mux_sel = 3'b000;	
        busy_c = 1'b0;
        case(current_state)
            IDLE: begin
                ser_en = 1'b0;
                mux_sel = 3'b000;	
                busy_c = 1'b0;
            end
            START: begin
                ser_en = 1'b0;  
                busy_c = 1'b1;
                mux_sel = 3'b111;	
            end
            SEND_DATA: begin 
                ser_en = 1'b1;    
                busy_c = 1'b1;
                mux_sel = 3'b010;	
                if(ser_done)
                    ser_en = 1'b0;  
                else
                    ser_en = 1'b1;              			 
            end
            PARITY: begin
                busy_c = 1'b1;
                mux_sel = 3'b011;	
            end
            STOP: begin
                busy_c = 1'b1;
                mux_sel = 3'b001;			
            end		
            default: begin
                busy_c = 1'b0;
                ser_en = 1'b0;
                mux_sel = 3'b000;		
            end	
        endcase         	              
    end 

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            busy <= 1'b0;
        end else begin
            busy <= busy_c;
        end
    end
endmodule