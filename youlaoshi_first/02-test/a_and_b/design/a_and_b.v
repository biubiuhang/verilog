// 
module a_and_b(
    input   wire        clk,
    input   wire        pi_a,
    input   wire        pi_b,
    output  reg         po_c1,
    output  wire        po_c2
);
// 当使用always时触发列表中是由posedge或negedge触发的，使用非阻塞赋值 <=
// 使用assign语句必须用阻塞赋值

always @(posedge clk)begin
    po_c1 <= pi_a & pi_b;
end

assign po_c2 = pi_a & pi_b;


endmodule