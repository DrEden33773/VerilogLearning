module data_memory (
    addr,
    write_data,
    mem_write,
    mem_read,
    clk,
    read_data
);

  input [9:0] addr;
  input [7:0] write_data;
  input mem_write, mem_read;
  input clk;
  output [7:0] read_data;

  reg [7:0] read_data;

  reg [7:0] MEMO[0:1023];
  integer i = 0;
  initial begin
    read_data <= 0;
    for (i = 0; i < 1024; i = i + 1) begin
      MEMO[i] = i;
    end
  end

  always @(posedge clk) begin
    if (mem_write == 1'b1) MEMO[addr] <= write_data;
    if (mem_read == 1'b1) read_data <= MEMO[addr];
  end

endmodule  //data_memory
