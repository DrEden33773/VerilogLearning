module reg_group_4x8_tb;

  // Parameters

  // Ports
  reg clk = 0;
  reg wEn = 1;
  reg rEn = 0;
  reg [1:0] addr;
  reg [7:0] wd;
  wire [7:0] rd;

  reg [7:0] expected_rd;
  reg [7:0] i;

  reg_group_4x8 reg_group_4x8_dut (
      .clk (clk),
      .wEn (wEn),
      .rEn (rEn),
      .addr(addr),
      .wd  (wd),
      .rd  (rd)
  );


  initial begin

    // write
    for (i = 0; i < 4; i = i + 1) begin
      addr = i;
      wd   = addr;
      #10;
      $display("Write Data<{%d}> to Addr<[%d] == [%h]>", wd, addr, addr);
    end

    wEn = 0;
    rEn = 1;

    // read
    for (i = 0; i < 4; i = i + 1) begin
      addr        = i;
      expected_rd = addr;
      #10;
      if (rd == expected_rd) begin
        $display("Read Data<{%d}> from Addr<[%d] == [%h]>", rd, addr, addr);
      end else begin
        $display("Failed to Read Data<{%d}> (from Addr<[%d] == [%h]>)", rd, addr, addr);
      end
    end

    $finish;

  end

  always #5 clk = !clk;

endmodule
