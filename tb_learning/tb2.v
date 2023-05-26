module tb2;

  // Parameters

  // Ports
  reg a = 0;
  reg b = 0;
  reg c = 0;
  reg [2:0] bits = 0;
  wire y;

  silly_function silly_function_dut (
      .a(bits[2]),
      .b(bits[1]),
      .c(bits[0]),
      .y(y)
  );

  initial begin
    begin
      // 000
      bits = 0;
      #10 if (y !== 1) $display("000 failed");

      // 001
      bits <= bits + 1;
      #10 if (y !== 0) $display("001 failed");

      // 010
      bits <= bits + 1;
      #10 if (y !== 0) $display("010 failed");

      // 011
      bits <= bits + 1;
      #10 if (y !== 0) $display("011 failed");

      // 100
      bits <= bits + 1;
      #10 if (y !== 1) $display("100 failed");

      // 101
      bits <= bits + 1;
      #10 if (y !== 1) $display("101 failed");

      // 110
      bits <= bits + 1;
      #10 if (y !== 0) $display("110 failed");

      // 111
      bits <= bits + 1;
      #10 if (y !== 0) $display("111 failed");

      // finish
      $finish;
    end
  end


endmodule
