module pulses_reg(
    input   wire            clk,
    input   wire            rst_n,
    output  reg    [3:0]    cnt    
);

wire    [3:0]   cnt_n;

assign cnt_n = cnt + 1'b1;

always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)
        cnt <= 4'd0;
    else
        cnt <= cnt_n;
end


endmodule