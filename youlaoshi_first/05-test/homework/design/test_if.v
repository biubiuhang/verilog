module test_if(
    input   wire                 clk,
    input   wire                 rst,
    output  reg     [3:0]        po_cnt
);

always @(posedge clk)begin
    if(rst == 1'b0)
        po_cnt <= 4'b0;
    else if (po_cnt == 4'd15)
        po_cnt <= 4'd0;
    else
        po_cnt <= po_cnt + 1'b1;
end



endmodule