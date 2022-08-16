`timescale 1ns/1ns

module test_a4_and_b4_tb();

/*自己所出现的错误
//reg clk,a,b;
与题目要求不符
*/
reg [7:0]   a,b;
reg         clk;

wire [7:0]  c;

// all reg var initial = 0
initial begin
    clk = 0;
    a = 0;
    b = 0;
end
// 
always #10 clk = ~clk;
always #15 a = {$random}%256;
always #20 b = {$random}%256;
//定义端口
test_a4_and_b4 test_a4_and_b4_inst(
    .clk(clk),
    .a(a),
    .b(b),
    .c(c)
);



endmodule