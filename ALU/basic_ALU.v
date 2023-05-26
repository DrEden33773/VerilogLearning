module basic_ALU (
    input [2:0] op,
    input [7:0] A,
    input [7:0] B,
    output reg [7:0] result
);

  always @(op or A or B) begin
    case (op)
      3'b000:  result = A + B;
      3'b001:  result = A - B;
      3'b010:  result = A & B;
      3'b011:  result = A | B;
      3'b100:  result = ~A;
      default: result = 'bx;
    endcase
  end

endmodule  //ALU
