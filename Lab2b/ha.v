module ha(
input a,b,
output sum,cout
);

xor gate1 (sum,a,b);
and gate2 (cout,a,b);

endmodule
