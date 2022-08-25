module fsm(
    input   wire    clk,
    input   wire    rst_n,
    input   wire    pi_money,
    output  reg     po_cola
);
// State 2'b00 2'b01 2'b10 binary
// 3'b001 3'b010 3'b100 one hot
parameter IDLE = 3'b001;
parameter ONE  = 3'b010;
parameter TWO  = 3'b100;

reg     [2:0]   state;

// state 状态的迁移
always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        state <= IDLE;   
    end
    else begin
        case (state)
            IDLE : if (pi_money == 1'b1) begin
                state <= ONE;
            end  
            ONE : if (pi_money == 1'b1)begin
                state <= TWO; 
            end 
            TWO : if (pi_money == 1'b1)begin
                state <= IDLE;
            end 
            default : state <= IDLE;
        endcase
        end
    end





endmodule