`timescale 1ns/10ps
module LBP ( clk, reset, gray_addr, gray_req, gray_data, lbp_addr, lbp_write, lbp_data, finish);
input   	clk;
input   	reset;
output reg [5:0] 	gray_addr;
output reg        	gray_req;
input   	[7:0] 	gray_data;
output reg [5:0] 	lbp_addr;
output reg 		lbp_write;
output reg [7:0] 	lbp_data;
output reg 	finish;

//state
parameter IDLE = 3'd0, RDGC = 3'd1, RDGP = 3'd2, WD = 3'd3, FINISH = 3'd4;
//reg
reg [2:0] cs,ns;
reg [7:0] gc_data;
reg [2:0] x,y;
wire [2:0] x1,x3,y1,y3;
reg [3:0] cnt;
wire[3:0]cnt_r;

//current-state
always@(posedge clk or posedge reset)
begin
	if(reset) cs<=IDLE;
	else cs<=ns;
end

//next-state
always@(*)
begin
	case(cs)
	IDLE:ns=RDGC;
	RDGC:ns=RDGP;
	RDGP:ns=(cnt==8)?WD:RDGP;
	WD:ns=(lbp_addr==6'd54)?FINISH:RDGC;
	FINISH:ns=FINISH;
	default:ns=IDLE;
	endcase
end

//Input
/*gc_addr
always@(posedge clk or posedge reset)
begin
	if(reset) gc_addr<=6'd0;
	else if(cs==RDGC) gc_addr<={y,x}
end*/

//control addr
//x
always@(posedge clk or posedge reset)
begin
	if(reset) x<=3'd1; //reset
	else if(ns==WD&&x==3'd6) x<=3'd1; //origin
	else if(ns==WD) x<=x+3'd1; //range of x:0-6
end
//y
always@(posedge clk or posedge reset)
begin
	if(reset) y<=3'd1;
	else if(ns==WD&&x==3'd6) y<=y+1;
	else if(ns==WD) y<=y;
end
//cnt
always@(posedge clk or posedge reset)
begin
	if(reset) cnt<=4'd0;
	else if(ns==RDGP) cnt<=cnt+4'd1;
	else cnt<=4'd0;
end

//index
assign y1=y-1;
assign y3=y+1;
assign x1=x-1;
assign x3=x+1;


//output
//gray_req
always@(posedge clk or posedge reset)
begin
	if(reset) gray_req<=1'd0;
	else if(ns==RDGC||ns==RDGP) gray_req<=1'd1;
	else gray_req<=1'd0;
end

//gray_addr 
always@(posedge clk or posedge reset)
begin
	if(reset) gray_addr<=6'd0;
	else if(ns==RDGC) gray_addr<={y,x}; //position chance beforerecieve data
	else if(ns==RDGP) 
	begin
		case(cnt)
				0:gray_addr<={y1,x1};
                1:gray_addr<={y1,x};
                2:gray_addr<={y1,x3};
                3:gray_addr<={y,x1};
                4:gray_addr<={y,x3};
                5:gray_addr<={y3,x1};
                6:gray_addr<={y3,x};
                7:gray_addr<={y3,x3};
		endcase
	end
end
assign cnt_r=cnt-1;
//lbp_data
always@(posedge clk or posedge reset)
begin
        if(reset)begin lbp_data<=8'd0; gc_data<=8'd0;end
        else if(cs==RDGC) gc_data<=gray_data;
        else if(cs==RDGP)
		begin
		if(gray_data>=gc_data)
			lbp_data<=lbp_data+(8'd1<<cnt_r);
		end
	else if(cs==WD) lbp_data<=8'd0;
end

//lbp_addr
always@(posedge clk or posedge reset)
begin
	if(reset) lbp_addr<=6'd0;
	else if(ns==WD) lbp_addr<={y,x};
end
//lbp_write
always@(posedge clk or posedge reset)
begin
	if(reset) lbp_write<=1'd0;
	else if(ns==WD) lbp_write<=1'd1;
	else lbp_write<=1'd0;
end
//finish
always@(posedge clk or posedge reset)
begin
	if(reset) finish<=1'd0;
	else if(cs==FINISH) finish<=1'd1;
	else finish<=1'd0;
end

endmodule
