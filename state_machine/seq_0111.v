module seq_0111 (
    input  clk,
    in,
    output out
);

  parameter reg S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;

  reg [1:0] state = S0;
  assign out = (state == S3);
  always @(posedge clk) begin
    if (in == 0) state <= S0;
    else state <= state + 1;
  end

endmodule  //seq_0111
