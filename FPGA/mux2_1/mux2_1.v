module mux2_1(
    input   wire        data_a,
    input   wire        data_b,
    input   wire        sel,
    output  wire        o_data
);
 
assign o_data = (sel & data_b) | ((~sel) & data_a);

endmodule