module ALU_tb;

  // Parameters

  // Ports
  reg  [2:0] op = 0;
  reg  [7:0] A = 4;
  reg  [7:0] B = 4;
  reg        ci = 0;
  wire [7:0] result;
  wire       co;

  ALU ALU_dut (
      .op(op),
      .A(A),
      .B(B),
      .ci(ci),
      .result(result),
      .co(co)
  );

  initial begin
    begin
      op = 0;
      #50 $finish;
    end
  end

  always begin
    #5 op <= op + 1;
    $display("op={%b}, A=<%d>, B=<%d>, ci=<%d>, result=[%d], co=[%d]", op, A, B, ci, result, co);
  end

endmodule
