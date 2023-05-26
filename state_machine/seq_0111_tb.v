module seq_0111_tb;

  // Parameters
  localparam reg S0 = 2'b00;

  // Ports
  reg  clk = 0;
  reg  in = 0;
  wire out;

  seq_0111 #(
      .S0(S0)
  ) seq_0111_dut (
      .clk(clk),
      .in (in),
      .out(out)
  );

  initial begin
    begin
      $finish;
    end
  end

  always #5 clk = !clk;

endmodule
