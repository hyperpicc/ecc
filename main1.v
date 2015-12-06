`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: U of S
// Engineer: Yu Zhang
// //yu.zhang100@gmail.com
// Create Date:    01:02:13 06/17/2009 
// Design Name:    MAIN	
// Module Name:    main	
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

module main(//input
						clk, rst, 
//						k,
						data_en,
						din,
						//output
						opt_Rx,
						opt_Ry,
						opt_Rb,
						reg_swap1,
						reg_swap2,
						cores_en

						 );
//
input clk;
input rst;

input data_en;
input [162:0]din;

//
output [162:0]opt_Rx;
output [162:0]opt_Ry;
output [162:0]opt_Rb;

output reg_swap1;
output reg_swap2;
output cores_en;
//output cores_en;

//wire swap1;
//wire swap2;
wire cnt163_equal_0;
reg [162:0]Rx;
reg [162:0]Ry;
reg Rx_rst;
wire [162:0]Rb;
reg [12:0]state;
reg [12:0]next_state;
reg [7:0]cnt163;

reg cnt163_set;
reg cnt163_dec;
reg [2:0]cnt8;

reg flag1;
reg reg_swap1;
reg flag2;
reg reg_swap2;
reg first_swap;
reg first;
reg Ry_en;
//reg Rx_en;
//reg Rb_en;
reg Ry_set_clr;
reg cnt_51_set;
reg cnt8_clr;

reg [162:0]reg_Ry;
reg [162:0]reg_Rx;
reg [162:0]reg_Rb;
reg [162:0]k;

reg kn;
reg kp;
reg kn_reg;
reg kp_reg;
reg cores_en;
//reg reg_cores_en;
wire loop_flag1;
reg loop_flag2;
reg loop_flag3;
reg flag1_hold;
reg cnt163_equal_0_reg;
//optimize
reg [162:0]opt_Rx;
reg [162:0]opt_Ry;
reg [162:0]opt_Rb;

parameter IDLE =      13'b0000000000001,
					DATAIN = 		13'b0000000000010,
					 CYCLE1 =   13'b0000000000100,
					 CYCLE2 =   13'b0000000001000,
					 CYCLE3 =   13'b0000000010000,
					 CYCLE4 =   13'b0000000100000,
					 LP1 =      13'b0000001000000, 
					 LP2 =      13'b0000010000000, 
					 FIRSTLOOP =13'b0000100000000,
				LOOPSTART =   13'b0001000000000,
					 LOOPMID =  13'b0010000000000,
					 NOPLOOP =  13'b0100000000000, 
					 RYENABLE = 13'b1000000000000;		


always@(posedge clk)
	begin
		opt_Rx <= Rx;
		opt_Ry <= Ry;
		opt_Rb <= Rb;
	end
//always@(posedge clk)
//	if(~rst)
//		reg_cores_en <=1'b0;
//	else
//		reg_cores_en <= cores_en;	
		
always@(posedge clk)
	if((~flag1)&(~flag1_hold))		
	 reg_swap1 <= 1'b0;
	else
	if(flag1& flag2)
	reg_swap1 <= first_swap  | (~first&(( ((kp_reg == kn_reg)& (~cnt163_equal_0_reg)) | ((kn_reg == 1'b0) &(cnt163_equal_0_reg))    )));  
	

always@(posedge clk)
	if(flag2)	
	reg_swap2 <= (kp == kn); 	
	else
	 reg_swap2 <= 1'b0;
	
	 	 	 
	
/******************************************
									counter 
*******************************************/
always@(posedge clk)
	if(~rst)
		cnt163 <= 8'd0;
	else
	if(cnt163_set)
		cnt163 <= 8'd162;
  else
	if(cnt_51_set)	
	  cnt163 <= 8'd110;		
	else
	if(cnt163_dec)
		cnt163 <= cnt163 - 1'b1;

				
always@(posedge clk)
	if(~rst | cnt8_clr)
		cnt8 <= 3'd0;
	else 
	  cnt8 <= cnt8 + 1'b1;		



/******************************************
						data store	registers	(shift)	 
*******************************************/
			
always@(posedge clk)
	if(data_en)
		reg_Rb <= din;
		
always@(posedge clk)
	if(data_en)
		k <= reg_Rb;		

always@(posedge clk)
	if(data_en)
		reg_Ry <= k;	

always@(posedge clk)
	if(data_en)
		reg_Rx <= reg_Ry;	


		
/******************************************
						reg_2_cores
*******************************************/		




	
always@(posedge clk)
	if(Ry_en)
		Ry <= reg_Ry;
	else
	if(Ry_set_clr)
		Ry <= 163'd1;
	else	
		Ry <= 163'd0;
		
always@(posedge clk)
	if(Rx_rst)
		Rx <= 163'd0;
	else
		Rx <= reg_Rx;

always@(posedge clk)
	cnt163_equal_0_reg <= cnt163_equal_0;
		
assign Rb = reg_Rb;
						
assign cnt163_equal_0 = (cnt163==0)? 1 : 0;
					
//assign swap1 = first_swap  | (~first&(( ((kp_reg == kn_reg)& (~cnt163_equal_0_reg)) | ((kn_reg == 1'b0) &(cnt163_equal_0_reg))    ))); 
//assign swap2 = (kp == kn);

assign loop_flag1 = (cnt8 == 3'b100)? 1'b1 : 1'b0;
always@(posedge clk)
		loop_flag2 <= loop_flag1;

always@(posedge clk)
		loop_flag3 <= loop_flag2;		
/////////////////////////////////////////////////////////
/******************************************
								state machine 
*******************************************/

always@(posedge clk)
	if(~rst)
		state <= IDLE;
	else
		state <= next_state;
		
always@(*)
begin
	Ry_en = 1'b0;
//	Rb_en = 1'b0;
//	Rx_en = 1'b0;
	Ry_set_clr = 1'b0;
	flag1 = 1'b0;
	flag2 = 1'b0;
	cnt163_dec = 1'b0;	
	cnt8_clr = 1'b0;
	cnt163_set = 1'b0;
  cnt_51_set = 1'b0;
  next_state = state;
  cores_en = 1'b0;
	Rx_rst = 1'b0;
	flag1_hold = 1'b0;
	first_swap = 1'b0;
	first = 1'b0;
	case(state)
	IDLE :	begin
						if(data_en)
							begin
								next_state = DATAIN;	
							end
						Ry_en = 1'b1;	
					end		
	DATAIN:			
							if(~data_en)
								begin
									next_state = CYCLE1;
									cores_en = 1'b1;
								end	
						
	CYCLE1:
					begin
							next_state = CYCLE2;
							Ry_set_clr = 1'b0;
							//Rx_en = 1'b1;
						end					
	CYCLE2:
						begin
							next_state = CYCLE3;
							Ry_set_clr = 1'b0;
							//Rx_en = 1'b1;
						end			
	
	CYCLE3: begin
						next_state = CYCLE4;
						Ry_set_clr = 1'b1;
						Rx_rst = 1'b1;
					end
	CYCLE4: begin
						Ry_set_clr = 1'b0;
						flag1 = 1'b1;
						next_state = LP1;
						first = 1'b1;
						if(k[161])
						first_swap = 1'b1;
					end									
															
	LP1:	begin
						flag1 = 1'b1;
						next_state = LP2;
						first = 1'b1;
						if(k[161])
						first_swap = 1'b1;
					end		
	LP2: begin
					flag1 = 1'b1;
					cnt8_clr = 1'b1;
					cnt163_set = 1'b1;
					first = 1'b1;
					if(k[161])
					first_swap = 1'b1;
					next_state = FIRSTLOOP;
				end	
	
	FIRSTLOOP:	begin
								flag1 = 1'b1;
								first = 1'b1;
								if(k[161])
								first_swap = 1'b1;
								if(loop_flag1)
									cnt163_dec = 1'b1;
							
									if(loop_flag3)
									begin
										first = 1'b0;
										next_state = LOOPMID;
										first_swap = 1'b0;
										flag2 = 1'b1;
									end	
							end
							
	LOOPSTART: 	begin
									flag1 = 1'b1;
								if(loop_flag1)
									 cnt163_dec = 1'b1;

									if(loop_flag3)
									begin
									next_state = LOOPMID;	
									flag2 = 1'b1;	
								end
								end
	LOOPMID: 	begin
								flag1 = 1'b1;
								if(cnt163 == 8'd0)
									begin
										next_state = NOPLOOP;
										cnt_51_set = 1'b1;
											flag1_hold = 1'b1;
									end	
								else	
									next_state = LOOPSTART;
							end
							
								
NOPLOOP:		begin
							flag1_hold = 1'b1;
							cnt163_dec = 1'b1;	
							if(cnt163 == 8'd0)
								begin
									Ry_en = 1'b1;
									next_state = RYENABLE;
								end	
						end

RYENABLE: 
					begin	
						Ry_en = 1'b1;
						flag1_hold = 1'b1;
						next_state = IDLE;
					end
																
	endcase
end
							 		


/////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
always@(posedge clk)

		kn_reg <= kn;

always@(*)
	case(cnt163)
		8'd0: kn = k[0];
8'd1: kn = k[1];
8'd2: kn = k[2];
8'd3: kn = k[3];
8'd4: kn = k[4];
8'd5: kn = k[5];
8'd6: kn = k[6];
8'd7: kn = k[7];
8'd8: kn = k[8];
8'd9: kn = k[9];
8'd10: kn = k[10];
8'd11: kn = k[11];
8'd12: kn = k[12];
8'd13: kn = k[13];
8'd14: kn = k[14];
8'd15: kn = k[15];
8'd16: kn = k[16];
8'd17: kn = k[17];
8'd18: kn = k[18];
8'd19: kn = k[19];
8'd20: kn = k[20];
8'd21: kn = k[21];
8'd22: kn = k[22];
8'd23: kn = k[23];
8'd24: kn = k[24];
8'd25: kn = k[25];
8'd26: kn = k[26];
8'd27: kn = k[27];
8'd28: kn = k[28];
8'd29: kn = k[29];
8'd30: kn = k[30];
8'd31: kn = k[31];
8'd32: kn = k[32];
8'd33: kn = k[33];
8'd34: kn = k[34];
8'd35: kn = k[35];
8'd36: kn = k[36];
8'd37: kn = k[37];
8'd38: kn = k[38];
8'd39: kn = k[39];
8'd40: kn = k[40];
8'd41: kn = k[41];
8'd42: kn = k[42];
8'd43: kn = k[43];
8'd44: kn = k[44];
8'd45: kn = k[45];
8'd46: kn = k[46];
8'd47: kn = k[47];
8'd48: kn = k[48];
8'd49: kn = k[49];
8'd50: kn = k[50];
8'd51: kn = k[51];
8'd52: kn = k[52];
8'd53: kn = k[53];
8'd54: kn = k[54];
8'd55: kn = k[55];
8'd56: kn = k[56];
8'd57: kn = k[57];
8'd58: kn = k[58];
8'd59: kn = k[59];
8'd60: kn = k[60];
8'd61: kn = k[61];
8'd62: kn = k[62];
8'd63: kn = k[63];
8'd64: kn = k[64];
8'd65: kn = k[65];
8'd66: kn = k[66];
8'd67: kn = k[67];
8'd68: kn = k[68];
8'd69: kn = k[69];
8'd70: kn = k[70];
8'd71: kn = k[71];
8'd72: kn = k[72];
8'd73: kn = k[73];
8'd74: kn = k[74];
8'd75: kn = k[75];
8'd76: kn = k[76];
8'd77: kn = k[77];
8'd78: kn = k[78];
8'd79: kn = k[79];
8'd80: kn = k[80];
8'd81: kn = k[81];
8'd82: kn = k[82];
8'd83: kn = k[83];
8'd84: kn = k[84];
8'd85: kn = k[85];
8'd86: kn = k[86];
8'd87: kn = k[87];
8'd88: kn = k[88];
8'd89: kn = k[89];
8'd90: kn = k[90];
8'd91: kn = k[91];
8'd92: kn = k[92];
8'd93: kn = k[93];
8'd94: kn = k[94];
8'd95: kn = k[95];
8'd96: kn = k[96];
8'd97: kn = k[97];
8'd98: kn = k[98];
8'd99: kn = k[99];
8'd100: kn = k[100];
8'd101: kn = k[101];
8'd102: kn = k[102];
8'd103: kn = k[103];
8'd104: kn = k[104];
8'd105: kn = k[105];
8'd106: kn = k[106];
8'd107: kn = k[107];
8'd108: kn = k[108];
8'd109: kn = k[109];
8'd110: kn = k[110];
8'd111: kn = k[111];
8'd112: kn = k[112];
8'd113: kn = k[113];
8'd114: kn = k[114];
8'd115: kn = k[115];
8'd116: kn = k[116];
8'd117: kn = k[117];
8'd118: kn = k[118];
8'd119: kn = k[119];
8'd120: kn = k[120];
8'd121: kn = k[121];
8'd122: kn = k[122];
8'd123: kn = k[123];
8'd124: kn = k[124];
8'd125: kn = k[125];
8'd126: kn = k[126];
8'd127: kn = k[127];
8'd128: kn = k[128];
8'd129: kn = k[129];
8'd130: kn = k[130];
8'd131: kn = k[131];
8'd132: kn = k[132];
8'd133: kn = k[133];
8'd134: kn = k[134];
8'd135: kn = k[135];
8'd136: kn = k[136];
8'd137: kn = k[137];
8'd138: kn = k[138];
8'd139: kn = k[139];
8'd140: kn = k[140];
8'd141: kn = k[141];
8'd142: kn = k[142];
8'd143: kn = k[143];
8'd144: kn = k[144];
8'd145: kn = k[145];
8'd146: kn = k[146];
8'd147: kn = k[147];
8'd148: kn = k[148];
8'd149: kn = k[149];
8'd150: kn = k[150];
8'd151: kn = k[151];
8'd152: kn = k[152];
8'd153: kn = k[153];
8'd154: kn = k[154];
8'd155: kn = k[155];
8'd156: kn = k[156];
8'd157: kn = k[157];
8'd158: kn = k[158];
8'd159: kn = k[159];
8'd160: kn = k[160];
8'd161: kn = k[161];
default: kn = k[162];
endcase

always@(posedge clk)
kp_reg = kp;

always@(*)
case(cnt163-1'b1)
8'd0: kp = k[0];
8'd1: kp = k[1];
8'd2: kp = k[2];
8'd3: kp = k[3];
8'd4: kp = k[4];
8'd5: kp = k[5];
8'd6: kp = k[6];
8'd7: kp = k[7];
8'd8: kp = k[8];
8'd9: kp = k[9];
8'd10: kp = k[10];
8'd11: kp = k[11];
8'd12: kp = k[12];
8'd13: kp = k[13];
8'd14: kp = k[14];
8'd15: kp = k[15];
8'd16: kp = k[16];
8'd17: kp = k[17];
8'd18: kp = k[18];
8'd19: kp = k[19];
8'd20: kp = k[20];
8'd21: kp = k[21];
8'd22: kp = k[22];
8'd23: kp = k[23];
8'd24: kp = k[24];
8'd25: kp = k[25];
8'd26: kp = k[26];
8'd27: kp = k[27];
8'd28: kp = k[28];
8'd29: kp = k[29];
8'd30: kp = k[30];
8'd31: kp = k[31];
8'd32: kp = k[32];
8'd33: kp = k[33];
8'd34: kp = k[34];
8'd35: kp = k[35];
8'd36: kp = k[36];
8'd37: kp = k[37];
8'd38: kp = k[38];
8'd39: kp = k[39];
8'd40: kp = k[40];
8'd41: kp = k[41];
8'd42: kp = k[42];
8'd43: kp = k[43];
8'd44: kp = k[44];
8'd45: kp = k[45];
8'd46: kp = k[46];
8'd47: kp = k[47];
8'd48: kp = k[48];
8'd49: kp = k[49];
8'd50: kp = k[50];
8'd51: kp = k[51];
8'd52: kp = k[52];
8'd53: kp = k[53];
8'd54: kp = k[54];
8'd55: kp = k[55];
8'd56: kp = k[56];
8'd57: kp = k[57];
8'd58: kp = k[58];
8'd59: kp = k[59];
8'd60: kp = k[60];
8'd61: kp = k[61];
8'd62: kp = k[62];
8'd63: kp = k[63];
8'd64: kp = k[64];
8'd65: kp = k[65];
8'd66: kp = k[66];
8'd67: kp = k[67];
8'd68: kp = k[68];
8'd69: kp = k[69];
8'd70: kp = k[70];
8'd71: kp = k[71];
8'd72: kp = k[72];
8'd73: kp = k[73];
8'd74: kp = k[74];
8'd75: kp = k[75];
8'd76: kp = k[76];
8'd77: kp = k[77];
8'd78: kp = k[78];
8'd79: kp = k[79];
8'd80: kp = k[80];
8'd81: kp = k[81];
8'd82: kp = k[82];
8'd83: kp = k[83];
8'd84: kp = k[84];
8'd85: kp = k[85];
8'd86: kp = k[86];
8'd87: kp = k[87];
8'd88: kp = k[88];
8'd89: kp = k[89];
8'd90: kp = k[90];
8'd91: kp = k[91];
8'd92: kp = k[92];
8'd93: kp = k[93];
8'd94: kp = k[94];
8'd95: kp = k[95];
8'd96: kp = k[96];
8'd97: kp = k[97];
8'd98: kp = k[98];
8'd99: kp = k[99];
8'd100: kp = k[100];
8'd101: kp = k[101];
8'd102: kp = k[102];
8'd103: kp = k[103];
8'd104: kp = k[104];
8'd105: kp = k[105];
8'd106: kp = k[106];
8'd107: kp = k[107];
8'd108: kp = k[108];
8'd109: kp = k[109];
8'd110: kp = k[110];
8'd111: kp = k[111];
8'd112: kp = k[112];
8'd113: kp = k[113];
8'd114: kp = k[114];
8'd115: kp = k[115];
8'd116: kp = k[116];
8'd117: kp = k[117];
8'd118: kp = k[118];
8'd119: kp = k[119];
8'd120: kp = k[120];
8'd121: kp = k[121];
8'd122: kp = k[122];
8'd123: kp = k[123];
8'd124: kp = k[124];
8'd125: kp = k[125];
8'd126: kp = k[126];
8'd127: kp = k[127];
8'd128: kp = k[128];
8'd129: kp = k[129];
8'd130: kp = k[130];
8'd131: kp = k[131];
8'd132: kp = k[132];
8'd133: kp = k[133];
8'd134: kp = k[134];
8'd135: kp = k[135];
8'd136: kp = k[136];
8'd137: kp = k[137];
8'd138: kp = k[138];
8'd139: kp = k[139];
8'd140: kp = k[140];
8'd141: kp = k[141];
8'd142: kp = k[142];
8'd143: kp = k[143];
8'd144: kp = k[144];
8'd145: kp = k[145];
8'd146: kp = k[146];
8'd147: kp = k[147];
8'd148: kp = k[148];
8'd149: kp = k[149];
8'd150: kp = k[150];
8'd151: kp = k[151];
8'd152: kp = k[152];
8'd153: kp = k[153];
8'd154: kp = k[154];
8'd155: kp = k[155];
8'd156: kp = k[156];
8'd157: kp = k[157];
8'd158: kp = k[158];
8'd159: kp = k[159];
8'd160: kp = k[160];
8'd161: kp = k[161];
default: kp = k[162];
endcase
	
endmodule
