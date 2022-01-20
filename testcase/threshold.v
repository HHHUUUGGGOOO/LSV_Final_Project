module top(o, a, b, c, d);
output o;
input a, b, c, d;
wire w1, w2, w3;
and g1(w1, b, c);
and g2(w2, a, w1);
and g3(w3, w1, d);
or  g4(o, w2, w3);
endmodule