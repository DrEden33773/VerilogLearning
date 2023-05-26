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
  output reg [WIDTH-1:0] y;

  always @(s or a or b or c or d) begin
    case (s)
      default y = a;
      0: y = a;
      1: y = b;
      2: y = c;
      3: y = d;
    endcase
  end

endmodule  //mux4
