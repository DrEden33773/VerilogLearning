module ALU (
    input      [2:0] op,
    input      [7:0] A,
    input      [7:0] B,
    input            ci,
    output reg [7:0] result,
    output reg       co
);

  always @(op or A or B) begin
    case (op)
      0: {co, result} = A + B;
      1: {co, result} = A + B + ci;
      2: {co, result} = A - B - ci;
      3: result = A & B;
      4: result = A | B;
      5: result = A ^ B;
      6: result = ~A;
      default: begin
        co     = 0;
        result = 'bx;
      end
    endcase
  end

endmodule  //ALU
