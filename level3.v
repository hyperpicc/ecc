//Multiplication level3
//April 21, 2009
//Yu Zhang
//yu.zhang100@gmail.com
//verified: y
module level3(L3_A, L3_B, L3_C);
			input 	[169:0]L3_A;
			input 	[169:0]L3_B;
			output 	[177:0]L3_C;
			
			assign L3_C[0] = L3_A[0] ;
			assign L3_C[1] = L3_A[1] ;
			assign L3_C[2] = L3_A[2] ;
			assign L3_C[3] = L3_A[3] ;
			assign L3_C[4] = L3_A[4] ;
			assign L3_C[5] = L3_A[5] ;
			assign L3_C[6] = L3_A[6] ;
			assign L3_C[7] = L3_A[7] ;
			assign L3_C[8] = L3_A[8] ^ L3_B[0];
			assign L3_C[9] = L3_A[9] ^ L3_B[1];
			assign L3_C[10] = L3_A[10] ^ L3_B[2];
			assign L3_C[11] = L3_A[11] ^ L3_B[3];
			assign L3_C[12] = L3_A[12] ^ L3_B[4];
			assign L3_C[13] = L3_A[13] ^ L3_B[5];
			assign L3_C[14] = L3_A[14] ^ L3_B[6];
			assign L3_C[15] = L3_A[15] ^ L3_B[7];
			assign L3_C[16] = L3_A[16] ^ L3_B[8];
			assign L3_C[17] = L3_A[17] ^ L3_B[9];
			assign L3_C[18] = L3_A[18] ^ L3_B[10];
			assign L3_C[19] = L3_A[19] ^ L3_B[11];
			assign L3_C[20] = L3_A[20] ^ L3_B[12];
			assign L3_C[21] = L3_A[21] ^ L3_B[13];
			assign L3_C[22] = L3_A[22] ^ L3_B[14];
			assign L3_C[23] = L3_A[23] ^ L3_B[15];
			assign L3_C[24] = L3_A[24] ^ L3_B[16];
			assign L3_C[25] = L3_A[25] ^ L3_B[17];
			assign L3_C[26] = L3_A[26] ^ L3_B[18];
			assign L3_C[27] = L3_A[27] ^ L3_B[19];
			assign L3_C[28] = L3_A[28] ^ L3_B[20];
			assign L3_C[29] = L3_A[29] ^ L3_B[21];
			assign L3_C[30] = L3_A[30] ^ L3_B[22];
			assign L3_C[31] = L3_A[31] ^ L3_B[23];
			assign L3_C[32] = L3_A[32] ^ L3_B[24];
			assign L3_C[33] = L3_A[33] ^ L3_B[25];
			assign L3_C[34] = L3_A[34] ^ L3_B[26];
			assign L3_C[35] = L3_A[35] ^ L3_B[27];
			assign L3_C[36] = L3_A[36] ^ L3_B[28];
			assign L3_C[37] = L3_A[37] ^ L3_B[29];
			assign L3_C[38] = L3_A[38] ^ L3_B[30];
			assign L3_C[39] = L3_A[39] ^ L3_B[31];
			assign L3_C[40] = L3_A[40] ^ L3_B[32];
			assign L3_C[41] = L3_A[41] ^ L3_B[33];
			assign L3_C[42] = L3_A[42] ^ L3_B[34];
			assign L3_C[43] = L3_A[43] ^ L3_B[35];
			assign L3_C[44] = L3_A[44] ^ L3_B[36];
			assign L3_C[45] = L3_A[45] ^ L3_B[37];
			assign L3_C[46] = L3_A[46] ^ L3_B[38];
			assign L3_C[47] = L3_A[47] ^ L3_B[39];
			assign L3_C[48] = L3_A[48] ^ L3_B[40];
			assign L3_C[49] = L3_A[49] ^ L3_B[41];
			assign L3_C[50] = L3_A[50] ^ L3_B[42];
			assign L3_C[51] = L3_A[51] ^ L3_B[43];
			assign L3_C[52] = L3_A[52] ^ L3_B[44];
			assign L3_C[53] = L3_A[53] ^ L3_B[45];
			assign L3_C[54] = L3_A[54] ^ L3_B[46];
			assign L3_C[55] = L3_A[55] ^ L3_B[47];
			assign L3_C[56] = L3_A[56] ^ L3_B[48];
			assign L3_C[57] = L3_A[57] ^ L3_B[49];
			assign L3_C[58] = L3_A[58] ^ L3_B[50];
			assign L3_C[59] = L3_A[59] ^ L3_B[51];
			assign L3_C[60] = L3_A[60] ^ L3_B[52];
			assign L3_C[61] = L3_A[61] ^ L3_B[53];
			assign L3_C[62] = L3_A[62] ^ L3_B[54];
			assign L3_C[63] = L3_A[63] ^ L3_B[55];
			assign L3_C[64] = L3_A[64] ^ L3_B[56];
			assign L3_C[65] = L3_A[65] ^ L3_B[57];
			assign L3_C[66] = L3_A[66] ^ L3_B[58];
			assign L3_C[67] = L3_A[67] ^ L3_B[59];
			assign L3_C[68] = L3_A[68] ^ L3_B[60];
			assign L3_C[69] = L3_A[69] ^ L3_B[61];
			assign L3_C[70] = L3_A[70] ^ L3_B[62];
			assign L3_C[71] = L3_A[71] ^ L3_B[63];
			assign L3_C[72] = L3_A[72] ^ L3_B[64];
			assign L3_C[73] = L3_A[73] ^ L3_B[65];
			assign L3_C[74] = L3_A[74] ^ L3_B[66];
			assign L3_C[75] = L3_A[75] ^ L3_B[67];
			assign L3_C[76] = L3_A[76] ^ L3_B[68];
			assign L3_C[77] = L3_A[77] ^ L3_B[69];
			assign L3_C[78] = L3_A[78] ^ L3_B[70];
			assign L3_C[79] = L3_A[79] ^ L3_B[71];
			assign L3_C[80] = L3_A[80] ^ L3_B[72];
			assign L3_C[81] = L3_A[81] ^ L3_B[73];
			assign L3_C[82] = L3_A[82] ^ L3_B[74];
			assign L3_C[83] = L3_A[83] ^ L3_B[75];
			assign L3_C[84] = L3_A[84] ^ L3_B[76];
			assign L3_C[85] = L3_A[85] ^ L3_B[77];
			assign L3_C[86] = L3_A[86] ^ L3_B[78];
			assign L3_C[87] = L3_A[87] ^ L3_B[79];
			assign L3_C[88] = L3_A[88] ^ L3_B[80];
			assign L3_C[89] = L3_A[89] ^ L3_B[81];
			assign L3_C[90] = L3_A[90] ^ L3_B[82];
			assign L3_C[91] = L3_A[91] ^ L3_B[83];
			assign L3_C[92] = L3_A[92] ^ L3_B[84];
			assign L3_C[93] = L3_A[93] ^ L3_B[85];
			assign L3_C[94] = L3_A[94] ^ L3_B[86];
			assign L3_C[95] = L3_A[95] ^ L3_B[87];
			assign L3_C[96] = L3_A[96] ^ L3_B[88];
			assign L3_C[97] = L3_A[97] ^ L3_B[89];
			assign L3_C[98] = L3_A[98] ^ L3_B[90];
			assign L3_C[99] = L3_A[99] ^ L3_B[91];
			assign L3_C[100] = L3_A[100] ^ L3_B[92];
			assign L3_C[101] = L3_A[101] ^ L3_B[93];
			assign L3_C[102] = L3_A[102] ^ L3_B[94];
			assign L3_C[103] = L3_A[103] ^ L3_B[95];
			assign L3_C[104] = L3_A[104] ^ L3_B[96];
			assign L3_C[105] = L3_A[105] ^ L3_B[97];
			assign L3_C[106] = L3_A[106] ^ L3_B[98];
			assign L3_C[107] = L3_A[107] ^ L3_B[99];
			assign L3_C[108] = L3_A[108] ^ L3_B[100];
			assign L3_C[109] = L3_A[109] ^ L3_B[101];
			assign L3_C[110] = L3_A[110] ^ L3_B[102];
			assign L3_C[111] = L3_A[111] ^ L3_B[103];
			assign L3_C[112] = L3_A[112] ^ L3_B[104];
			assign L3_C[113] = L3_A[113] ^ L3_B[105];
			assign L3_C[114] = L3_A[114] ^ L3_B[106];
			assign L3_C[115] = L3_A[115] ^ L3_B[107];
			assign L3_C[116] = L3_A[116] ^ L3_B[108];
			assign L3_C[117] = L3_A[117] ^ L3_B[109];
			assign L3_C[118] = L3_A[118] ^ L3_B[110];
			assign L3_C[119] = L3_A[119] ^ L3_B[111];
			assign L3_C[120] = L3_A[120] ^ L3_B[112];
			assign L3_C[121] = L3_A[121] ^ L3_B[113];
			assign L3_C[122] = L3_A[122] ^ L3_B[114];
			assign L3_C[123] = L3_A[123] ^ L3_B[115];
			assign L3_C[124] = L3_A[124] ^ L3_B[116];
			assign L3_C[125] = L3_A[125] ^ L3_B[117];
			assign L3_C[126] = L3_A[126] ^ L3_B[118];
			assign L3_C[127] = L3_A[127] ^ L3_B[119];
			assign L3_C[128] = L3_A[128] ^ L3_B[120];
			assign L3_C[129] = L3_A[129] ^ L3_B[121];
			assign L3_C[130] = L3_A[130] ^ L3_B[122];
			assign L3_C[131] = L3_A[131] ^ L3_B[123];
			assign L3_C[132] = L3_A[132] ^ L3_B[124];
			assign L3_C[133] = L3_A[133] ^ L3_B[125];
			assign L3_C[134] = L3_A[134] ^ L3_B[126];
			assign L3_C[135] = L3_A[135] ^ L3_B[127];
			assign L3_C[136] = L3_A[136] ^ L3_B[128];
			assign L3_C[137] = L3_A[137] ^ L3_B[129];
			assign L3_C[138] = L3_A[138] ^ L3_B[130];
			assign L3_C[139] = L3_A[139] ^ L3_B[131];
			assign L3_C[140] = L3_A[140] ^ L3_B[132];
			assign L3_C[141] = L3_A[141] ^ L3_B[133];
			assign L3_C[142] = L3_A[142] ^ L3_B[134];
			assign L3_C[143] = L3_A[143] ^ L3_B[135];
			assign L3_C[144] = L3_A[144] ^ L3_B[136];
			assign L3_C[145] = L3_A[145] ^ L3_B[137];
			assign L3_C[146] = L3_A[146] ^ L3_B[138];
			assign L3_C[147] = L3_A[147] ^ L3_B[139];
			assign L3_C[148] = L3_A[148] ^ L3_B[140];
			assign L3_C[149] = L3_A[149] ^ L3_B[141];
			assign L3_C[150] = L3_A[150] ^ L3_B[142];
			assign L3_C[151] = L3_A[151] ^ L3_B[143];
			assign L3_C[152] = L3_A[152] ^ L3_B[144];
			assign L3_C[153] = L3_A[153] ^ L3_B[145];
			assign L3_C[154] = L3_A[154] ^ L3_B[146];
			assign L3_C[155] = L3_A[155] ^ L3_B[147];
			assign L3_C[156] = L3_A[156] ^ L3_B[148];
			assign L3_C[157] = L3_A[157] ^ L3_B[149];
			assign L3_C[158] = L3_A[158] ^ L3_B[150];
			assign L3_C[159] = L3_A[159] ^ L3_B[151];
			assign L3_C[160] = L3_A[160] ^ L3_B[152];
			assign L3_C[161] = L3_A[161] ^ L3_B[153];
			assign L3_C[162] = L3_A[162] ^ L3_B[154];
			assign L3_C[163] = L3_A[163] ^ L3_B[155];
			assign L3_C[164] = L3_A[164] ^ L3_B[156];
			assign L3_C[165] = L3_A[165] ^ L3_B[157];
			assign L3_C[166] = L3_A[166] ^ L3_B[158];
			assign L3_C[167] = L3_A[167] ^ L3_B[159];
			assign L3_C[168] = L3_A[168] ^ L3_B[160];
			assign L3_C[169] = L3_A[169] ^ L3_B[161];
			assign L3_C[170] = L3_B[162];
			assign L3_C[171] = L3_B[163];
			assign L3_C[172] = L3_B[164];
			assign L3_C[173] = L3_B[165];
			assign L3_C[174] = L3_B[166];
			assign L3_C[175] = L3_B[167];
			assign L3_C[176] = L3_B[168];
			assign L3_C[177] = L3_B[169];
		endmodule
