`timescale 1ns/1ns

module tb_tri_assignments();

wire oc1,oc2,oc3;
reg ia,ib,clk;

initial begin
    clk = 0;
    ia = 0;
    ib = 0;
end

always #5 clk = ~clk;
always #15 ia = {$random};
always #20 ib = {$random};

tri_assignments tri_assignments_inst(
    .clk(clk),
    .a(ia),
    .b(ib),
    .c1(oc1),
    .c2(oc2),
    .c3(oc3)
);


endmodule