module top(o, a, b, c);
output o;
input a, b, c;
wire d;
and g2(o, c, d);
xor g1(d, a, b);
endmodule