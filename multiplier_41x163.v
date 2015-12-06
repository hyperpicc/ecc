//field multiplier 41by163
//April 21, 2009
//Yu Zhang
//yu.zhang100@gmail.com
//verified: y
module multiplier_41x163(A, B, C);
			input [40:0]A;
			input [162:0]B;
			output [202:0]C;
			wire [202:0]C;
//Level0
			wire [1:0]L0_ins0_A; wire [162:0]L0_ins0_B; wire [163:0]L0_ins0_C;
			wire [1:0]L0_ins1_A; wire [162:0]L0_ins1_B; wire [163:0]L0_ins1_C;
			wire [1:0]L0_ins2_A; wire [162:0]L0_ins2_B; wire [163:0]L0_ins2_C;
			wire [1:0]L0_ins3_A; wire [162:0]L0_ins3_B; wire [163:0]L0_ins3_C;
			wire [1:0]L0_ins4_A; wire [162:0]L0_ins4_B; wire [163:0]L0_ins4_C;
			wire [1:0]L0_ins5_A; wire [162:0]L0_ins5_B; wire [163:0]L0_ins5_C;
			wire [1:0]L0_ins6_A; wire [162:0]L0_ins6_B; wire [163:0]L0_ins6_C;
			wire [1:0]L0_ins7_A; wire [162:0]L0_ins7_B; wire [163:0]L0_ins7_C;
			wire [1:0]L0_ins8_A; wire [162:0]L0_ins8_B; wire [163:0]L0_ins8_C;
			wire [1:0]L0_ins9_A; wire [162:0]L0_ins9_B; wire [163:0]L0_ins9_C;
			wire [1:0]L0_ins10_A; wire [162:0]L0_ins10_B; wire [163:0]L0_ins10_C;
			wire [1:0]L0_ins11_A; wire [162:0]L0_ins11_B; wire [163:0]L0_ins11_C;
			wire [1:0]L0_ins12_A; wire [162:0]L0_ins12_B; wire [163:0]L0_ins12_C;
			wire [1:0]L0_ins13_A; wire [162:0]L0_ins13_B; wire [163:0]L0_ins13_C;
			wire [1:0]L0_ins14_A; wire [162:0]L0_ins14_B; wire [163:0]L0_ins14_C;
			wire [1:0]L0_ins15_A; wire [162:0]L0_ins15_B; wire [163:0]L0_ins15_C;
			wire [1:0]L0_ins16_A; wire [162:0]L0_ins16_B; wire [163:0]L0_ins16_C;
			wire [1:0]L0_ins17_A; wire [162:0]L0_ins17_B; wire [163:0]L0_ins17_C;
			wire [1:0]L0_ins18_A; wire [162:0]L0_ins18_B; wire [163:0]L0_ins18_C;
			wire [1:0]L0_ins19_A; wire [162:0]L0_ins19_B; wire [163:0]L0_ins19_C;			

//Level1
			wire [163:0]L1_ins0_A; wire [163:0]L1_ins0_B; wire [165:0]L1_ins0_C;
			wire [163:0]L1_ins1_A; wire [163:0]L1_ins1_B; wire [165:0]L1_ins1_C;
			wire [163:0]L1_ins2_A; wire [163:0]L1_ins2_B; wire [165:0]L1_ins2_C;
			wire [163:0]L1_ins3_A; wire [163:0]L1_ins3_B; wire [165:0]L1_ins3_C;
			wire [163:0]L1_ins4_A; wire [163:0]L1_ins4_B; wire [165:0]L1_ins4_C;
			wire [163:0]L1_ins5_A; wire [163:0]L1_ins5_B; wire [165:0]L1_ins5_C;
			wire [163:0]L1_ins6_A; wire [163:0]L1_ins6_B; wire [165:0]L1_ins6_C;
			wire [163:0]L1_ins7_A; wire [163:0]L1_ins7_B; wire [165:0]L1_ins7_C;
			wire [163:0]L1_ins8_A; wire [163:0]L1_ins8_B; wire [165:0]L1_ins8_C;
			wire [163:0]L1_ins9_A; wire [163:0]L1_ins9_B; wire [165:0]L1_ins9_C;

//Level2
			wire [165:0]L2_ins0_A; wire [165:0]L2_ins0_B; wire [169:0]L2_ins0_C;
			wire [165:0]L2_ins1_A; wire [165:0]L2_ins1_B; wire [169:0]L2_ins1_C;
			wire [165:0]L2_ins2_A; wire [165:0]L2_ins2_B; wire [169:0]L2_ins2_C;
			wire [165:0]L2_ins3_A; wire [165:0]L2_ins3_B; wire [169:0]L2_ins3_C;
			wire [165:0]L2_ins4_A; wire [165:0]L2_ins4_B; wire [169:0]L2_ins4_C;

//Level3
			wire [169:0]L3_ins0_A; wire [169:0]L3_ins0_B; wire [177:0]L3_ins0_C;
			wire [169:0]L3_ins1_A; wire [169:0]L3_ins1_B; wire [177:0]L3_ins1_C;
			wire [169:0]L3S_ins0_A; wire [162:0]L3S_ins0_B;  wire L3S_ins0_a40; wire [170:0]L3S_ins0_C;

