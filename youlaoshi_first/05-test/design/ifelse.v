module ifelse(
    input   wire            clk,
    input   wire    [3:0]   a,
    output  reg     [3:0]   b
);

always @(posedge clk)
    if(a == 1)
        b <= 1;
    else if(a == 2)
        b <= 2;
    else if(a == 3)
        b <= 3;
    else if(a == 4)
        b <= 4;
    else if(a == 5)
        b <= 5;
    else    
        b <= 0;

endmodule