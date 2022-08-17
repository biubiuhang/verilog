module bit_shift(
    input   wire                clk,
    input   wire                rst_n,
    output  reg     [7:0]       po_a
);

// 实现左移操作
// 同步复位
always @(posedge clk)
    if(rst_n == 1'b1)
        po_a <= 8'b0000_0001;
    else if(po_a == 8'b1000_0000)
        po_a <= 8'b0000_0001;
    else 
        po_a <= po_a << 1;

endmodule