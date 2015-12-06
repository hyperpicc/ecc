//field multiplier top module version 2
//move the position of mux
//June 1, 2009
//Yu Zhang//yu.zhang100@gmail.com
//verified: N
module mul_top(clk,enable, A, B, /*C,*/ BP_O);
		input clk;
		input enable;//data enable, and begin calculation
		input [162:0]A;
		input [162:0]B;
		//output [162:0]C;
		output [162:0]BP_O;
		

//multiplier 41by163		
		//1
		wire [40:0]m41_ins0_A;
		wire [162:0]m41_ins0_B;
		wire [202:0]m41_ins0_C;
		//2
	  wire [40:0]m41_ins1_A;
		wire [162:0]m41_ins1_B;
		wire [202:0]m41_ins1_C;
		
//inter regs
		reg [81:0]F;
		reg [81:0]S;
		reg [162:0]T;
		reg [202:0]M0;
		reg [202:0]M1;
		reg [162:0]R;
//

		wire R_clr;
		reg FS_Flag;
		
//accumulator
		wire [202:0]ACC_ins0_A;
		wire [202:0]ACC_ins0_B;
		wire [162:0]ACC_ins0_C;
		wire [162:0]ACC_ins0_D;		
		wire [81:0]V; 		
////reduction
//  	 wire   [244:0]RED245_ins0_c;
//  	 wire  [162:0]RED245_ins0_r;
		
		parameter IDLE 	 = 4'b0001,
							CYCLE1 = 4'b0010,
							CYCLE2 = 4'b0100,
							CYCLE3 = 4'b1000;
		
//		
		always@(posedge clk)
				FS_Flag <= enable;
		
		
			assign	R_clr = FS_Flag;				
							
		always@(posedge clk)
					if(enable) //1: {1'b0,A[162:82]}; 0: S
								F <=  {1'b0,A[162:82]};//input has higher priority for bypass issue 				 

		always@(posedge clk)
					if(enable)
								S <= A[81:0];//input has higher priority for bypass issue
				
		
		always@(posedge clk)
					if(enable)		
								T <= B;
	
		assign V = (FS_Flag)? F : S;
																					
//Two multipliers			  	
		assign 	m41_ins0_A = V[40:0];
		assign 	m41_ins0_B = T; 
		multiplier_41x163	m41_ins0(m41_ins0_A, m41_ins0_B, m41_ins0_C);
		
		assign 	m41_ins1_A = V[81:41];
		assign 	m41_ins1_B = T; 
		multiplier_41x163	m41_ins1(m41_ins1_A, m41_ins1_B, m41_ins1_C);
		
		always@(posedge clk)
					M0 <= m41_ins0_C;
		
		always@(posedge clk)
					M1 <= m41_ins1_C;
					
			
//Accumulator //reduction is done in accumulator
		assign ACC_ins0_A = M0;
		assign ACC_ins0_B = M1;
		assign ACC_ins0_C =  R;
		assign BP_O = ACC_ins0_D;
		accumulator accumulator_is0(ACC_ins0_A,ACC_ins0_B,ACC_ins0_C,ACC_ins0_D);
				
////Reduction				
//		assign RED245_ins0_c = ACC_ins0_D;
//		
//	  reduction245 reduction245_ins0(RED245_ins0_c, RED245_ins0_r);  

		always@(posedge clk)
				if(R_clr)
					R <= 163'd0;
				else	
					R <= ACC_ins0_D;
			

				
//final result
				//assign C = 	R;			

endmodule
											
		
															 	
							
								
  																		  
