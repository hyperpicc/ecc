`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: U of S
// Engineer: Yu Zhang
// //yu.zhang100@gmail.com
// Create Date:    07:37:13 05/22/2009 
// Design Name:    Core1
// Module Name:    Core1
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
// Verfified: N
//////////////////////////////////////////////////////////////////////////////////

module core1(//input
							clk,rst,enable,
							swap1,
							swap2,
							A2_S,
							A2_BP_OUT1,
							A3_BP_OUT2,
							A3_ZZ,
							A3_XX,
							Rx,
							Ry,
						//output
							A1_BP_OUT2,
							A1_ZZ,
							A1_XX
							);
//	
input clk;
input	rst;
input enable;
input swap1;//address swap
input swap2;
input [162:0]A2_S;
input	[162:0]A2_BP_OUT1;
input [162:0]A3_BP_OUT2;
input [162:0]A3_ZZ;
input [162:0]A3_XX;
input [162:0]Rx;
input [162:0]Ry;
//
output [162:0]A1_BP_OUT2;
output [162:0]A1_ZZ;
output [162:0]A1_XX;

/******************************************
							define
*******************************************/	
//
reg [20:0]instruction;

//write address buffering for reg files
reg [1:0]addr_wr1;
reg [1:0]addr_wr2;
reg [1:0]addr_wr3;
//reg [1:0]addr_wr4;

//
reg [162:0]A1_DM1;
reg [162:0]A1_DM2;

//
reg MUL_WR1;
reg MUL_WR2;
reg MUL_WR3;
//reg MUL_WR4;

reg SQA_WR;
reg SS_WR;


//reg files
reg [162:0]A1_ZZ;
reg [162:0]A1_XX;
reg [162:0]A1_S;

//pc wires
wire pc_ins_enable;
wire pc_ins_loop_enable;
wire [7:0]pc_ins_cnt1;
wire [3:0]pc_ins_cnt2;
wire [7:0]pc_ins_addr;

//rom wires
wire [7:0]ins_addr;
wire [20:0]ins_out;

//operation wires
wire MUL;
wire SMUL;
wire SQA;
wire ADD;
wire SS;
wire LOOP;


//read address wires
wire [162:0]A1_DA;
wire [162:0]A1_DB;
wire [162:0]DOUT;

//reg files
wire A1_ZZ_WE;
wire A1_XX_WE;
wire A1_S_WE;

//ALU
wire Mul_enable;
wire SQA_opt;
wire [162:0]A1_BP_OUT1;
wire [162:0]A1_BP_OUT2;
wire [162:0]A1_SS_OUT;


//////////////////////optimize
wire DA_s0;
wire DA_s1;
wire DA_s2;
wire DA_s3;
wire DA_s4;
wire [1:0]DA_s5s6;
wire DA_s7;
wire [2:0]DA_s5s6s7;

wire DB_s0;
wire DB_s1;
wire DB_s2;
wire DB_s3;
wire DB_s4;
wire [1:0]DB_s5s6;
wire DB_s7;
wire [2:0]DB_s5s6s7;

wire [162:0]DA_s1_out;
wire [162:0]DA_s2_out;
wire [162:0]DA_s3_out;
wire [162:0]DA_s4_out;

wire [162:0]DB_s1_out;
wire [162:0]DB_s2_out;
wire [162:0]DB_s3_out;
wire [162:0]DB_s4_out;

//DA
reg opt_DA_s0;
reg opt_DA_s1;
reg opt_DA_s2;
reg opt_DA_s3;
reg opt_DA_s4;
reg [2:0]opt_DA_s5s6s7;
//DB
reg opt_DB_s0;
reg opt_DB_s1;
reg opt_DB_s2;
reg opt_DB_s3;
reg opt_DB_s4;
reg [2:0]opt_DB_s5s6s7;
//
reg opt_SQA_WR;
reg opt_SS_WR;
reg opt_A1_ZZ_WE;
reg opt_A1_XX_WE;
reg opt_A1_S_WE;
reg opt_Mul_enable;
reg opt_SQA_opt;
//////////////////////optimize

always@(posedge clk)
	begin
		//DA
		opt_DA_s0 <= DA_s0;
		opt_DA_s1 <= DA_s1;
		opt_DA_s2 <= DA_s2;
		opt_DA_s3 <= DA_s3;
		opt_DA_s4 <= DA_s4;
		opt_DA_s5s6s7 <= DA_s5s6s7;
		//DB
		opt_DB_s0 <= DB_s0;
		opt_DB_s1 <= DB_s1;
		opt_DB_s2 <= DB_s2;
		opt_DB_s3 <= DB_s3;
		opt_DB_s4 <= DB_s4;
		opt_DB_s5s6s7 <= DB_s5s6s7;
		//
		opt_SQA_WR <= SQA_WR;
		opt_SS_WR <= SS_WR;
		opt_A1_ZZ_WE <= A1_ZZ_WE;
		opt_A1_XX_WE <= A1_XX_WE;
		opt_A1_S_WE <= A1_S_WE;
		opt_Mul_enable <= Mul_enable;
		opt_SQA_opt <= SQA_opt;
	end


//////////////////////optimize

/******************************************
							pc counter
*******************************************/	
assign pc_ins_enable = enable; 
pc pc_ins(clk,rst,pc_ins_enable,pc_ins_loop_enable, pc_ins_cnt1,pc_ins_cnt2,pc_ins_addr);


/******************************************
						instruction fetching 
*******************************************/	
assign ins_addr = pc_ins_addr;
rom1 rom1_ins(ins_addr, ins_out);

always@(posedge clk)
	if(~rst)
		instruction <= 21'd0;
	else
		instruction <= ins_out;
	
/******************************************
						instruction decoding 
*******************************************/
//operation decoding

assign MUL 	= (instruction[20:18] == 3'b111)? 1 : 0;
assign SMUL = (instruction[20:18] == 3'b110)? 1 : 0;
assign SQA 	= (instruction[20:18] == 3'b101)? 1 : 0;
assign ADD 	= (instruction[20:18] == 3'b100)? 1 : 0;
assign SS 	= (instruction[20:18] == 3'b011)? 1 : 0;
assign LOOP	= (instruction[20:18] == 3'b010)? 1 : 0;


//writing address decoding
always@(posedge clk)
	if(~rst)
		addr_wr1 <= 2'b00;
	else
		addr_wr1 <= instruction[17:16];

always@(posedge clk)
		addr_wr2 <= addr_wr1;
		
always@(posedge clk)
		addr_wr3 <= addr_wr2;					


		
//loop decoding
assign pc_ins_loop_enable = LOOP;
assign pc_ins_cnt1 = instruction[15:8]; // as pc_ins_cnt1 is [7:0]
assign pc_ins_cnt2 = instruction[3:0];	// as pc_ins_cnt2 is [3:0]


		
//reading address decoding

//DA

assign DA_s0 = instruction[14] | instruction[15];
assign DA_s1 = (SMUL & swap2)? ~instruction[15] : instruction[15]; //////////////////////////////////modified
assign DA_s2 = instruction[13] | instruction[12];
assign DA_s3 = instruction[13];
assign DA_s4 = instruction[11];
assign DA_s5s6 = instruction[10:9];
assign DA_s7 = (instruction[10] & swap1)? ~instruction[8] : instruction[8];
assign DA_s5s6s7 = {DA_s5s6, DA_s7}; 

assign DA_s1_out = (opt_DA_s1)? A3_BP_OUT2 : A1_BP_OUT2;
assign DA_s3_out = (opt_DA_s3)? A1_SS_OUT  : A1_BP_OUT1;
assign DA_s4_out = (opt_DA_s4)? A2_BP_OUT1 : A1_DM1;
assign DA_s2_out = (opt_DA_s2)? DA_s3_out  : DA_s4_out;
assign A1_DA 	  = (opt_DA_s0)?	  DA_s1_out	 : DA_s2_out;		
 

always@(*)
	case(opt_DA_s5s6s7)
		3'b111: A1_DM1 = A1_ZZ;
		3'b110: A1_DM1 = A3_ZZ;
		3'b101: A1_DM1 = A1_XX;
		3'b100: A1_DM1 = A3_XX;
		3'b011: A1_DM1 = Rx;
		3'b010: A1_DM1 = Ry;
		3'b001: A1_DM1 = A1_S;
		3'b000: A1_DM1 = A2_S;
	endcase

//DB

assign DB_s0 = instruction[6] | instruction[7];
assign DB_s1 = instruction[6];
assign DB_s2 = instruction[5] | instruction[4];
assign DB_s3 = instruction[5];
assign DB_s4 = instruction[3];
assign DB_s5s6 = instruction[2:1];
assign DB_s5s6s7 = {DB_s5s6, DB_s7}; 
assign DB_s7 = (instruction[2] & swap1)? ~instruction[0] : instruction[0];

assign DB_s1_out = (opt_DB_s1)? A1_BP_OUT2 : A3_BP_OUT2;
assign DB_s3_out = (opt_DB_s3)? A1_SS_OUT  : A1_BP_OUT1;
assign DB_s4_out = (opt_DB_s4)? A2_BP_OUT1 : A1_DM2;
assign DB_s2_out = (opt_DB_s2)? DB_s3_out  : DB_s4_out;
assign A1_DB 	  = (opt_DB_s0)? DB_s1_out  : DB_s2_out;


always@(*)
	case(opt_DB_s5s6s7)
		3'b111: A1_DM2 = A1_ZZ;
		3'b110: A1_DM2 = A3_ZZ;
		3'b101: A1_DM2 = A1_XX;
		3'b100: A1_DM2 = A3_XX;
		3'b011: A1_DM2 = Rx;
		3'b010: A1_DM2 = Ry;
		3'b001: A1_DM2 = A1_S;
		3'b000: A1_DM2 = A2_S;
	endcase



		
		
/******************************************
			select siganls for ALU output 
*******************************************/

/*
MUL and SMUL need 3 cycles,
select signal for A1_R_OUT
*/

always@(posedge clk)
	if(~rst)
		MUL_WR1 <= 1'b0;
	else
		MUL_WR1 <= MUL | SMUL;

always@(posedge clk)
		MUL_WR2 <= MUL_WR1;
		
always@(posedge clk)
		MUL_WR3 <= MUL_WR2;						

/*
SQA and ADD need 1 cycle,
select signal for A1_BP_OUT2
*/					
always@(posedge clk)
	if(~rst)
		SQA_WR <= 1'b0;
	else
		SQA_WR <= SQA | ADD;
		
/*
SQA and ADD and MV need 1 cycle,
select signal for A1_SS_OUT
*/				
always@(posedge clk)
	if(~rst)
		SS_WR <= 1'b0;
	else
		SS_WR <= SS;
		
		
//OUTPUT from ALU
assign DOUT = 		(opt_SQA_WR)? A1_BP_OUT2:
						(opt_SS_WR)? A1_SS_OUT: A1_BP_OUT1;
									
		
/******************************************
						registers files
*******************************************/


//A1_ZZ
assign A1_ZZ_WE = (MUL_WR3 & (addr_wr3 == 2'b01)) | ((SQA_WR | SS_WR)& addr_wr1 == 2'b01) ;//
always@(posedge clk)
	if(opt_A1_ZZ_WE)
		A1_ZZ <= DOUT;	
		
//A1_XX
assign A1_XX_WE = (MUL_WR3 & (addr_wr3 == 2'b10)) | ((SQA_WR | SS_WR)& addr_wr1 == 2'b10); //
always@(posedge clk)
	if(opt_A1_XX_WE)
		A1_XX <= DOUT;
		
//A1_S
assign A1_S_WE = (MUL_WR3 & (addr_wr3 == 2'b11)) | ((SQA_WR | SS_WR)& addr_wr1 == 2'b11) ;//
always@(posedge clk)
	if(opt_A1_S_WE)
		A1_S <= DOUT;

/******************************************
									ALU
*******************************************/
assign Mul_enable = MUL|SMUL;
assign SQA_opt = SQA;

ALU ALU_ins(clk,
					 A1_DA,A1_DB, opt_Mul_enable, opt_SQA_opt,
					 A1_BP_OUT1, A1_BP_OUT2, /*A1_R_OUT,*/ A1_SS_OUT
					 );									

endmodule
					