//Level4						
			wire [177:0]L4_ins0_A; wire [177:0]L4_ins0_B; wire [193:0]L4_ins0_C;
			
//Level5
			wire	[193:0]L5_ins0_A; wire [170:0]L5_ins0_B; wire [202:0]L5_ins0_C;		


									
//Level0
					assign L0_ins0_A[1:0]= A[1:0];
					assign L0_ins0_B[162:0]= B[162:0];
					assign L0_ins1_A[1:0]= A[3:2];
					assign L0_ins1_B[162:0]= B[162:0];
					assign L0_ins2_A[1:0]= A[5:4];
					assign L0_ins2_B[162:0]= B[162:0];
					assign L0_ins3_A[1:0]= A[7:6];
					assign L0_ins3_B[162:0]= B[162:0];
					assign L0_ins4_A[1:0]= A[9:8];
					assign L0_ins4_B[162:0]= B[162:0];
					assign L0_ins5_A[1:0]= A[11:10];
					assign L0_ins5_B[162:0]= B[162:0];
					assign L0_ins6_A[1:0]= A[13:12];
					assign L0_ins6_B[162:0]= B[162:0];
					assign L0_ins7_A[1:0]= A[15:14];
					assign L0_ins7_B[162:0]= B[162:0];
					assign L0_ins8_A[1:0]= A[17:16];
					assign L0_ins8_B[162:0]= B[162:0];
					assign L0_ins9_A[1:0]= A[19:18];
					assign L0_ins9_B[162:0]= B[162:0];
					assign L0_ins10_A[1:0]= A[21:20];
					assign L0_ins10_B[162:0]= B[162:0];
					assign L0_ins11_A[1:0]= A[23:22];
					assign L0_ins11_B[162:0]= B[162:0];
					assign L0_ins12_A[1:0]= A[25:24];
					assign L0_ins12_B[162:0]= B[162:0];
					assign L0_ins13_A[1:0]= A[27:26];
					assign L0_ins13_B[162:0]= B[162:0];
					assign L0_ins14_A[1:0]= A[29:28];
					assign L0_ins14_B[162:0]= B[162:0];
					assign L0_ins15_A[1:0]= A[31:30];
					assign L0_ins15_B[162:0]= B[162:0];
					assign L0_ins16_A[1:0]= A[33:32];
					assign L0_ins16_B[162:0]= B[162:0];
					assign L0_ins17_A[1:0]= A[35:34];
					assign L0_ins17_B[162:0]= B[162:0];
					assign L0_ins18_A[1:0]= A[37:36];
					assign L0_ins18_B[162:0]= B[162:0];
					assign L0_ins19_A[1:0]= A[39:38];
					assign L0_ins19_B[162:0]= B[162:0];		
			


					level0 L0_ins0(L0_ins0_A, L0_ins0_B, L0_ins0_C);
					level0 L0_ins1(L0_ins1_A, L0_ins1_B, L0_ins1_C);
					level0 L0_ins2(L0_ins2_A, L0_ins2_B, L0_ins2_C);
					level0 L0_ins3(L0_ins3_A, L0_ins3_B, L0_ins3_C);
					level0 L0_ins4(L0_ins4_A, L0_ins4_B, L0_ins4_C);
					level0 L0_ins5(L0_ins5_A, L0_ins5_B, L0_ins5_C);
					level0 L0_ins6(L0_ins6_A, L0_ins6_B, L0_ins6_C);
					level0 L0_ins7(L0_ins7_A, L0_ins7_B, L0_ins7_C);
					level0 L0_ins8(L0_ins8_A, L0_ins8_B, L0_ins8_C);
					level0 L0_ins9(L0_ins9_A, L0_ins9_B, L0_ins9_C);
					
					level0 L0_ins10(L0_ins10_A, L0_ins10_B, L0_ins10_C);
					level0 L0_ins11(L0_ins11_A, L0_ins11_B, L0_ins11_C);
					level0 L0_ins12(L0_ins12_A, L0_ins12_B, L0_ins12_C);
					level0 L0_ins13(L0_ins13_A, L0_ins13_B, L0_ins13_C);
					level0 L0_ins14(L0_ins14_A, L0_ins14_B, L0_ins14_C);
					level0 L0_ins15(L0_ins15_A, L0_ins15_B, L0_ins15_C);
					level0 L0_ins16(L0_ins16_A, L0_ins16_B, L0_ins16_C);
					level0 L0_ins17(L0_ins17_A, L0_ins17_B, L0_ins17_C);
					level0 L0_ins18(L0_ins18_A, L0_ins18_B, L0_ins18_C);
					level0 L0_ins19(L0_ins19_A, L0_ins19_B, L0_ins19_C);

