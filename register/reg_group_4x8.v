module reg_group_4x8 (
    clk,
    wEn,
    rEn,
    addr,
    wd,
    rd
);

  input clk, wEn, rEn;
  input [1:0] addr;
  input [7:0] wd;
  output [7:0] rd;
  reg [7:0] rd;

  reg [7:0] reg_group[0:3];

  always @(posedge clk) begin
    if (wEn == 1'b1) reg_group[addr] <= wd;
    if (rEn == 1'b1) rd <= reg_group[addr];
  end

endmodule  //reg_group_4x8
