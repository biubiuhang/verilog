module key(
    input   wire        key1,
    input   wire        key2,
    input   wire        key3,
    output  wire        led  
);

assign led = key1 & key2 & key3;

endmodule