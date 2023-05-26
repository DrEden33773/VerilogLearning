module basic_ALU_tb;

  // Parameters

  // Ports
  reg  [2:0] op = 0;
  reg  [7:0] A = 4;
  reg  [7:0] B = 4;
  wire [7:0] result;

  basic_ALU basic_ALU_dut (
      .op(op),
      .A(A),
      .B(B),
      .result(result)
  );

  initial begin
    begin
      op = 0;
      #50 $finish;
    end
  end

  always begin
    #5 op <= op + 1;
    $display("op={%b}, A=<%d>, B=<%d>, result=[%d]", op, A, B, result);
  end


endmodule
