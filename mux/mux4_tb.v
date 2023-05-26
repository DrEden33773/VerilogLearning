module mux4_tb;

  // Parameters
  localparam reg WIDTH = 8;

  // Ports
  reg [1:0] s = 0;
  reg [WIDTH-1:0] a = 0;
  reg [WIDTH-1:0] b = 1;
  reg [WIDTH-1:0] c = 2;
  reg [WIDTH-1:0] d = 3;
  wire [WIDTH-1:0] y;

  mux4 #(
      .WIDTH(WIDTH)
  ) mux4_dut (
      .s(s),
      .a(a),
      .b(b),
      .c(c),
      .d(d),
      .y(y)
  );

  always begin
    #5 s <= s + 1;
    $display("y = %b", y);
  end

  initial begin
    begin
      #100 $finish;
    end
  end


endmodule
