module zero_extender (
    input  [15:0] num_in,
    output [31:0] num_out
);

  assign num_out = {16'b0, num_in};

endmodule  //zero_extender
