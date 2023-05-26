module mux2_tb;

  // Parameters
  localparam reg WIDTH = 8;

  // Ports
  reg s = 0;
  reg [WIDTH-1:0] a = 0;
  reg [WIDTH-1:0] b = 1;
  wire [WIDTH-1:0] y;

  mux2 #(
      .WIDTH(WIDTH)
  ) mux2_dut (
      .s(s),
      .a(a),
      .b(b),
      .y(y)
  );

  always begin
    #5 s = !s;
    $display("y = %b", y);
  end

  initial begin
    begin
      #50 $finish;
    end
  end


endmodule
