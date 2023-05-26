module basic_reg_tb;

  // Parameters

  // Ports
  reg clk = 0;
  reg reset = 1;
  reg [3:0] d = 0;
  wire [3:0] q;

  basic_reg basic_reg_dut (
      .clk(clk),
      .reset(reset),
      .d(d),
      .q(q)
  );

  initial begin
    begin
      #200 $finish;
    end
  end

  always begin
    #5 clk = !clk;
    $display("d={%b}, q={%b}", d, q);
  end

  always #5 d <= d + 1;
  always #10 reset = !reset;

endmodule
