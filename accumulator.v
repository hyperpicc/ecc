//Accmulator in the multiplier
//April 21, 2009
//Yu Zhang
//yu.zhang100@gmail.com
//verified: y
		module accumulator(ACC_A,ACC_B,ACC_C,ACC_D);
			input [202:0]ACC_A;
			input [202:0]ACC_B;
			input [162:0]ACC_C;
			output[162:0]ACC_D;
			
			wire [244:0]ACC_Nc; //before reduction
			
			wire [244:0]RED245_ins0_c;
			wire [162:0]RED245_ins0_r;  

			assign ACC_Nc[0]   = ACC_A[0];
			assign ACC_Nc[1]   = ACC_A[1];
			assign ACC_Nc[2]   = ACC_A[2];
			assign ACC_Nc[3]   = ACC_A[3];
			assign ACC_Nc[4]   = ACC_A[4];
			assign ACC_Nc[5]   = ACC_A[5];
			assign ACC_Nc[6]   = ACC_A[6];
			assign ACC_Nc[7]   = ACC_A[7];
			assign ACC_Nc[8]   = ACC_A[8];
			assign ACC_Nc[9]   = ACC_A[9];
			assign ACC_Nc[10]  = ACC_A[10];
			assign ACC_Nc[11]  = ACC_A[11];
			assign ACC_Nc[12]  = ACC_A[12];
			assign ACC_Nc[13]  = ACC_A[13];
			assign ACC_Nc[14]  = ACC_A[14];
			assign ACC_Nc[15]  = ACC_A[15];
			assign ACC_Nc[16]  = ACC_A[16];
			assign ACC_Nc[17]  = ACC_A[17];
			assign ACC_Nc[18]  = ACC_A[18];
			assign ACC_Nc[19]  = ACC_A[19];
			assign ACC_Nc[20]  = ACC_A[20];
			assign ACC_Nc[21]  = ACC_A[21];
			assign ACC_Nc[22]  = ACC_A[22];
			assign ACC_Nc[23]  = ACC_A[23];
			assign ACC_Nc[24]  = ACC_A[24];
			assign ACC_Nc[25]  = ACC_A[25];
			assign ACC_Nc[26]  = ACC_A[26];
			assign ACC_Nc[27]  = ACC_A[27];
			assign ACC_Nc[28]  = ACC_A[28];
			assign ACC_Nc[29]  = ACC_A[29];
			assign ACC_Nc[30]  = ACC_A[30];
			assign ACC_Nc[31]  = ACC_A[31];
			assign ACC_Nc[32]  = ACC_A[32];
			assign ACC_Nc[33]  = ACC_A[33];
			assign ACC_Nc[34]  = ACC_A[34];
			assign ACC_Nc[35]  = ACC_A[35];
			assign ACC_Nc[36]  = ACC_A[36];
			assign ACC_Nc[37]  = ACC_A[37];
			assign ACC_Nc[38]  = ACC_A[38];
			assign ACC_Nc[39]  = ACC_A[39];
			assign ACC_Nc[40]  = ACC_A[40];
			assign ACC_Nc[41]  = ACC_A[41] ^ ACC_B[0] ;
			assign ACC_Nc[42]  = ACC_A[42] ^ ACC_B[1] ;
			assign ACC_Nc[43]  = ACC_A[43] ^ ACC_B[2] ;
			assign ACC_Nc[44]  = ACC_A[44] ^ ACC_B[3] ;
			assign ACC_Nc[45]  = ACC_A[45] ^ ACC_B[4] ;
			assign ACC_Nc[46]  = ACC_A[46] ^ ACC_B[5] ;
			assign ACC_Nc[47]  = ACC_A[47] ^ ACC_B[6] ;
			assign ACC_Nc[48]  = ACC_A[48] ^ ACC_B[7] ;
			assign ACC_Nc[49]  = ACC_A[49] ^ ACC_B[8] ;
			assign ACC_Nc[50]  = ACC_A[50] ^ ACC_B[9] ;
			assign ACC_Nc[51]  = ACC_A[51] ^ ACC_B[10] ;
			assign ACC_Nc[52]  = ACC_A[52] ^ ACC_B[11] ;
			assign ACC_Nc[53]  = ACC_A[53] ^ ACC_B[12] ;
			assign ACC_Nc[54]  = ACC_A[54] ^ ACC_B[13] ;
			assign ACC_Nc[55]  = ACC_A[55] ^ ACC_B[14] ;
			assign ACC_Nc[56]  = ACC_A[56] ^ ACC_B[15] ;
			assign ACC_Nc[57]  = ACC_A[57] ^ ACC_B[16] ;
			assign ACC_Nc[58]  = ACC_A[58] ^ ACC_B[17] ;
			assign ACC_Nc[59]  = ACC_A[59] ^ ACC_B[18] ;
			assign ACC_Nc[60]  = ACC_A[60] ^ ACC_B[19] ;
			assign ACC_Nc[61]  = ACC_A[61] ^ ACC_B[20] ;
			assign ACC_Nc[62]  = ACC_A[62] ^ ACC_B[21] ;
			assign ACC_Nc[63]  = ACC_A[63] ^ ACC_B[22] ;
			assign ACC_Nc[64]  = ACC_A[64] ^ ACC_B[23] ;
			assign ACC_Nc[65]  = ACC_A[65] ^ ACC_B[24] ;
			assign ACC_Nc[66]  = ACC_A[66] ^ ACC_B[25] ;
			assign ACC_Nc[67]  = ACC_A[67] ^ ACC_B[26] ;
			assign ACC_Nc[68]  = ACC_A[68] ^ ACC_B[27] ;
			assign ACC_Nc[69]  = ACC_A[69] ^ ACC_B[28] ;
			assign ACC_Nc[70]  = ACC_A[70] ^ ACC_B[29] ;
			assign ACC_Nc[71]  = ACC_A[71] ^ ACC_B[30] ;
			assign ACC_Nc[72]  = ACC_A[72] ^ ACC_B[31] ;
			assign ACC_Nc[73]  = ACC_A[73] ^ ACC_B[32] ;
			assign ACC_Nc[74]  = ACC_A[74] ^ ACC_B[33] ;
			assign ACC_Nc[75]  = ACC_A[75] ^ ACC_B[34] ;
			assign ACC_Nc[76]  = ACC_A[76] ^ ACC_B[35] ;
			assign ACC_Nc[77]  = ACC_A[77] ^ ACC_B[36] ;
			assign ACC_Nc[78]  = ACC_A[78] ^ ACC_B[37] ;
			assign ACC_Nc[79]  = ACC_A[79] ^ ACC_B[38] ;
			assign ACC_Nc[80]  = ACC_A[80] ^ ACC_B[39] ;
			assign ACC_Nc[81]  = ACC_A[81] ^ ACC_B[40] ;
			assign ACC_Nc[82]  = ACC_A[82] ^ ACC_B[41] ^ ACC_C[0];
			assign ACC_Nc[83]  = ACC_A[83] ^ ACC_B[42] ^ ACC_C[1];
			assign ACC_Nc[84]  = ACC_A[84] ^ ACC_B[43] ^ ACC_C[2];
			assign ACC_Nc[85]  = ACC_A[85]  ^ ACC_B[44] ^ ACC_C[3];
			assign ACC_Nc[86]  = ACC_A[86]  ^ ACC_B[45] ^ ACC_C[4];
			assign ACC_Nc[87]  = ACC_A[87]  ^ ACC_B[46] ^ ACC_C[5];
			assign ACC_Nc[88]  = ACC_A[88]  ^ ACC_B[47] ^ ACC_C[6];
			assign ACC_Nc[89]  = ACC_A[89]  ^ ACC_B[48] ^ ACC_C[7];
			assign ACC_Nc[90]  = ACC_A[90]  ^ ACC_B[49] ^ ACC_C[8];
			assign ACC_Nc[91]  = ACC_A[91]  ^ ACC_B[50] ^ ACC_C[9];
			assign ACC_Nc[92]  = ACC_A[92]  ^ ACC_B[51] ^ ACC_C[10];
			assign ACC_Nc[93]  = ACC_A[93]  ^ ACC_B[52] ^ ACC_C[11];
			assign ACC_Nc[94]  = ACC_A[94]  ^ ACC_B[53] ^ ACC_C[12];
			assign ACC_Nc[95]  = ACC_A[95]  ^ ACC_B[54] ^ ACC_C[13];
			assign ACC_Nc[96]  = ACC_A[96]  ^ ACC_B[55] ^ ACC_C[14];
			assign ACC_Nc[97]  = ACC_A[97]  ^ ACC_B[56] ^ ACC_C[15];
			assign ACC_Nc[98]  = ACC_A[98]  ^ ACC_B[57] ^ ACC_C[16];
			assign ACC_Nc[99]  = ACC_A[99]  ^ ACC_B[58] ^ ACC_C[17];
			assign ACC_Nc[100] = ACC_A[100] ^ ACC_B[59] ^ ACC_C[18];
			assign ACC_Nc[101] = ACC_A[101] ^ ACC_B[60] ^ ACC_C[19];
			assign ACC_Nc[102] = ACC_A[102] ^ ACC_B[61] ^ ACC_C[20];
			assign ACC_Nc[103] = ACC_A[103] ^ ACC_B[62] ^ ACC_C[21];
			assign ACC_Nc[104] = ACC_A[104] ^ ACC_B[63] ^ ACC_C[22];
			assign ACC_Nc[105] = ACC_A[105] ^ ACC_B[64] ^ ACC_C[23];
			assign ACC_Nc[106] = ACC_A[106] ^ ACC_B[65] ^ ACC_C[24];
			assign ACC_Nc[107] = ACC_A[107] ^ ACC_B[66] ^ ACC_C[25];
			assign ACC_Nc[108] = ACC_A[108] ^ ACC_B[67] ^ ACC_C[26];
			assign ACC_Nc[109] = ACC_A[109] ^ ACC_B[68] ^ ACC_C[27];
			assign ACC_Nc[110] = ACC_A[110] ^ ACC_B[69] ^ ACC_C[28];
			assign ACC_Nc[111] = ACC_A[111] ^ ACC_B[70] ^ ACC_C[29];
			assign ACC_Nc[112] = ACC_A[112] ^ ACC_B[71] ^ ACC_C[30];
			assign ACC_Nc[113] = ACC_A[113] ^ ACC_B[72] ^ ACC_C[31];
			assign ACC_Nc[114] = ACC_A[114] ^ ACC_B[73] ^ ACC_C[32];
			assign ACC_Nc[115] = ACC_A[115] ^ ACC_B[74] ^ ACC_C[33];
			assign ACC_Nc[116] = ACC_A[116] ^ ACC_B[75] ^ ACC_C[34];
			assign ACC_Nc[117] = ACC_A[117] ^ ACC_B[76] ^ ACC_C[35];
			assign ACC_Nc[118] = ACC_A[118] ^ ACC_B[77] ^ ACC_C[36];
			assign ACC_Nc[119] = ACC_A[119] ^ ACC_B[78] ^ ACC_C[37];
			assign ACC_Nc[120] = ACC_A[120] ^ ACC_B[79] ^ ACC_C[38];
			assign ACC_Nc[121] = ACC_A[121] ^ ACC_B[80] ^ ACC_C[39];
			assign ACC_Nc[122] = ACC_A[122] ^ ACC_B[81] ^ ACC_C[40];
			assign ACC_Nc[123] = ACC_A[123] ^ ACC_B[82] ^ ACC_C[41];
			assign ACC_Nc[124] = ACC_A[124] ^ ACC_B[83] ^ ACC_C[42];
			assign ACC_Nc[125] = ACC_A[125] ^ ACC_B[84] ^ ACC_C[43];
			assign ACC_Nc[126] = ACC_A[126] ^ ACC_B[85] ^ ACC_C[44];
			assign ACC_Nc[127] = ACC_A[127] ^ ACC_B[86] ^ ACC_C[45];
			assign ACC_Nc[128] = ACC_A[128] ^ ACC_B[87] ^ ACC_C[46];
			assign ACC_Nc[129] = ACC_A[129] ^ ACC_B[88] ^ ACC_C[47];
			assign ACC_Nc[130] = ACC_A[130] ^ ACC_B[89] ^ ACC_C[48];
			assign ACC_Nc[131] = ACC_A[131] ^ ACC_B[90] ^ ACC_C[49];
			assign ACC_Nc[132] = ACC_A[132] ^ ACC_B[91] ^ ACC_C[50];
			assign ACC_Nc[133] = ACC_A[133] ^ ACC_B[92] ^ ACC_C[51];
			assign ACC_Nc[134] = ACC_A[134] ^ ACC_B[93] ^ ACC_C[52];
			assign ACC_Nc[135] = ACC_A[135] ^ ACC_B[94] ^ ACC_C[53];
			assign ACC_Nc[136] = ACC_A[136] ^ ACC_B[95] ^ ACC_C[54];
			assign ACC_Nc[137] = ACC_A[137] ^ ACC_B[96] ^ ACC_C[55];
			assign ACC_Nc[138] = ACC_A[138] ^ ACC_B[97] ^ ACC_C[56];
			assign ACC_Nc[139] = ACC_A[139] ^ ACC_B[98] ^ ACC_C[57];
			assign ACC_Nc[140] = ACC_A[140] ^ ACC_B[99] ^ ACC_C[58];
			assign ACC_Nc[141] = ACC_A[141] ^ ACC_B[100] ^ ACC_C[59];
			assign ACC_Nc[142] = ACC_A[142] ^ ACC_B[101] ^ ACC_C[60];
			assign ACC_Nc[143] = ACC_A[143] ^ ACC_B[102] ^ ACC_C[61];
			assign ACC_Nc[144] = ACC_A[144] ^ ACC_B[103] ^ ACC_C[62];
			assign ACC_Nc[145] = ACC_A[145] ^ ACC_B[104] ^ ACC_C[63];
			assign ACC_Nc[146] = ACC_A[146] ^ ACC_B[105] ^ ACC_C[64];
			assign ACC_Nc[147] = ACC_A[147] ^ ACC_B[106] ^ ACC_C[65];
			assign ACC_Nc[148] = ACC_A[148] ^ ACC_B[107] ^ ACC_C[66];
			assign ACC_Nc[149] = ACC_A[149] ^ ACC_B[108] ^ ACC_C[67];
			assign ACC_Nc[150] = ACC_A[150] ^ ACC_B[109] ^ ACC_C[68];
			assign ACC_Nc[151] = ACC_A[151] ^ ACC_B[110] ^ ACC_C[69];
			assign ACC_Nc[152] = ACC_A[152] ^ ACC_B[111] ^ ACC_C[70];
			assign ACC_Nc[153] = ACC_A[153] ^ ACC_B[112] ^ ACC_C[71];
			assign ACC_Nc[154] = ACC_A[154] ^ ACC_B[113] ^ ACC_C[72];
			assign ACC_Nc[155] = ACC_A[155] ^ ACC_B[114] ^ ACC_C[73];
			assign ACC_Nc[156] = ACC_A[156] ^ ACC_B[115] ^ ACC_C[74];
			assign ACC_Nc[157] = ACC_A[157] ^ ACC_B[116] ^ ACC_C[75];
			assign ACC_Nc[158] = ACC_A[158] ^ ACC_B[117] ^ ACC_C[76];
			assign ACC_Nc[159] = ACC_A[159] ^ ACC_B[118] ^ ACC_C[77];
			assign ACC_Nc[160] = ACC_A[160] ^ ACC_B[119] ^ ACC_C[78];
			assign ACC_Nc[161] = ACC_A[161] ^ ACC_B[120] ^ ACC_C[79];
			assign ACC_Nc[162] = ACC_A[162] ^ ACC_B[121] ^ ACC_C[80];
			assign ACC_Nc[163] = ACC_A[163] ^ ACC_B[122] ^ ACC_C[81];
			assign ACC_Nc[164] = ACC_A[164] ^ ACC_B[123] ^ ACC_C[82];
			assign ACC_Nc[165] = ACC_A[165] ^ ACC_B[124] ^ ACC_C[83];
			assign ACC_Nc[166] = ACC_A[166] ^ ACC_B[125] ^ ACC_C[84];
			assign ACC_Nc[167] = ACC_A[167] ^ ACC_B[126] ^ ACC_C[85];
			assign ACC_Nc[168] = ACC_A[168] ^ ACC_B[127] ^ ACC_C[86];
			assign ACC_Nc[169] = ACC_A[169] ^ ACC_B[128] ^ ACC_C[87];
			assign ACC_Nc[170] = ACC_A[170] ^ ACC_B[129] ^ ACC_C[88];
			assign ACC_Nc[171] = ACC_A[171] ^ ACC_B[130] ^ ACC_C[89];
			assign ACC_Nc[172] = ACC_A[172] ^ ACC_B[131] ^ ACC_C[90];
			assign ACC_Nc[173] = ACC_A[173] ^ ACC_B[132] ^ ACC_C[91];
			assign ACC_Nc[174] = ACC_A[174] ^ ACC_B[133] ^ ACC_C[92];
			assign ACC_Nc[175] = ACC_A[175] ^ ACC_B[134] ^ ACC_C[93];
			assign ACC_Nc[176] = ACC_A[176] ^ ACC_B[135] ^ ACC_C[94];
			assign ACC_Nc[177] = ACC_A[177] ^ ACC_B[136] ^ ACC_C[95];
			assign ACC_Nc[178] = ACC_A[178] ^ ACC_B[137] ^ ACC_C[96];
			assign ACC_Nc[179] = ACC_A[179] ^ ACC_B[138] ^ ACC_C[97];
			assign ACC_Nc[180] = ACC_A[180] ^ ACC_B[139] ^ ACC_C[98];
			assign ACC_Nc[181] = ACC_A[181] ^ ACC_B[140] ^ ACC_C[99];
			assign ACC_Nc[182] = ACC_A[182] ^ ACC_B[141] ^ ACC_C[100];
			assign ACC_Nc[183] = ACC_A[183] ^ ACC_B[142] ^ ACC_C[101];
			assign ACC_Nc[184] = ACC_A[184] ^ ACC_B[143] ^ ACC_C[102];
			assign ACC_Nc[185] = ACC_A[185] ^ ACC_B[144] ^ ACC_C[103];
			assign ACC_Nc[186] = ACC_A[186] ^ ACC_B[145] ^ ACC_C[104];
			assign ACC_Nc[187] = ACC_A[187] ^ ACC_B[146] ^ ACC_C[105];
			assign ACC_Nc[188] = ACC_A[188] ^ ACC_B[147] ^ ACC_C[106];
			assign ACC_Nc[189] = ACC_A[189] ^ ACC_B[148] ^ ACC_C[107];
			assign ACC_Nc[190] = ACC_A[190] ^ ACC_B[149] ^ ACC_C[108];
			assign ACC_Nc[191] = ACC_A[191] ^ ACC_B[150] ^ ACC_C[109];
			assign ACC_Nc[192] = ACC_A[192] ^ ACC_B[151] ^ ACC_C[110];
			assign ACC_Nc[193] = ACC_A[193] ^ ACC_B[152] ^ ACC_C[111];
			assign ACC_Nc[194] = ACC_A[194] ^ ACC_B[153] ^ ACC_C[112];
			assign ACC_Nc[195] = ACC_A[195] ^ ACC_B[154] ^ ACC_C[113];
			assign ACC_Nc[196] = ACC_A[196] ^ ACC_B[155] ^ ACC_C[114];
			assign ACC_Nc[197] = ACC_A[197] ^ ACC_B[156] ^ ACC_C[115];
			assign ACC_Nc[198] = ACC_A[198] ^ ACC_B[157] ^ ACC_C[116];
			assign ACC_Nc[199] = ACC_A[199] ^ ACC_B[158] ^ ACC_C[117];
			assign ACC_Nc[200] = ACC_A[200] ^ ACC_B[159] ^ ACC_C[118];
			assign ACC_Nc[201] = ACC_A[201] ^ ACC_B[160] ^ ACC_C[119];
			assign ACC_Nc[202] = ACC_A[202] ^ ACC_B[161] ^ ACC_C[120];
			assign ACC_Nc[203] = 							ACC_B[162] ^ ACC_C[121] ;
			assign ACC_Nc[204] = 							ACC_B[163] ^ ACC_C[122] ;
			assign ACC_Nc[205] = 							ACC_B[164] ^ ACC_C[123] ;
			assign ACC_Nc[206] = 							ACC_B[165] ^ ACC_C[124] ;
			assign ACC_Nc[207] = 							ACC_B[166] ^ ACC_C[125] ;
			assign ACC_Nc[208] = 							ACC_B[167] ^ ACC_C[126] ;
			assign ACC_Nc[209] = 							ACC_B[168] ^ ACC_C[127] ;
			assign ACC_Nc[210] = 							ACC_B[169] ^ ACC_C[128] ;
			assign ACC_Nc[211] = 							ACC_B[170] ^ ACC_C[129] ;
			assign ACC_Nc[212] = 							ACC_B[171] ^ ACC_C[130] ;
			assign ACC_Nc[213] = 							ACC_B[172] ^ ACC_C[131] ;
			assign ACC_Nc[214] = 							ACC_B[173] ^ ACC_C[132] ;
			assign ACC_Nc[215] = 							ACC_B[174] ^ ACC_C[133] ;
			assign ACC_Nc[216] = 							ACC_B[175] ^ ACC_C[134] ;
			assign ACC_Nc[217] = 							ACC_B[176] ^ ACC_C[135] ;
			assign ACC_Nc[218] = 							ACC_B[177] ^ ACC_C[136] ;
			assign ACC_Nc[219] = 							ACC_B[178] ^ ACC_C[137] ;
			assign ACC_Nc[220] = 							ACC_B[179] ^ ACC_C[138] ;
			assign ACC_Nc[221] = 							ACC_B[180] ^ ACC_C[139] ;
			assign ACC_Nc[222] = 							ACC_B[181] ^ ACC_C[140] ;
			assign ACC_Nc[223] = 							ACC_B[182] ^ ACC_C[141] ;
			assign ACC_Nc[224] = 							ACC_B[183] ^ ACC_C[142] ;
			assign ACC_Nc[225] = 							ACC_B[184] ^ ACC_C[143] ;
			assign ACC_Nc[226] = 							ACC_B[185] ^ ACC_C[144] ;
			assign ACC_Nc[227] = 							ACC_B[186] ^ ACC_C[145] ;
			assign ACC_Nc[228] = 							ACC_B[187] ^ ACC_C[146] ;
			assign ACC_Nc[229] = 							ACC_B[188] ^ ACC_C[147] ;
			assign ACC_Nc[230] = 							ACC_B[189] ^ ACC_C[148] ;
			assign ACC_Nc[231] = 							ACC_B[190] ^ ACC_C[149] ;
			assign ACC_Nc[232] = 							ACC_B[191] ^ ACC_C[150] ;
			assign ACC_Nc[233] = 							ACC_B[192] ^ ACC_C[151] ;
			assign ACC_Nc[234] = 							ACC_B[193] ^ ACC_C[152] ;
			assign ACC_Nc[235] = 							ACC_B[194] ^ ACC_C[153] ;
			assign ACC_Nc[236] = 							ACC_B[195] ^ ACC_C[154] ;
			assign ACC_Nc[237] = 							ACC_B[196] ^ ACC_C[155] ;
			assign ACC_Nc[238] = 							ACC_B[197] ^ ACC_C[156] ;
			assign ACC_Nc[239] = 							ACC_B[198] ^ ACC_C[157] ;
			assign ACC_Nc[240] = 							ACC_B[199] ^ ACC_C[158] ;
			assign ACC_Nc[241] = 							ACC_B[200] ^ ACC_C[159] ;
			assign ACC_Nc[242] = 							ACC_B[201] ^ ACC_C[160] ;
			assign ACC_Nc[243] = 							ACC_B[202] ^ ACC_C[161] ;
			assign ACC_Nc[244] =													 ACC_C[162] ;
		
		
			assign RED245_ins0_c = ACC_Nc; 	
			assign ACC_D = RED245_ins0_r; 		
			
			reduction245 red245_ins0(RED245_ins0_c, RED245_ins0_r);  

		
		
		endmodule
