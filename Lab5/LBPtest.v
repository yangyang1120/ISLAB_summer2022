module LBP ( 
// Input Signals
	clk, 
	reset, 
	gray_data, 
// Output Signals	
	gray_addr, 
	gray_req, 
	lbp_addr, 
	lbp_write, 
	lbp_data, 
	finish
);
//================================================================
//  INPUT AND OUTPUT DECLARATION                         
//================================================================
input   	clk;
input   	reset;
output reg  [5:0] 	gray_addr;
output reg       	gray_req;
input   [7:0] 	gray_data;
output reg [5:0] 	lbp_addr;
output reg 	lbp_write;
output reg [7:0] 	lbp_data;
output reg 	finish;
//================================================================
//   Wires & Registers 
//================================================================
reg [2:0] cur_state, nx_state; 
reg [2:0] x,y;
wire [2:0] x_1,x_2,y_1,y_2;
reg [3:0] counter;
reg [7:0] gc_data;
wire [3:0] counter_reverse;

wire [5:0] g0_addr,g1_addr,g2_addr,g3_addr,g4_addr,g5_addr,g6_addr,g7_addr;
reg [5:0] gc_addr;
wire gray_ready;
//================================================================
//  integer / genvar / parameters
//================================================================
parameter STATE_IDLE = 3'd0, STATE_READ_GC = 3'd1, STATE_READ_GP = 3'd2, STATE_WRITE = 3'd3, STATE_FINISH = 3'd4;

//================================================================
//  INPUT
//================================================================
assign counter_reverse = counter - 4'd1;

always@( posedge clk or posedge reset )
begin
    if( reset ) x <= 3'd1;
    else if( nx_state == STATE_WRITE && x == 3'd6 ) x <= 3'd1;
    else if( nx_state == STATE_WRITE ) x <= x + 3'd1;
end

always@( posedge clk or posedge reset )
begin
    if( reset ) y <= 3'd1;
    else if( nx_state == STATE_WRITE && x == 3'd6 ) y <= y + 3'd1;
end

always@( posedge clk or posedge reset )
begin
    if( reset ) counter <= 4'd0;
    else if( nx_state  == STATE_READ_GP ) counter <= counter + 4'd1;
    else if( cur_state == STATE_WRITE ) counter <= 4'd0;
end

always@( posedge clk or posedge reset )
begin
    if( reset ) gc_addr <= 6'd9;
    else if( nx_state == STATE_READ_GC ) gc_addr <= {y,x};
end

//================================================================
// OUTPUT
//================================================================
always@( posedge clk or posedge reset )
begin
    if( reset ) gray_req <= 1'd0;
    else if( nx_state == STATE_READ_GC || nx_state == STATE_READ_GP ) gray_req <= 1'd1;
    else gray_req <= 1'd0;
end

always@( posedge clk or posedge reset )
begin
    if( reset ) lbp_write <= 1'd0;
    else if( nx_state == STATE_WRITE ) lbp_write <= 1'd1;
    else lbp_write <= 1'd0;
end

always@( posedge clk or posedge reset )
begin
    if( reset ) lbp_addr <= 6'd0;
    else if( nx_state == STATE_WRITE ) lbp_addr <= gc_addr;
end

always@( posedge clk or posedge reset )
begin
    if( reset ) 
    begin
        lbp_data <= 8'd0; gc_data <= 8'd0;
    end
    else if( cur_state == STATE_READ_GC ) gc_data <= gray_data;
    else if( cur_state == STATE_READ_GP )
    begin
        if( gray_data>=gc_data ) lbp_data <= lbp_data + (8'd1 << counter_reverse);
    end
    else if( cur_state == STATE_WRITE ) lbp_data <= 8'd0;
end

always@( posedge clk or posedge reset ) begin
    if( reset ) finish <= 1'd0;
    else if( cur_state == STATE_FINISH ) finish <= 1'd1;
end

assign g0_addr = {y_1,x_1};
assign g1_addr = {y_1,x};
assign g2_addr = {y_1,x_2};
assign g3_addr = {y,x_1};
assign g4_addr = {y,x_2};
assign g5_addr = {y_2,x_1};
assign g6_addr = {y_2,x};
assign g7_addr = {y_2,x_2};

assign x_1 = x - 3'd1;
assign x_2 = x + 3'd1;
assign y_1 = y - 3'd1;
assign y_2 = y + 3'd1;

always@( posedge clk or posedge reset ) begin
    if( reset ) gray_addr <= 6'd0;
    else if( nx_state == STATE_READ_GC ) gray_addr <= {y,x};
    else if( nx_state == STATE_READ_GP )
    begin
        case(counter)
        4'd0: gray_addr <= g0_addr;
        4'd1: gray_addr <= g1_addr;
        4'd2: gray_addr <= g2_addr;
        4'd3: gray_addr <= g3_addr;
        4'd4: gray_addr <= g4_addr;       
        4'd5: gray_addr <= g5_addr;
        4'd6: gray_addr <= g6_addr;
        4'd7: gray_addr <= g7_addr;
        endcase
    end
end

//================================================================
//  FSM
//================================================================
assign gray_ready = !reset;

always@( posedge clk or posedge reset )
begin
    if( reset ) cur_state <= STATE_IDLE;
    else cur_state <= nx_state;
end

always@(*)
begin
    case(cur_state)
    STATE_IDLE: nx_state = ( gray_ready )? STATE_READ_GC : STATE_IDLE;    
    STATE_READ_GC: nx_state = STATE_READ_GP;
    STATE_READ_GP: nx_state = ( counter == 4'd8 )? STATE_WRITE : STATE_READ_GP;   
    STATE_WRITE: nx_state = ( gc_addr == 6'd54 )? STATE_FINISH : STATE_READ_GC;
    STATE_FINISH: nx_state = STATE_FINISH;
    default: nx_state = STATE_IDLE;
    endcase
end

endmodule