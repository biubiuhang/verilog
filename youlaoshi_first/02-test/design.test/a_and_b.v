module  a_and_b(
    input   wire            clk,
    input   wire    [1:0]   pi_a,
    input   wire    [2:0]   pi_b,
    output  reg     [3:0]   po_c
);

parameter W = 15;

reg     [7:0]   counter = 8'd255; // 8'hff //8'b1111_1111
// 8'd81 8'h51 8'b0101_0001
// 255 默认是32bit的
// reg [3:0] counter = 255
// counter = 4'b0001
wire    [W:0]   interface_a;

always @(posedge clk)begin
    po_c <= pi_a & pi_b;
end

endmodule