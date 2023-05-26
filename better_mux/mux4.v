`include "mux2.v"
module mux4 #(
    parameter reg WIDTH = 8
) (
    s,
    a,
    b,
    c,
    d,
    y
);

  input [1:0] s;
  input [WIDTH-1:0] a, b, c, d;
  output [WIDTH-1:0] y;

  wire [WIDTH-1:0] low, high;

  mux2 #(
      .WIDTH(WIDTH)
  ) low_mux (
      .s(s[0]),
      .a(a),
      .b(b),
      .y(low)
  );

  mux2 #(
      .WIDTH(WIDTH)
  ) high_mux (
      .s(s[0]),
      .a(c),
      .b(d),
      .y(high)
  );

  mux2 #(
      .WIDTH(WIDTH)
  ) final_mux (
      .s(s[1]),
      .a(low),
      .b(high),
      .y(y)
  );


endmodule  //mux4
