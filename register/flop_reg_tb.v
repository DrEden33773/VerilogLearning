module flop_reg_tb;

  // Parameters

  // Ports
  reg clk = 0;
  reg reset = 1;
  reg En = 1;
  reg [3:0] d = 0;
  wire [3:0] q;

  flop_reg flop_reg_dut (
      .clk(clk),
      .reset(reset),
      .En(En),
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
    $display("d={%b}, q={%b}, En={%b}", d, q, En);
  end

  always #5 d <= d + 1;
  always #10 reset = !reset;


endmodule
