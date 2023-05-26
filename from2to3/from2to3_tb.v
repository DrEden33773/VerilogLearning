`timescale 1ns / 1ns
module from2to3_tb;

  // Parameters

  // Ports
  wire [2:0] Y;
  reg  [1:0] W;

  from2to3 from2to3_dut (
      .Y(Y),
      .A(W[1]),
      .B(W[0])
  );

  initial begin
    begin
      W = 0;
      #1000 $finish;
    end
  end

  always begin
    #10 W <= W + 1;
  end

  initial begin
    $monitor("A=%b, B=%b, Y[2:0]=[%b%b%b]", W[1], W[0], Y[2], Y[1], Y[0]);
  end


endmodule
