module from2to3 (
    Y,
    A,
    B
);

  // params
  output [2:0] Y;
  input A, B;

  // logics
  assign Y[0] = (~(A & B)) & A;
  assign Y[2] = (~(A & B)) & B;
  assign Y[1] = ~(Y[0] | Y[2]);

endmodule  //from2to3
