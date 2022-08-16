// 自己设计的.v文件首次错误出现在always块需要使用非阻塞赋值

module test_a4_and_b4(
    input   wire            clk,
    input   wire    [7:0]   a,
    input   wire    [7:0]   b,
    output  reg     [7:0]   c
);
// 8'b1001_0010
// 8'b1001_1101
// 8'b1001_0000

//看清楚是reg变量，需要使用always块
always @(posedge clk)begin
  //c = a & b;
    c <= a & b;// 这里是非阻塞赋值
end

endmodule