module silly_function (
    input  a,
    b,
    c,
    output y
);

  assign y = ~a & ~b & ~c | a & ~b & ~c | a & ~b & c;

endmodule  //silly_function
