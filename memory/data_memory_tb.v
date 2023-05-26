module data_memory_tb;

  // Parameters

  // Ports
  reg [9:0] addr;
  reg [7:0] write_data;
  reg mem_write = 1;
  reg mem_read = 0;
  reg clk = 0;
  wire [7:0] read_data;

  reg [7:0] expected_read_data;

  data_memory data_memory_dut (
      .addr(addr),
      .write_data(write_data),
      .mem_write(mem_write),
      .mem_read(mem_read),
      .clk(clk),
      .read_data(read_data)
  );

  initial begin

    for (addr = 100; addr < 100 + 20; addr = addr + 1) begin
      write_data = addr - 100;
      #10;  // wait for a Cycle
      $display("Write Data<{%d}> to Addr<[%d] == [%h]>", write_data, addr, addr);
    end

    mem_write = 0;
    mem_read  = 1;

    for (addr = 100; addr < 100 + 20; addr = addr + 1) begin
      expected_read_data = addr - 100;
      #10;  // wait for a Cycle
      if (read_data == expected_read_data) begin
        $display("Read Data<{%d}> from Addr<[%d] == [%h]>", read_data, addr, addr);
      end else begin
        $display("Failed to Read Data<{%d}> (from Addr<[%d] == [%h]>)", read_data, addr, addr);
      end
    end

    $finish;

  end

  always #5 clk = !clk;

endmodule
