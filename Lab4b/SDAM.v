`timescale 1ns/10ps
module SDAM( reset_n, scl, sda, avalid, aout, dvalid, dout);
input       reset_n;//negative reset
input       scl; //clk
input       sda; //data and address and input enable

output reg avalid, dvalid; //avalid=address enable dvalid=dout enable
output reg [7:0]	aout;
output reg [15:0]	dout;
reg [15:0] wdata;
reg [7:0] waddr;
reg start,wonroff;
integer cnt;
reg [1:0] cs,ns;

parameter idle=2'b00;
parameter sdam=2'b01;
parameter w=2'b10;
parameter r=2'b11;

// ===== Coding your RTL below here ================================= 

//cs
always@(posedge scl)
begin
	if(reset_n==0) cs<=idle;
	else cs<=ns;
end
//ns
always@(*)
begin
	case(cs)
	idle:ns=sdam;
	sdam:ns=(start==1&&sda==1)?w:
		(start==1&&sda==0)?r:idle;
	w:ns=idle;
	r:ns=idle;
	default:ns=idle;
	endcase
end

//read or write
always@(posedge scl)
begin
	if(reset_n==0)
	begin
		cnt=1;	
		wonroff=0;
		start=0;
		waddr<=8'd0;
		wdata<=16'd0;
		dout<=16'd0;
		dvalid<=0;
		aout<=8'd0;
		avalid<=0;
	end
	else
	begin
		case(cs)
		idle:
		begin
			case(wonroff)
			0:
			begin
				waddr<=waddr;
				wdata<=wdata;
			end
			1:
			begin	
				dout<=dout;
				aout<=aout;
				dvalid<=dvalid;
				avalid<=avalid;
			end	
			endcase	
		end
		sdam:
		begin
			start=1;	
		end	
		w:
		begin
			case(cnt)
			1:waddr[0]<=sda; 
			2:waddr[1]<=sda;
			3:waddr[2]<=sda;
                        4:waddr[3]<=sda;
                        5:waddr[4]<=sda;
                        6:waddr[5]<=sda;
                        7:waddr[6]<=sda;
                        8:waddr[7]<=sda;
                        9:wdata[0]<=sda;
                        10:wdata[1]<=sda;
                        11:wdata[2]<=sda;
                        12:wdata[3]<=sda;
                        13:wdata[4]<=sda;
                        14:wdata[5]<=sda;
                        15:wdata[6]<=sda;
                        16:wdata[7]<=sda;
                        17:wdata[8]<=sda;
                        18:wdata[9]<=sda;
                        19:wdata[10]<=sda;
                        20:wdata[11]<=sda;
                        21:wdata[12]<=sda;
                        22:wdata[13]<=sda;
			23:wdata[14]<=sda;
			24:
			begin
				wdata[15]<=sda;
				start=0;
				cnt=1;
				wonroff=1;
			end
			endcase
			cnt=cnt+1;
		end
		r:
		begin
			dvalid<=1;
			avalid<=1;
			dout<=wdata;
			aout<=waddr;
			start=0;
			wonroff=0;
		end
		endcase	
	end
end
endmodule
