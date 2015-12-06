//yu.zhang100@gmail.com//double square
//May 3, 2009
//Yu Zhang

module squaresquare_top(clk,
												SST_A,
												//SST_B,//from reg
												SST_BP //bypass output signal
												);
	input clk;
	input [162:0]SST_A;
	//output [162:0]SST_B;
	output [162:0]SST_BP;
	reg [162:0]SST_M;
	//reg [162:0]SST_B;
	
	wire [162:0]SSQ_ins0_A;
	wire [162:0]SSQ_ins0_B;
	
always@(posedge clk)
				SST_M <= SST_A;
				
assign SSQ_ins0_A = SST_M;

squaresquare squaresquare_ins0(SSQ_ins0_A,SSQ_ins0_B);


assign SST_BP = SSQ_ins0_B; //bypass signal	

//reg
//always@(posedge clk)
//				SST_B <= SSQ_ins0_B;			
												
endmodule
