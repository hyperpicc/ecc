`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: U of S
// Engineer: Yu Zhang
////yu.zhang100@gmail.com 
// Create Date:    13:37:13 05/18/2009 
// Design Name:    pc counter
// Module Name:    pc 
// Project Name:   ECC Multi-Core Porcessor
// Target Devices: V4
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
// Verfified: Y
//////////////////////////////////////////////////////////////////////////////////

module pc(clk,rst,enable,loop_enable, cnt1,cnt2,addr);

input clk;
input rst;
input enable;
input loop_enable; //valid only one cycle
input [7:0]cnt1; //loop number
input [3:0]cnt2; //address shift
output [7:0]addr; //address out from pc counter

reg [7:0]loop_cnt1;
wire loop_cnt1_dec;
wire loop_done;
reg [2:0]loop_cnt2;
reg [7:0]pc;
reg pc_set;
reg pc_en;
reg [7:0]pc_next;
reg pc_next_en;
reg [3:0]shifter;
reg shifter_set;
reg [2:0]state;
reg [2:0]next_state;

parameter IDLE = 3'b001,
					SEQ = 3'b010,
					LOOP1 = 3'b100;
//counter
always@(posedge clk)
	if(~rst)
		loop_cnt1 <= 8'd0;
	else
	if(loop_enable)
		loop_cnt1 <= cnt1;
	else
	if(loop_cnt1_dec)
		loop_cnt1 <= loop_cnt1 - 1'b1;
		
assign loop_cnt1_dec = (shifter == loop_cnt2);	
assign loop_done = (loop_cnt1_dec&(loop_cnt1==8'd1));	
		
always@(posedge clk)
	if(~rst)
		loop_cnt2 <= 4'd0;
	else
	if(loop_enable)
		loop_cnt2 <= cnt2;
									


//pc counter
always@(posedge clk)
	if(~rst)
		pc <= 8'd0;
	else
	if(loop_enable)
		pc <= pc_next;
	else
	if(pc_set)
		pc <= pc_next + shifter;	
	else
	if(pc_en)
		pc <= pc + 1'b1;	

//shifter
always@(posedge clk)
	if(shifter_set)
		shifter <= 4'd0;
	else
	if(loop_enable & cnt2!=4'd0)
		shifter <= shifter +  1'b1;	
	else
	if(loop_enable & cnt2==4'd0 | shifter == loop_cnt2)
		shifter <= 4'd0;	
	else
		shifter <= shifter +  1'b1;	
		

//pc_next
always@(posedge clk)
	if(pc_next_en)
		pc_next <= pc + 2'd2;	

//state machine
always@(posedge clk)
	if(~rst)
		state <= IDLE;
	else
	 state <= next_state;
	 		
always@(*)
	begin
		pc_set = 1'b0;
		pc_en = 1'b0;
		pc_next_en = 1'b1;
		next_state = state;
		shifter_set = 1'b0;
		case(state)
		IDLE:	begin
							if(enable)
								begin
									pc_en = 1'b1;
									next_state = SEQ;
									shifter_set = 1'b1;
									
								end
					end
		
		SEQ:	begin
						pc_en = 1'b1;
						shifter_set = 1'b1;
							if(loop_enable)
								begin
									pc_set = 1'b1;
									pc_next_en = 1'b0;
									shifter_set = 1'b0;
									next_state = LOOP1;
								end
							end
		LOOP1:	begin
							pc_set = 1'b1;
							pc_next_en = 1'b0;
							if(loop_done)	
								begin
									pc_set = 1'b0;
									pc_en = 1'b1;
									next_state = SEQ;
								end
							end
				endcase								
				end				
								
								
assign addr = pc;											
									
endmodule


			

