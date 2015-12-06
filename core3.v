`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: U of S
// Engineer: Yu Zhang
// //yu.zhang100@gmail.com
// Create Date:    14:26:13 05/23/2009 
// Design Name:    Core3
// Module Name:    Core3
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

module core3(//input
						clk,rst,enable,
						swap1,
						swap2,
						A1_BP_OUT2,
						A1_ZZ,
						A1_XX,
						Rx,
						Rb,
						Ry,
					//output
						A3_BP_OUT2,
						A3_ZZ,
						A3_XX
						);

//	
input clk;
input	rst;
input enable;
input swap1;//address swap
input swap2;
input [162:0]A1_BP_OUT2;
input [162:0]A1_ZZ;
input [162:0]A1_XX;
input [162:0]Rx;
input [162:0]Rb;
input [162:0]Ry;

//output
output [162:0]A3_BP_OUT2;
output [162:0]A3_ZZ;
output [162:0]A3_XX;



/******************************************
							define
*******************************************/	
//
reg [18:0]instruction;

//write address buffering for reg files
reg [1:0]addr_wr1;
reg [1:0]addr_wr2;
reg [1:0]addr_wr3;

//
reg [162:0]A3_DM1;
reg [162:0]A3_DM2;

//
reg MUL_WR1;
reg MUL_WR2;
reg MUL_WR3;

reg SQA_WR;
reg SS_WR;

//reg files
reg [162:0]A3_ZZ;
reg [162:0]A3_XX;
reg [162:0]A3_S;

//pc wires
wire pc_ins_enable;
wire pc_ins_loop_enable;
wire [7:0]pc_ins_cnt1;
wire [3:0]pc_ins_cnt2;
wire [7:0]pc_ins_addr;

//rom wires
wire [7:0]ins_addr;
wire [18:0]ins_out;

//operation wires
wire MUL;
wire SMUL;
wire SQA;
wire ADD;
wire SS;
wire LOOP;

//read address wires
wire [162:0]A3_DA;
wire [162:0]A3_DB;
wire [162:0]DOUT;

//reg files
wire A3_ZZ_WE;
wire A3_XX_WE;
wire A3_S_WE;

//ALU
wire Mul_enable;
wire SQA_opt;
wire [162:0]A3_BP_OUT1;
wire [162:0]A3_BP_OUT2;
wire [162:0]A3_SS_OUT;

//////////////////////optimize
wire DA_s0;
wire DA_s1;
wire DA_s2;
wire DA_s3;
wire [1:0]DA_s4s5;
wire DA_s6;
wire [2:0]DA_s4s5s6;

wire DB_s0;
wire DB_s1;
wire DB_s2;
wire DB_s3;
wire [1:0]DB_s4s5;
wire DB_s6;
wire [2:0]DB_s4s5s6;

wire [162:0]DA_s1_out;
wire [162:0]DA_s2_out;
wire [162:0]DA_s3_out;

wire [162:0]DB_s1_out;
wire [162:0]DB_s2_out;
wire [162:0]DB_s3_out;

 
//DA
reg opt_DA_s0;
reg opt_DA_s1;
reg opt_DA_s2;
reg opt_DA_s3;
reg [2:0]opt_DA_s4s5s6;
//DB
reg opt_DB_s0;
reg opt_DB_s1;
reg opt_DB_s2;
reg opt_DB_s3;
reg [2:0]opt_DB_s4s5s6;

//
reg opt_SQA_WR;
reg opt_SS_WR;
reg opt_A3_ZZ_WE;
reg opt_A3_XX_WE;
reg opt_A3_S_WE;
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
		 opt_DA_s4s5s6 <= DA_s4s5s6;
		//DB
		 opt_DB_s0 <= DB_s0;
		 opt_DB_s1 <= DB_s1;
		 opt_DB_s2 <= DB_s2;
		 opt_DB_s3 <= DB_s3;
		 opt_DB_s4s5s6 <= DB_s4s5s6;
		 //
		 opt_SQA_WR <= SQA_WR;
		 opt_SS_WR  <= SS_WR;
		 opt_A3_ZZ_WE <= A3_ZZ_WE;
		 opt_A3_XX_WE <= A3_XX_WE;
		 opt_A3_S_WE  <= A3_S_WE;
		 opt_Mul_enable <= Mul_enable;
		 opt_SQA_opt  <= SQA_opt;
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
rom3 rom3_ins(ins_addr, ins_out);

always@(posedge clk)
	if(~rst)
		instruction <= 19'd0;
	else
		instruction <= ins_out;			

/******************************************
						instruction decoding 
*******************************************/
//operation decoding
//operation decoding

assign MUL 	= (instruction[18:16] == 3'b111)? 1 : 0;
assign SMUL = (instruction[18:16] == 3'b110)? 1 : 0;
assign SQA 	= (instruction[18:16] == 3'b101)? 1 : 0;
assign ADD 	= (instruction[18:16] == 3'b100)? 1 : 0;
assign SS 	= (instruction[18:16] == 3'b011)? 1 : 0;
assign LOOP	= (instruction[18:16] == 3'b010)? 1 : 0;

//loop decoding
assign pc_ins_loop_enable = LOOP;
assign pc_ins_cnt1 = instruction[13:6]; // as pc_ins_cnt1 is [7:0]
assign pc_ins_cnt2 = instruction[3:0];	// as pc_ins_cnt2 is [3:0]		

//writing address decoding
always@(posedge clk)
	if(~rst)
		addr_wr1 <= 2'b00;
	else
		addr_wr1 <= instruction[15:14];

always@(posedge clk)
		addr_wr2 <= addr_wr1;
		
always@(posedge clk)
		addr_wr3 <= addr_wr2;					


//reading address decoding

//DA
assign DA_s0 = instruction[12] | instruction[13];
assign DA_s1 = (SMUL & swap2)? ~instruction[13]: instruction[13];
assign DA_s2 = instruction[11] | instruction[10];
assign DA_s3 = instruction[11];
assign DA_s4s5 = instruction[9:8];
assign DA_s6 = (instruction[9] & swap1)? ~instruction[7] : instruction[7];
assign DA_s4s5s6 = {DA_s4s5, DA_s6};

assign DA_s1_out = (opt_DA_s1)? A3_BP_OUT2 : A1_BP_OUT2;
assign DA_s3_out = (opt_DA_s3)? A3_SS_OUT  : A3_BP_OUT1;
assign DA_s2_out = (opt_DA_s2)? DA_s3_out  : A3_DM1;
assign A3_DA	  = (opt_DA_s0)? DA_s1_out	 :	DA_s2_out;

always@(*)
	case(opt_DA_s4s5s6)
		3'b111: A3_DM1 = A1_ZZ;
		3'b110: A3_DM1 = A3_ZZ;
		3'b101: A3_DM1 = A1_XX;
		3'b100: A3_DM1 = A3_XX;
		3'b011: A3_DM1 = Rx;
		3'b010: A3_DM1 = A3_S;
	   3'b001: A3_DM1 = Rb;
		3'b000: A3_DM1 = Ry;
	endcase

//DB
assign DB_s0 = instruction[5] | instruction[6];
assign DB_s1 = instruction[5];
assign DB_s2 = instruction[4] | instruction[3];
assign DB_s3 = instruction[4];
assign DB_s4s5 = instruction[2:1];
assign DB_s6 = (instruction[2] & swap1)? ~instruction[0] : instruction[0];
assign DB_s4s5s6 = {DB_s4s5, DB_s6};


assign DB_s1_out = (opt_DB_s1)? A1_BP_OUT2 : A3_BP_OUT2;
assign DB_s3_out = (opt_DB_s3)? A3_SS_OUT  : A3_BP_OUT1;
assign DB_s2_out = (opt_DB_s2)? DB_s3_out  : A3_DM2;
assign A3_DB	  = (opt_DB_s0)? DB_s1_out	 :	DB_s2_out;

always@(*)
	case(opt_DB_s4s5s6)
		3'b111: A3_DM2 = A1_ZZ;
		3'b110: A3_DM2 = A3_ZZ;
		3'b101: A3_DM2 = A1_XX;
		3'b100: A3_DM2 = A3_XX;
		3'b011: A3_DM2 = Rx;
		3'b010: A3_DM2 = A3_S;
	   3'b001: A3_DM2 = Rb;
		3'b000: A3_DM2 = Ry;
	endcase
	

/******************************************
			select siganls for ALU output 
*******************************************/	
	
/*
MUL and SMUL need 3 cycles,
select signal for A3_R_OUT
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
select signal for A3_BP_OUT2
*/					
always@(posedge clk)
	if(~rst)
		SQA_WR <= 1'b0;
	else
		SQA_WR <= SQA | ADD;
		
/*
SQA and ADD and MV need 1 cycle,
select signal for A3_SS_OUT
*/				
always@(posedge clk)
	if(~rst)
		SS_WR <= 1'b0;
	else
		SS_WR <= SS;
		

//OUTPUT from ALU
assign DOUT = 			(opt_SQA_WR)? A3_BP_OUT2 :
							(opt_SS_WR)? A3_SS_OUT: A3_BP_OUT1 ;	

/******************************************
						registers files
*******************************************/

//A3_ZZ
assign A3_ZZ_WE = (MUL_WR3 & (addr_wr3 == 2'b01)) | ((SQA_WR | SS_WR)& addr_wr1 ==2'b01) ;
always@(posedge clk)
	if(opt_A3_ZZ_WE)
		A3_ZZ <= DOUT;	
		
//A3_XX
assign A3_XX_WE = (MUL_WR3 & (addr_wr3 == 2'b10)) | ((SQA_WR | SS_WR)& addr_wr1 ==2'b10);
always@(posedge clk)
	if(opt_A3_XX_WE)
		A3_XX <= DOUT;
		
//A3_S
assign A3_S_WE = (MUL_WR3 & (addr_wr3 == 2'b11)) | ((SQA_WR | SS_WR)& addr_wr1 ==2'b11) ;
always@(posedge clk)
	if(opt_A3_S_WE)
		A3_S <= DOUT;							
								
/******************************************
									ALU
*******************************************/
assign Mul_enable = MUL|SMUL;
assign SQA_opt = SQA;

ALU ALU_ins(clk, 
					 A3_DA,A3_DB, opt_Mul_enable, opt_SQA_opt,
					 A3_BP_OUT1, A3_BP_OUT2,  A3_SS_OUT
					 );									
								
endmodule
