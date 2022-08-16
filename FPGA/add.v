module add( 
input wire a,
input wire b,
output wire c);

//assign c = a + b;
// 用always来定义 无论是组合逻辑还是时序逻辑都是 reg变量
always@(*)
	c = a + b;
	
endmodule