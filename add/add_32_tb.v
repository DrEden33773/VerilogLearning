module add_32_tb;

  // Parameters

  // Ports
  reg [31:0] a;
  reg [31:0] b;
  reg ci = 0;
  wire [31:0] s;
  wire co;

  add_32 add_32_dut (
      .a (a),
      .b (b),
      .ci(ci),
      .s (s),
      .co(co)
  );

  initial begin
    begin
      {a, b} = {8, 6};
      #20 $finish;
    end
  end

  always begin
    #5 ci = !ci;
    $display("a={%d}, b={%d}, ci={%d}, s={%d}, co={%d}", a, b, ci, s, co);
  end

endmodule
