module rca4(
input cin,
input [3:0] a,b,
output [3:0] sum,
output cout
);

wire cout0,cout1,cout2;

fa fa0 (.a(a[0]),.b(b[0]),.ci(cin),.cout(cout0),.sum(sum[0]));
fa fa1 (.a(a[1]),.b(b[1]),.ci(cout0),.cout(cout1),.sum(sum[1]));
fa fa2 (.a(a[2]),.b(b[2]),.ci(cout1),.cout(cout2),.sum(sum[2]));
fa fa3 (.a(a[3]),.b(b[3]),.ci(cout2),.cout(cout),.sum(sum[3]));

endmodule
