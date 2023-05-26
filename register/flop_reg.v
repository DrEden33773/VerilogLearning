module flop_reg (
    clk,
    reset,
    En,
    d,
    q
);

  input clk, reset, En;
  input [3:0] d;
  output [3:0] q;
  reg [3:0] q;

  always @(posedge clk or negedge reset) begin
    if (!reset) q <= 0;
    else if (En) q <= d;
  end

endmodule  //flop_reg
