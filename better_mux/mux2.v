module mux2 #(
    parameter reg WIDTH = 8
) (
    s,
    a,
    b,
    y
);

  input s;
  input [WIDTH-1:0] a, b;
  output [WIDTH-1:0] y;

  assign y = (s == 0) ? a : b;

endmodule  //mux2

