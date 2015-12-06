//ALU This is a template of ALU, to make them the same achitecture, suitable for VLSI implementation

//yu.zhang100@gmail.com
//May 13, 2009
//Yu Zhang




module ALU(clk, 
					 DA,DB,Mul_enable,SQA_opt,
					 BP_OUT1, BP_OUT2, /*R_OUT,*/ SS_OUT
					 );
				input clk;
				
				input Mul_enable;//1 enable multiplier.
				input SQA_opt;   //1 for adder and square; 0 for adder.
				
				input [162:0]DA;
				input [162:0]DB;
				output [162:0]SS_OUT;
				output [162:0]BP_OUT1;
				output [162:0]BP_OUT2;
				//output [162:0]R_OUT;
				



//multiplier
			wire mt_ins0_enable;
			wire [162:0]mt_ins0_A;
			wire [162:0]mt_ins0_B;	
			//wire [162:0]mt_ins0_C;
			wire [162:0]mt_ins0_BP_O;					

//square and adder
		   wire	SQAD_ins0_opt;
			wire	[162:0]SQAD_ins0_A; 
			wire	[162:0]SQAD_ins0_B;
			wire	[162:0]SQAD_ins0_BP;

//double square
		  wire		[162:0]SST_ins0_A;
//		wire		[162:0]SST_ins0_B;
		  wire		[162:0]SST_ins0_BP;	
		  		  
		  
//multiplier



assign mt_ins0_enable = Mul_enable;
assign mt_ins0_A = DA;
assign mt_ins0_B = DB;
////////output////////
	  assign BP_OUT1 = mt_ins0_BP_O;
	  //assign R_OUT = mt_ins0_C;
//////////////////////
mul_top mul_top_ins0(
										 clk,
										mt_ins0_enable,
										mt_ins0_A, 
										mt_ins0_B, 
										/*mt_ins0_C, */
										mt_ins0_BP_O
										);

//squarer and adder



assign SQAD_ins0_opt = SQA_opt;
assign SQAD_ins0_A = DA;
assign SQAD_ins0_B = DB;
////////output////////
assign BP_OUT2 = SQAD_ins0_BP; 
///////////////////////

squareadder_top squareadder_top_ins0(clk,
											  SQAD_ins0_opt, 
												SQAD_ins0_A,
												SQAD_ins0_B,
												SQAD_ins0_BP
											);

//double squares
assign SST_ins0_A = DB;					
squaresquare_top squaresquare_top_ins0(clk,
												SST_ins0_A,
												//SST_ins0_B,
												SST_ins0_BP 
												);		
////////output////////															
			assign 	SS_OUT = 	SST_ins0_BP;								
////////////////////////									
																	

endmodule 

