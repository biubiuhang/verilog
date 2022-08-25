module fsm(
    input   wire    clk,
    input   wire    rst_n,
    input   wire    pi_money,
    output  reg     po_cola,
    output  reg     po_money // 输出钱
);

reg     [4:0]   state;

parameter IDLE = 5'b0_0001;
parameter M05  = 5'b0_0010;
parameter M1   = 5'b0_0100;
parameter M105 = 5'b0_1000;
parameter M2   = 5'b1_0000;

always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        state <= IDLE;
    end
    else begin
        case(state)
            IDLE : if(pi_money == 1'b1)begin
                        state <= M1;
                    end
                    else begin
                        state <= M05;
                    end
            M1 : if(pi_money == 1'b1)begin
                        state <= M2;
                    end
                    else begin
                        state <= M105;
                    end
            M105 : if(pi_money == 1'b1)begin
                        state <= IDLE;
                    end
                    else begin
                        state <= M2;
                    end
            M2 :    begin
                    state <= IDLE;
                end
            M05 :   if(pi_money == 1'b1)begin
                    state <= M105;
                    end
                    else begin
                        state  <= M1;
                    end
            default : state <= IDLE;
        endcase
    end
end

always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
            po_cola <= 1'b0;
        end
    else if(state == M2)begin
            po_cola <= 1'b1;
        end
    else if(state == M105 && pi_money == 1'b1)begin
            po_cola <= 1'b1;
        end  
    else begin
        po_cola <= 1'b0;
    end
end

always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        po_money <= 1'b1;
    end
    else if(state == M2 && pi_money == 1'b1)begin
        po_money <= 1'b1;
    end
    else begin
        po_money <= 1'b0;
    end
end

endmodule