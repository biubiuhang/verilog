module module_ex(
    input   wire             clk_a, // 模块声明时，输入变量必须是wire型
    input   wire   [7:0]     data_i,// 没有声明位宽的信号，是默认1bit位宽的信号
    output  wire             data_oa,
    output  wire             data_ob
);// 括号内是接口列表，声明模块输入输出变量的

// 比对符号： 两个变量的对比符号 ==   
// 组合逻辑实现当data_i等于1时，立即给data_oa赋值为1否则为0;(用 == 实现)

/*
assign data_oa = (data_i == 1'b1); // wire 变量必须用 = 阻塞赋值语句，赋值关键字是assign
// 4'b0001
assign data_ob = 1'b0;
*/
// 如果data_i 大于等于10，data_oa 赋值为1 ，否则data_i小于10时，data_oa赋值为0
assign data_oa = (data_i >= 8'd10) ? 1'b1 : 1'b0;



endmodule// 与module成对出现声明一个模块的开始和结束