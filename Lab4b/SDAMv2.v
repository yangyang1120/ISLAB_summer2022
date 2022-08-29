`timescale 1ns/10ps
module SDAM( reset_n, scl, sda, avalid, aout, dvalid, dout);
//input
input       reset_n;	
input       scl; 	//clk
input       sda; 	//data and address and input enable
//output
output reg avalid, dvalid; 
output reg [7:0]        aout;
output reg [15:0]	dout;
//state
parameter IDLE=3'd0;
parameter START=3'd1;
parameter ADDR=3'd2;
parameter DATA=3'd3;
parameter END=3'd4;
//reg
reg [2:0] cs,ns;
reg [4:0] cnt;

//--------OL--------//
//aout
always@(posedge scl)
begin
	if(~reset_n) aout<=8'd0;
	else if(cs==ADDR) aout[cnt]<=sda;
end

//dout
always@(posedge scl)
begin
	if(~reset_n) dout<=16'd0;
	else if(cs==DATA) dout[cnt-5'd8]<=sda;
end

//avalid
always@(posedge scl)
begin
	if(~reset_n) avalid<=1'd0;
	else if(cs==END) avalid<=1'd1;
	else avalid<=1'd0;
end

//dvalid
always@(posedge scl)
begin
        if(~reset_n) dvalid<=1'd0;
        else if(cs==END) dvalid<=1'd1;
        else dvalid<=1'd0;
end

//cnt------need to save value->sequential
always@(posedge scl)
begin
	if(~reset_n) cnt<=5'd0;
	else if(cs==ADDR || cs==DATA) cnt<=cnt+5'd1;
	else cnt<=5'd0;
end

//--------CS--------//
//current-state
always@(posedge scl)
begin
	if(~reset_n) cs<=IDLE;
	else cs<=ns;
end

//--------NS--------//
//next-state
always@(*)
begin
	case(cs)
	IDLE:ns=(~sda)?START:IDLE;
	START:ns=ADDR;
	ADDR:ns=(cnt==5'd7)?DATA:ADDR;
	DATA:ns=(cnt==5'd23)?END:DATA;
	END:ns=IDLE;
	default:ns=IDLE;
	endcase
end
endmodule
