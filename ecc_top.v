`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: U of S
// Engineer: Yu Zhang
// //yu.zhang100@gmail.com
// Create Date:    01:58:13 06/06/2009 
// Design Name:    ecc_top	
// Module Name:    ecc_top	
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

module ecc_top(clk, rst, enable, din, dx, dy, reg_done);
//ecc_top(clk, rst, enable, din, dx, dy, done);

input clk;
input rst;
input enable;
//input [162:0]k;
input [162:0]din;
output [162:0]dx;
output [162:0]dy;
output reg_done;


wire [162:0]Rx;
wire [162:0]Ry;
wire [162:0]Rb;

wire [162:0]A1_ZZ;
wire [162:0]A1_XX;
wire [162:0]A1_BP_OUT2;

//wire [162:0]A2_R_OUT;
wire [162:0]A2_BP_OUT1;

wire [162:0]A3_BP_OUT2;
wire [162:0]A3_ZZ;
wire [162:0]A3_XX;
wire [162:0]A2_S;


reg reg_rst;
reg reg_enable;
//input [162:0]k;
reg [162:0]reg_din;

//reg [162:0]reg_dx;
//reg [162:0]reg_dy;
reg reg_done;

wire [162:0]dx;
wire [162:0]dy;
wire done;

assign dx = A1_XX;
assign dy = A2_S;




always@(posedge clk)
	begin
		reg_rst <= rst;
		reg_enable <= enable;
		reg_din <= din;
//		reg_dx <= dx;
//		reg_dy <= dy;
		reg_done <= done;
	end
	

main main_ins(//input
						clk, reg_rst, 
//						k,
						reg_enable,
						reg_din,
						//output
						Rx,
						Ry,
						Rb,
						swap1,
						swap2,
						cores_en
	
						 );
						 		

core1 core1_ins(//input
							clk,reg_rst,cores_en,
							swap1,
							swap2,
							A2_S,
							A2_BP_OUT1,
							A3_BP_OUT2,
							A3_ZZ,
							A3_XX,
						//	Rb,
							Rx,
							Ry,
						//output
							A1_BP_OUT2,
							A1_ZZ,
							A1_XX
							);
							

core2 core2_ins(//input
									clk, reg_rst, cores_en,
									swap1,
									swap2,
									A1_BP_OUT2,
									A3_BP_OUT2,
									A1_ZZ,
									A1_XX,
									A3_ZZ,
									A3_XX,
									Rx,
									//Rb,
									Ry,
						//output
									A2_BP_OUT1,
									A2_S,
									done
							
							);		
							

core3 core3_ins(//input
						clk,reg_rst,cores_en,
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

endmodule												
