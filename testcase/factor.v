module top(o, a, b, c, d, e);
output o;
input a, b, c, d, e;
wire w1, w2;
and g1(w1, a, b, c);
and g2(w2, c, d, e);
or  g3(o, w1, w2);
endmodule