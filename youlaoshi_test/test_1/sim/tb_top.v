`timescale 1ns/1ps //声明延时单位和延时精度
// 第一个1ns表示时间单位，第二个1ns表示时间的精度
// # 在不可综合模块中使用，表示延时时间单位


module tb_top();
reg     sclk,rst_n;
wire    [7:0]   cnt;
// initial 块只用于仿真，并且只能对reg变量赋值


initial begin
    sclk = 0 ;
    rst_n = 0;
    #100
    rst_n = 1;
end


always # 10 sclk = ~sclk; // 时钟激励

// 例化顶层
top top_inst(
    .sclk_i(sclk),
    .rst_n_i(rst_n),
    .cnt_o(cnt)
);


endmodule