//Level1
					assign L1_ins0_A[163:0]= L0_ins0_C[163:0];
					assign L1_ins0_B[163:0]= L0_ins1_C[163:0];
					assign L1_ins1_A[163:0]= L0_ins2_C[163:0];
					assign L1_ins1_B[163:0]= L0_ins3_C[163:0];
					assign L1_ins2_A[163:0]= L0_ins4_C[163:0];
					assign L1_ins2_B[163:0]= L0_ins5_C[163:0];
					assign L1_ins3_A[163:0]= L0_ins6_C[163:0];
					assign L1_ins3_B[163:0]= L0_ins7_C[163:0];
					assign L1_ins4_A[163:0]= L0_ins8_C[163:0];
					assign L1_ins4_B[163:0]= L0_ins9_C[163:0];
					assign L1_ins5_A[163:0]= L0_ins10_C[163:0];
					assign L1_ins5_B[163:0]= L0_ins11_C[163:0];
					assign L1_ins6_A[163:0]= L0_ins12_C[163:0];
					assign L1_ins6_B[163:0]= L0_ins13_C[163:0];
					assign L1_ins7_A[163:0]= L0_ins14_C[163:0];
					assign L1_ins7_B[163:0]= L0_ins15_C[163:0];
					assign L1_ins8_A[163:0]= L0_ins16_C[163:0];
					assign L1_ins8_B[163:0]= L0_ins17_C[163:0];
					assign L1_ins9_A[163:0]= L0_ins18_C[163:0];
					assign L1_ins9_B[163:0]= L0_ins19_C[163:0];
			
			
					level1 L1_ins0(L1_ins0_A, L1_ins0_B, L1_ins0_C);
					level1 L1_ins1(L1_ins1_A, L1_ins1_B, L1_ins1_C);
					level1 L1_ins2(L1_ins2_A, L1_ins2_B, L1_ins2_C);
					level1 L1_ins3(L1_ins3_A, L1_ins3_B, L1_ins3_C);
					level1 L1_ins4(L1_ins4_A, L1_ins4_B, L1_ins4_C);
					level1 L1_ins5(L1_ins5_A, L1_ins5_B, L1_ins5_C);
					level1 L1_ins6(L1_ins6_A, L1_ins6_B, L1_ins6_C);
					level1 L1_ins7(L1_ins7_A, L1_ins7_B, L1_ins7_C);
					level1 L1_ins8(L1_ins8_A, L1_ins8_B, L1_ins8_C);
					level1 L1_ins9(L1_ins9_A, L1_ins9_B, L1_ins9_C);
					
					
//Level2					
					assign L2_ins0_A[165:0]= L1_ins0_C[165:0];
					assign L2_ins0_B[165:0]= L1_ins1_C[165:0];
					assign L2_ins1_A[165:0]= L1_ins2_C[165:0];
					assign L2_ins1_B[165:0]= L1_ins3_C[165:0];
					assign L2_ins2_A[165:0]= L1_ins4_C[165:0];
					assign L2_ins2_B[165:0]= L1_ins5_C[165:0];
					assign L2_ins3_A[165:0]= L1_ins6_C[165:0];
					assign L2_ins3_B[165:0]= L1_ins7_C[165:0];
					assign L2_ins4_A[165:0]= L1_ins8_C[165:0];
					assign L2_ins4_B[165:0]= L1_ins9_C[165:0];
			
					level2 L2_ins0(L2_ins0_A, L2_ins0_B, L2_ins0_C);
					level2 L2_ins1(L2_ins1_A, L2_ins1_B, L2_ins1_C);
					level2 L2_ins2(L2_ins2_A, L2_ins2_B, L2_ins2_C);
					level2 L2_ins3(L2_ins3_A, L2_ins3_B, L2_ins3_C);
					level2 L2_ins4(L2_ins4_A, L2_ins4_B, L2_ins4_C);
					
//Level3					
					assign L3_ins0_A[169:0]= L2_ins0_C[169:0];
					assign L3_ins0_B[169:0]= L2_ins1_C[169:0];
					assign L3_ins1_A[169:0]= L2_ins2_C[169:0];
					assign L3_ins1_B[169:0]= L2_ins3_C[169:0];
					level3 L3_ins0(L3_ins0_A, L3_ins0_B, L3_ins0_C);
					level3 L3_ins1(L3_ins1_A, L3_ins1_B, L3_ins1_C);
					
					assign L3S_ins0_A[169:0]= L2_ins4_C[169:0];
					assign L3S_ins0_B[162:0]= B[162:0];
					assign L3S_ins0_a40 = A[40];
					
				  level3_special L3_special_ins0(L3S_ins0_A, L3S_ins0_B, L3S_ins0_a40, L3S_ins0_C);
				  
//Level4			
					assign L4_ins0_A[177:0]= L3_ins0_C[177:0];
					assign L4_ins0_B[177:0]= L3_ins1_C[177:0];
					level4 L4_ins0(L4_ins0_A, L4_ins0_B, L4_ins0_C);

//Level5
					assign L5_ins0_A[193:0] = L4_ins0_C[193:0];
					assign L5_ins0_B[170:0] = L3S_ins0_C[170:0];
					level5 L5_ins0(L5_ins0_A, L5_ins0_B, L5_ins0_C);
					
					
//final output
				assign C[202:0] = L5_ins0_C[202:0];					

endmodule					
