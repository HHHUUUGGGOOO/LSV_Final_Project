module top(o, a, b, c, d, e, f);
output o;
input a, b, c, d, e, f;
wire w1, w2, w3, w4;
and g1(w1, a, b);
or  g2(w2, c, d);
and g3(w3, w1, w2);
and g4(w4, e, f);
or  g5(o, w3, w4);
endmodule