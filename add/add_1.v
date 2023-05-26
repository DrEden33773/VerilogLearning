module add_1 (
    a,
    b,
    s,
    ci,
    co
);

  input a, b, ci;
  output s, co;

  wire q = a & b;
  wire g = a ^ b;

  assign s  = ci ^ g;
  assign co = ci & g | q;

endmodule  //add_1
