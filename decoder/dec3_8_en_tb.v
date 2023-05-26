`timescale 1ns / 1ns
module dec3_8_en_tb;

  // Parameters

  // Ports
  reg en = 0;
  reg [2:0] in;
  wire [7:0] y;

  dec3_8_en dec3_8_en_dut (
      .en(en),
      .in(in),
      .y (y)
  );

  always begin
    #5 in <= in + 1;
  end

  initial begin
    begin
      #0 en = 0;
      #20 en = 1;
      #200 $finish;
    end
  end


endmodule
