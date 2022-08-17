`timescale 1ns/1ns

module tb_ifelse();

reg clk;
reg     [3:0]   a;
wire    [3:0]   b;

initial begin
    a = 0;
    clk = 0;
end 

always #20 a = {$random}%6;

always #20 clk = ~clk;

ifelse ifelse_init(
    .clk(clk),
    .a(a),
    .b(b)

);

endmodule