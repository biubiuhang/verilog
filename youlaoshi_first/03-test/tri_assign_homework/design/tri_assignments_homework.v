module tri_assignments_homework(
    input   wire        clk,
    input   wire        ia,
    input   wire        ib,
    output  reg         oc
);

always @(posedge clk)begin
    oc <= ia | ib;
end

endmodule