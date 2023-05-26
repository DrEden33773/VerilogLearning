module tb1;

  // Parameters

  // Ports
  reg [2:0] bits = 0;
  wire y;

  integer timer;

  silly_function silly_function_dut (
      .a(bits[2]),
      .b(bits[1]),
      .c(bits[0]),
      .y(y)
  );

  initial begin
    begin
      bits = 0;
      for (timer = 0; timer < 8; timer = timer + 1) begin
        bits <= bits + 1;
        #10 $display("a=[%b], b=[%b], c=[%b], y=<%b>", bits[2], bits[1], bits[0], y);
      end
      $finish;
    end
  end

endmodule
