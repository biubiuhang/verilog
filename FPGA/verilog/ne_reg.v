module dff(
    input     wire        clk,
    input     wire        rst_n,
    input     wire        din,
    output    reg         dout
);
    always @ (posedge clk or negedge rst_n)
        if (!rst_n) begin
            dout <= 1'b0;
        end
        else begin
            dout <= din;
        end
     

endmodule