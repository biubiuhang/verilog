module mo_case(
    input   wire            clk,
    input   wire    [3:0]   a,
    output  reg     [3:0]   b
);

always @ (posedge clk)begin
    case (a)
        1 : b <= 1;
        2 : b <= 2;
        3 : b <= 3;
        4 : b <= 4;
        5 : b <= 5;
        default : b <= 0;
    endcase
end


endmodule