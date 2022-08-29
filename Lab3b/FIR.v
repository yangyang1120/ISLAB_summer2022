module FIR(Dout, Din, clk, reset);

parameter b0=7;
parameter b1=17;
parameter b2=32;
parameter b3=46;
parameter b4=52;
parameter b5=46;
parameter b6=32;
parameter b7=17;
parameter b8=7;

output	reg [17:0]	Dout;
input 	[7:0] 	Din;
input 		clk, reset;

reg [7:0] temp [0:7];

always@(posedge clk)
begin
	if(reset)
	begin
		temp[0]<=8'd0;
                temp[1]<=8'd0;
                temp[2]<=8'd0;
                temp[3]<=8'd0;
                temp[4]<=8'd0;
                temp[5]<=8'd0;
                temp[6]<=8'd0;
                temp[7]<=8'd0;
	end
	else
	begin
		temp[0]<=Din;
		temp[1]<=temp[0];
                temp[2]<=temp[1];
                temp[3]<=temp[2];
                temp[4]<=temp[3];
                temp[5]<=temp[4];
                temp[6]<=temp[5];
                temp[7]<=temp[6];
	end
end

always@(*)
begin
	if((temp[0]||temp[1]||temp[2]||temp[3]||temp[4]||temp[5]||temp[6]||temp[7])==0)
		Dout=Din*'d7;
	else
		Dout=(Din*b0)+(temp[0]*b1)+(temp[1]*b2)+(temp[2]*b3)+(temp[3]*b4)+(temp[4]*b5)+(temp[5]*b6)+(temp[6]*b7)+(temp[7]*b8);
end
endmodule
