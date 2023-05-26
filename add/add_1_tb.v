module add_1_tb;

  // Parameters

  // Ports
  reg [2:0] in = 0;  /* a, b, c := in[2], in[1], in[0] */
  wire s;
  wire co;

  add_1 add_1_dut (
      .a (in[2]),
      .b (in[1]),
      .ci(in[0]),
      .s (s),
      .co(co)
  );

  initial begin
    begin
      #200 $finish;
    end
  end

  always begin
    #10 in <= in + 1;
    $display("a={%b}, b={%b}, ci={%b}, s={%b}, co={%b}", in[2], in[1], in[0], s, co);
  end


endmodule
