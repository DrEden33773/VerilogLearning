module simple_processor (
    input [5:0] op,
    output RegDst,
    output ALUSrc,
    output MemToReg,
    output RegWrite,
    output MemWrite,
    output Branch,
    output Jump,
    output ExtOp,
    output [2:0] ALUOp
);

  // tags
  assign r_type = ~op[5] & ~op[4] & ~op[3] & ~op[2] & ~op[1] & ~op[0];
  assign ori = ~op[5] & ~op[4] & op[3] & op[2] & ~op[1] & op[0];
  assign lw = op[5] & ~op[4] & ~op[3] & ~op[2] & op[1] & op[0];
  assign sw = op[5] & ~op[4] & op[3] & ~op[2] & op[1] & op[0];
  assign beq = ~op[5] & ~op[4] & ~op[3] & op[2] & ~op[1] & ~op[0];
  assign jump = ~op[5] & ~op[4] & ~op[3] & ~op[2] & op[1] & ~op[0];

  // control float signals
  assign RegDst = r_type;
  assign ALUSrc = ori | lw | sw;
  assign MemToReg = lw;
  assign RegWrite = r_type | ori | lw;
  assign MemWrite = sw;
  assign Branch = beq;
  assign Jump = jump;
  assign ExtOp = lw | sw;

  // alu operation signals
  assign ALUOp[2] = beq;
  assign ALUOp[1] = ori;
  assign ALUOp[0] = r_type;

endmodule  //simple_processor
