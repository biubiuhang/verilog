`timescale 1ns/1ns

module tb_key();

reg key1,key2,key3;
wire led;

always #10 key1 = {$random};
always #15 key2 = {$random};
always #20 key3 = {$random};

key  key_init(
    .key1(key1),
    .key2(key2),
    .key3(key3)
);

endmodule

