`timescale 1ns/1ns

module tb_tri_assignments_homework();
reg     clk,ia,ib;
wire    oc;

initial begin
    clk = 0;
end

initial begin
    ia = 0;
    #10
    ia = 1;
    #40 
    ia = 0;
end

initial begin
    ib = 1;
    #30
    ib = 0;
end

always #5 clk = ~clk;


tri_assignments_homework tri_assignments_homework_inst(
    .clk(clk),
    .ia(ia),
    .ib(ib),
    .oc(oc)
);

endmodule