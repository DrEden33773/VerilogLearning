`timescale 1ns / 1ns
module dec2_4_tb;

  // Parameters

  // Ports
  reg  [1:0] a = 0;
  wire [3:0] y;

  dec2_4 dec2_4_dut (
      .a(a),
      .y(y)
  );

  always begin
    #5 a <= a + 1;
  end

  initial begin
    begin
      #100 $finish;
    end
  end


endmodule
