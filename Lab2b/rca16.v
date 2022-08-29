module rca16(sum, c_out, a, b, c_in);
input [15:0] a,b;
input c_in;
output c_out;
output [15:0] sum;

wire c_in4,c_in8,c_in12;

rca4 rca4_0 (.a(a[3:0]),.b(b[3:0]),.cin(c_in),.sum(sum[3:0]),.cout(c_in4));
rca4 rca4_1 (.a(a[7:4]),.b(b[7:4]),.cin(c_in4),.sum(sum[7:4]),.cout(c_in8));
rca4 rca4_2 (.a(a[11:8]),.b(b[11:8]),.cin(c_in8),.sum(sum[11:8]),.cout(c_in12));
rca4 rca4_3 (.a(a[15:12]),.b(b[15:12]),.cin(c_in12),.sum(sum[15:12]),.cout(c_out));

endmodule
