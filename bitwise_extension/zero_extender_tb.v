`timescale 1ns / 1ns
`include "zero_extender.v"
module zero_extender_tb;

  // Parameters

  // Ports
  reg  [15:0] num_in;
  wire [31:0] num_out;

  zero_extender zero_extender_dut (
      .num_in (num_in),
      .num_out(num_out)
  );

  initial begin
    begin
      num_in = 16'hFFFF;  // -1
      $monitor("Input number: %b, Output number: %b", num_in, num_out);
      #10;

      num_in = 16'h0001;  // 1
      $monitor("Input number: %b, Output number: %b", num_in, num_out);
      #10;

      num_in = 16'h8000;  // -32768
      $monitor("Input number: %b, Output number: %b", num_in, num_out);
      #10;

      num_in = 16'h7FFF;  // 32767
      $monitor("Input number: %b, Output number: %b", num_in, num_out);
      #10;

      $finish;
    end
  end

endmodule
