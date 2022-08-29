module fa(
input a,b,ci,
output sum,cout
);

wire s1,c2,c1;

ha ha1 (.a(a),.b(b),.sum(s1),.cout(c1));
ha ha2 (.a(s1),.b(ci),.sum(sum),.cout(c2));
or gate1 (cout,c2,c1);

endmodule
