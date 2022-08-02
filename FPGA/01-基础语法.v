// 异步D触发器
module ex_module(
    input     wire          sclk,
    input     wire          reset_n,// 标志低复位
    input     wire   [7:0]  d,
    output    
);
// 声明模块变量，输入变量一定是wire变量
// 模块声明的时候，输出可以是wire变量也可以是reg变量

always@(*)// 敏感列表可以包括电平触发或者沿触发
// always@(posedge sclk or negedge rst_n)
    if(rst_n == 1'b0) // 条件表，这里是组合逻辑
        q <= 8'h00;   // 沿触发的逻辑里边一定都用 <= 非阻塞赋值
    else
        q <= d;




endmodule