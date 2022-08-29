// Serial Input BitStream Pattern Detector
module fsm_bspd(clk, reset, bit_in, det_out);
input 	clk, reset, bit_in;
output 	reg det_out;

reg [1:0] cs,ns;

parameter s0=2'd0;
parameter s1=2'd1;
parameter s2=2'd2;
parameter s3=2'd3;

//current-state save the value of cs -> sequential circuit
always@(posedge clk)
begin
	if(reset)
	begin
		cs<=s0;	
	end
	else
	begin
		cs<=ns;	
	end
end

//next-state follow input and current-state to change value immediately ->
//combinational circuit
always@(*)
begin
	 case(cs)
                s0:ns=(bit_in)?s0:s1;
                s1:ns=(bit_in)?s0:s2;
                s2:ns=(bit_in)?s3:s2;
                s3:ns=(bit_in)?s0:s1;
				default:ns=s0;
         endcase
end

//output
always@(*)
begin
	det_out=(cs==s3&&bit_in==0)?1:0;
end
endmodule

