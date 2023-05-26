module dec3_8_en (
    input en,
    input [2:0] in,
    output [7:0] y
);

  assign y = en ? (1 << in) : 0;

endmodule  //dec3_8_en
