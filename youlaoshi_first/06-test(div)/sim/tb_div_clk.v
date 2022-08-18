`timescale 1ns/1ns

module tb_div_clk_4();
reg clk,rst;
wire clk_4;

initial begin
    clk = 0;
    rst = 1;
    #100 ;
    rst = 0;
end

always #10 clk = ~clk;

div_clk div_clk_inst(
    .clk(clk),
    .rst(rst),
    .clk_4(clk_4)
);








endmodule