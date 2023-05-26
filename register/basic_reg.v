module basic_reg (
    clk,
    reset,
    d,
    q
);

  input clk, reset;
  input [3:0] d;
  output [3:0] q;
  reg [3:0] q;

  always @(posedge clk or negedge reset) begin
    if (!reset) q <= 0;
    else q <= d;
  end

endmodule  //basic_reg
