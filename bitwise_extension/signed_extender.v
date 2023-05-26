module signed_extender (
    input  [15:0] num_in,
    output [31:0] num_out
);

  assign num_out = {{16{num_in[15]}}, num_in};

endmodule  // signed_extender
