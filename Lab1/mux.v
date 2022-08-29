`define dly_and 1
`define dly_or 2
module mux (out,a,b,sel);
input a,b,sel;
output out;

and and1 (out1,a,~sel);
and and2 (out2,b,sel);
or or1 (out,out1,out2);


endmodule
