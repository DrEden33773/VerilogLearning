`timescale 1ns / 1ns
module tb3;

  // Parameters
  reg clk = 1, reset = 1;
  reg y_expected;
  reg [31:0] vector_num = 0, errors = 0;
  reg [3:0] test_vectors[10000:0];

  // Ports
  reg a, b, c;
  wire y;

  // instance
  silly_function dut (
      .a(a),
      .b(b),
      .c(c),
      .y(y)
  );

  // clock
  always begin
    #5 clk = ~clk;
  end

  // load from file & reset
  initial begin
    begin
      $readmemb("example.tv", test_vectors);
      #0 reset = 1;
      #5 reset = 0;
      #1000 $finish;
    end
  end

  // apply test vectors on rising edge
  always @(posedge clk) begin
    #1{a, b, c, y_expected} = test_vectors[vector_num];
  end

  // check results on falling edge
  always @(negedge clk) begin
    if (~reset) begin
      if (y !== y_expected) begin
        $display("Error: inputs = %b", {a, b, c});
        $display("Outputs = %b (with %b expected)", y, y_expected);
        errors = errors + 1;
      end
      vector_num = vector_num + 1;
      if (test_vectors[vector_num] === 4'bx) begin
        $display("%d tests completed (with %d errors)", vector_num, errors);
      end
    end
  end

endmodule
