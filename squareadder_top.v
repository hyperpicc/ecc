//yu.zhang100@gmail.com
//square&adder top level
//April 27, 2009
//Yu Zhang

module squareadder_top( clk,
											  //enable,
											  opt, //option, 0:adder, 1:squareadder
												SQAD_A,
												SQAD_B,
												SQAD_BP//bypass output signal
											);

input clk;
//input enable;
input opt;
input [162:0] SQAD_A;
input [162:0] SQAD_B;
output [162:0]SQAD_BP;

//two regs in this module
reg [162:0]SAR0;
reg [162:0]SAR1;
reg opt_reg;

//adder 
wire [162:0] ADD_ins0_A;
wire [162:0] ADD_ins0_B;
wire [162:0] ADD_ins0_R;

wire [162:0] ADD_ins1_A;
wire [162:0] ADD_ins1_B;
wire [162:0] ADD_ins1_R;

//square
wire [162:0]SQ_ins0_A;
wire [162:0]SQ_ins0_R;


always@(posedge clk)
					SAR0 <= SQAD_A;
				
always@(posedge clk)
					SAR1 <= SQAD_B;

always@(posedge clk)
					opt_reg <= opt;
					
//exclusive adder
assign ADD_ins0_A = SAR0;
assign ADD_ins0_B = SAR1;
adder adder_ins0(ADD_ins0_A, ADD_ins0_B, ADD_ins0_R);

assign ADD_ins1_A = SAR0;
assign ADD_ins1_B = SAR1;
adder adder_ins1(ADD_ins1_A, ADD_ins1_B, ADD_ins1_R);

//square
assign SQ_ins0_A = ADD_ins0_R;
square square_ins0(SQ_ins0_A,SQ_ins0_R);

//final bypass output
assign SQAD_BP = (opt_reg==1)? SQ_ins0_R : ADD_ins1_R;

endmodule


