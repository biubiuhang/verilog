module a_and_b(
    input   wire        clk,
    input   wire        rst_n,
    input   wire        pi_a,
    input   wire        pi_b,
    input   wire        pi_flag,
    output  reg         po_c  
);

wire    rst;
assign  rst = ~rst_n; 

// po_c

always @(posedge clk)begin
    if(rst == 1'b1)begin
        po_c <= 1'b0;
    end
    else if(pi_flag == 1'b1)begin
        po_c <= pi_a & pi_b;
    end
end

endmodule