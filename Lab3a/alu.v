module alu(alu_out, accum, data, opcode, zero, clk, reset);
input 		clk, reset;
input 	[7:0] 	accum, data;
input 	[2:0] 	opcode;

parameter PASSA=3'b000;
parameter ADD  =3'b001;
parameter SUB  =3'b010;
parameter AND  =3'b011;
parameter XOR  =3'b100;
parameter ABS  =3'b101;
parameter CAL  =3'b110;
parameter CND  =3'b111;
output 	reg [7:0] 	alu_out;
output 		zero;



assign zero=(accum==0)?1:0;

always@(posedge clk)
begin
	if(reset)
	begin
		alu_out<=0;
	end
	else
	begin
		case(opcode)
		PASSA:alu_out<=accum;
		ADD:alu_out<=accum+data;
                SUB:alu_out<=accum-data;
                AND:alu_out<=accum&data;
                XOR:alu_out<=accum^data;
                ABS:alu_out<=(~accum)+1;
                CAL:alu_out<=(accum*5)+(accum>>3);
                CND:alu_out<=(accum>=32)?data:(~data);
                default:alu_out<=0;
		endcase
	end
end         
endmodule
