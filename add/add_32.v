module add_32 (
    a,
    b,
    s,
    ci,
    co
);

  input [31:0] a, b;
  input ci;
  output reg [31:0] s;
  output reg co;

  always @(a or b) begin
    {co, s} = a + b + ci;
  end

endmodule  //add_32
