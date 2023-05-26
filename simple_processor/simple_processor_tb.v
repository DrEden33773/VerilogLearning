`timescale 1ns / 1ns
module simple_processor_tb;

  // Ports
  reg [5:0] op;
  wire RegDst;
  wire ALUSrc;
  wire MemToReg;
  wire RegWrite;
  wire MemWrite;
  wire Branch;
  wire Jump;
  wire ExtOp;
  wire [2:0] ALUOp;

  simple_processor simple_processor_dut (
      .op(op),
      .RegDst(RegDst),
      .ALUSrc(ALUSrc),
      .MemToReg(MemToReg),
      .RegWrite(RegWrite),
      .MemWrite(MemWrite),
      .Branch(Branch),
      .Jump(Jump),
      .ExtOp(ExtOp),
      .ALUOp(ALUOp)
  );

  initial begin
    begin
      #0 op = 'b000000;
      #10 op = 'b001101;
      #10 op = 'b100011;
      #10 op = 'b101011;
      #10 op = 'b000100;
      #10 op = 'b000010;
      #10 $finish;
    end
  end


endmodule
