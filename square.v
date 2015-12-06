//yu.zhang100@gmail.com
//square
//April 26, 2009
//Yu Zhang
//verified: y
module square(SQ_A,SQ_B);
input [162:0]SQ_A;
output [162:0]SQ_B;

			           assign SQ_B[0] = SQ_A[160]^SQ_A[0];
	               assign SQ_B[1] = SQ_A[162]^SQ_A[160]^SQ_A[82];
	               assign SQ_B[2] = SQ_A[161]^SQ_A[1];
	               assign SQ_B[3] = SQ_A[161]^SQ_A[83]^SQ_A[160];
	          		 assign SQ_B[4] = SQ_A[2]^SQ_A[160]^SQ_A[82];
	               assign SQ_B[5] = SQ_A[162]^SQ_A[84]^SQ_A[161];
	               assign SQ_B[6] = SQ_A[3]^SQ_A[161]^SQ_A[83]^SQ_A[160];
	       				 assign SQ_B[7] = SQ_A[85]^SQ_A[82];
	 							 assign SQ_B[8] = SQ_A[4]^SQ_A[84]^SQ_A[161]^SQ_A[160]^SQ_A[82];
	               assign SQ_B[9] = SQ_A[86]^SQ_A[83];
	               assign SQ_B[10] = SQ_A[5]^SQ_A[85]^SQ_A[162]^SQ_A[161]^SQ_A[83];
	               assign SQ_B[11] = SQ_A[87]^SQ_A[84];
	               assign SQ_B[12] = SQ_A[6]^SQ_A[86]^SQ_A[162]^SQ_A[84];
	               assign SQ_B[13] = SQ_A[88]^SQ_A[85];
	               assign SQ_B[14] = SQ_A[7]^SQ_A[87]^SQ_A[85];
	               assign SQ_B[15] = SQ_A[89]^SQ_A[86];
                 assign SQ_B[16] = SQ_A[8]^SQ_A[88]^SQ_A[86];
                 assign SQ_B[17] = SQ_A[90]^SQ_A[87];
                 assign SQ_B[18] = SQ_A[9]^SQ_A[89]^SQ_A[87];
                 assign SQ_B[19] = SQ_A[91]^SQ_A[88];
                 assign SQ_B[20] = SQ_A[10]^SQ_A[90]^SQ_A[88];
                 assign SQ_B[21] = SQ_A[92]^SQ_A[89];
                 assign SQ_B[22] = SQ_A[11]^SQ_A[91]^SQ_A[89];
                 assign SQ_B[23] = SQ_A[93]^SQ_A[90];
                 assign SQ_B[24] = SQ_A[12]^SQ_A[92]^SQ_A[90];
                 assign SQ_B[25] = SQ_A[94]^SQ_A[91];
                 assign SQ_B[26] = SQ_A[13]^SQ_A[93]^SQ_A[91];
                 assign SQ_B[27] = SQ_A[95]^SQ_A[92];
                 assign SQ_B[28] = SQ_A[14]^SQ_A[94]^SQ_A[92];
                 assign SQ_B[29] = SQ_A[96]^SQ_A[93];
                 assign SQ_B[30] = SQ_A[15]^SQ_A[95]^SQ_A[93];
                 assign SQ_B[31] = SQ_A[97]^SQ_A[94];
                 assign SQ_B[32] = SQ_A[16]^SQ_A[96]^SQ_A[94];
                 assign SQ_B[33] = SQ_A[98]^SQ_A[95];
                 assign SQ_B[34] = SQ_A[17]^SQ_A[97]^SQ_A[95];
                 assign SQ_B[35] = SQ_A[99]^SQ_A[96];
                 assign SQ_B[36] = SQ_A[18]^SQ_A[98]^SQ_A[96];
                 assign SQ_B[37] = SQ_A[100]^SQ_A[97];
                 assign SQ_B[38] = SQ_A[19]^SQ_A[99]^SQ_A[97];
                 assign SQ_B[39] = SQ_A[101]^SQ_A[98];
                 assign SQ_B[40] = SQ_A[20]^SQ_A[100]^SQ_A[98];
                 assign SQ_B[41] = SQ_A[102]^SQ_A[99];
                 assign SQ_B[42] = SQ_A[21]^SQ_A[101]^SQ_A[99];
                 assign SQ_B[43] = SQ_A[103]^SQ_A[100];
                 assign SQ_B[44] = SQ_A[22]^SQ_A[102]^SQ_A[100];
                 assign SQ_B[45] = SQ_A[104]^SQ_A[101];
                 assign SQ_B[46] = SQ_A[23]^SQ_A[103]^SQ_A[101];
                 assign SQ_B[47] = SQ_A[105]^SQ_A[102];
                 assign SQ_B[48] = SQ_A[24]^SQ_A[104]^SQ_A[102];
                 assign SQ_B[49] = SQ_A[106]^SQ_A[103];
                 assign SQ_B[50] = SQ_A[25]^SQ_A[105]^SQ_A[103];
                 assign SQ_B[51] = SQ_A[107]^SQ_A[104];
                 assign SQ_B[52] = SQ_A[26]^SQ_A[106]^SQ_A[104];
                 assign SQ_B[53] = SQ_A[108]^SQ_A[105];
                 assign SQ_B[54] = SQ_A[27]^SQ_A[107]^SQ_A[105];
                 assign SQ_B[55] = SQ_A[109]^SQ_A[106];
                 assign SQ_B[56] = SQ_A[28]^SQ_A[108]^SQ_A[106];
                 assign SQ_B[57] = SQ_A[110]^SQ_A[107];
                 assign SQ_B[58] = SQ_A[29]^SQ_A[109]^SQ_A[107];
                 assign SQ_B[59] = SQ_A[111]^SQ_A[108];
                 assign SQ_B[60] = SQ_A[30]^SQ_A[110]^SQ_A[108];
                 assign SQ_B[61] = SQ_A[112]^SQ_A[109];
                 assign SQ_B[62] = SQ_A[31]^SQ_A[111]^SQ_A[109];
                 assign SQ_B[63] = SQ_A[113]^SQ_A[110];
                 assign SQ_B[64] = SQ_A[32]^SQ_A[112]^SQ_A[110];
                 assign SQ_B[65] = SQ_A[114]^SQ_A[111];
                 assign SQ_B[66] = SQ_A[33]^SQ_A[113]^SQ_A[111];
                 assign SQ_B[67] = SQ_A[115]^SQ_A[112];
                 assign SQ_B[68] = SQ_A[34]^SQ_A[114]^SQ_A[112];
                 assign SQ_B[69] = SQ_A[116]^SQ_A[113];
                 assign SQ_B[70] = SQ_A[35]^SQ_A[115]^SQ_A[113];
                 assign SQ_B[71] = SQ_A[117]^SQ_A[114];
                 assign SQ_B[72] = SQ_A[36]^SQ_A[116]^SQ_A[114];
                 assign SQ_B[73] = SQ_A[118]^SQ_A[115];
                 assign SQ_B[74] = SQ_A[37]^SQ_A[117]^SQ_A[115];
                 assign SQ_B[75] = SQ_A[119]^SQ_A[116];
                 assign SQ_B[76] = SQ_A[38]^SQ_A[118]^SQ_A[116];
                 assign SQ_B[77] = SQ_A[120]^SQ_A[117];
                 assign SQ_B[78] = SQ_A[39]^SQ_A[119]^SQ_A[117];
                 assign SQ_B[79] = SQ_A[121]^SQ_A[118];
                 assign SQ_B[80] = SQ_A[40]^SQ_A[120]^SQ_A[118];
                 assign SQ_B[81] = SQ_A[122]^SQ_A[119];
                 assign SQ_B[82] = SQ_A[41]^SQ_A[121]^SQ_A[119];
                 assign SQ_B[83] = SQ_A[123]^SQ_A[120];
                 assign SQ_B[84] = SQ_A[42]^SQ_A[122]^SQ_A[120];
                 assign SQ_B[85] = SQ_A[124]^SQ_A[121];
                 assign SQ_B[86] = SQ_A[43]^SQ_A[123]^SQ_A[121];
                 assign SQ_B[87] = SQ_A[125]^SQ_A[122];
                 assign SQ_B[88] = SQ_A[44]^SQ_A[124]^SQ_A[122];
                 assign SQ_B[89] = SQ_A[126]^SQ_A[123];
                 assign SQ_B[90] = SQ_A[45]^SQ_A[125]^SQ_A[123];
                 assign SQ_B[91] = SQ_A[127]^SQ_A[124];
                 assign SQ_B[92] = SQ_A[46]^SQ_A[126]^SQ_A[124];
                 assign SQ_B[93] = SQ_A[128]^SQ_A[125];
                 assign SQ_B[94] = SQ_A[47]^SQ_A[127]^SQ_A[125];
                 assign SQ_B[95] = SQ_A[129]^SQ_A[126];
                 assign SQ_B[96] = SQ_A[48]^SQ_A[128]^SQ_A[126];
                 assign SQ_B[97] = SQ_A[130]^SQ_A[127];
                 assign SQ_B[98] = SQ_A[49]^SQ_A[129]^SQ_A[127];
                 assign SQ_B[99] = SQ_A[131]^SQ_A[128];
                 assign SQ_B[100] = SQ_A[50]^SQ_A[130]^SQ_A[128];
                 assign SQ_B[101] = SQ_A[132]^SQ_A[129];
                 assign SQ_B[102] = SQ_A[51]^SQ_A[131]^SQ_A[129];
                 assign SQ_B[103] = SQ_A[133]^SQ_A[130];
                 assign SQ_B[104] = SQ_A[52]^SQ_A[132]^SQ_A[130];
                 assign SQ_B[105] = SQ_A[134]^SQ_A[131];
                 assign SQ_B[106] = SQ_A[53]^SQ_A[133]^SQ_A[131];
                 assign SQ_B[107] = SQ_A[135]^SQ_A[132];
                 assign SQ_B[108] = SQ_A[54]^SQ_A[134]^SQ_A[132];
                 assign SQ_B[109] = SQ_A[136]^SQ_A[133];
                 assign SQ_B[110] = SQ_A[55]^SQ_A[135]^SQ_A[133];
                 assign SQ_B[111] = SQ_A[137]^SQ_A[134];
                 assign SQ_B[112] = SQ_A[56]^SQ_A[136]^SQ_A[134];
                 assign SQ_B[113] = SQ_A[138]^SQ_A[135];
                 assign SQ_B[114] = SQ_A[57]^SQ_A[137]^SQ_A[135];
                 assign SQ_B[115] = SQ_A[139]^SQ_A[136];
                 assign SQ_B[116] = SQ_A[58]^SQ_A[138]^SQ_A[136];
                 assign SQ_B[117] = SQ_A[140]^SQ_A[137];
                 assign SQ_B[118] = SQ_A[59]^SQ_A[139]^SQ_A[137];
                 assign SQ_B[119] = SQ_A[141]^SQ_A[138];
                 assign SQ_B[120] = SQ_A[60]^SQ_A[140]^SQ_A[138];
                 assign SQ_B[121] = SQ_A[142]^SQ_A[139];
                 assign SQ_B[122] = SQ_A[61]^SQ_A[141]^SQ_A[139];
                 assign SQ_B[123] = SQ_A[143]^SQ_A[140];
                 assign SQ_B[124] = SQ_A[62]^SQ_A[142]^SQ_A[140];
                 assign SQ_B[125] = SQ_A[144]^SQ_A[141];
                 assign SQ_B[126] = SQ_A[63]^SQ_A[143]^SQ_A[141];
                 assign SQ_B[127] = SQ_A[145]^SQ_A[142];
                 assign SQ_B[128] = SQ_A[64]^SQ_A[144]^SQ_A[142];
                 assign SQ_B[129] = SQ_A[146]^SQ_A[143];
                 assign SQ_B[130] = SQ_A[65]^SQ_A[145]^SQ_A[143];
                 assign SQ_B[131] = SQ_A[147]^SQ_A[144];
                 assign SQ_B[132] = SQ_A[66]^SQ_A[146]^SQ_A[144];
                 assign SQ_B[133] = SQ_A[148]^SQ_A[145];
                 assign SQ_B[134] = SQ_A[67]^SQ_A[147]^SQ_A[145];
                 assign SQ_B[135] = SQ_A[149]^SQ_A[146];
                 assign SQ_B[136] = SQ_A[68]^SQ_A[148]^SQ_A[146];
                 assign SQ_B[137] = SQ_A[150]^SQ_A[147];
                 assign SQ_B[138] = SQ_A[69]^SQ_A[149]^SQ_A[147];
                 assign SQ_B[139] = SQ_A[151]^SQ_A[148];
                 assign SQ_B[140] = SQ_A[70]^SQ_A[150]^SQ_A[148];
                 assign SQ_B[141] = SQ_A[152]^SQ_A[149];
                 assign SQ_B[142] = SQ_A[71]^SQ_A[151]^SQ_A[149];
                 assign SQ_B[143] = SQ_A[153]^SQ_A[150];
                 assign SQ_B[144] = SQ_A[72]^SQ_A[152]^SQ_A[150];
                 assign SQ_B[145] = SQ_A[154]^SQ_A[151];
                 assign SQ_B[146] = SQ_A[73]^SQ_A[153]^SQ_A[151];
                 assign SQ_B[147] = SQ_A[155]^SQ_A[152];
                 assign SQ_B[148] = SQ_A[74]^SQ_A[154]^SQ_A[152];
                 assign SQ_B[149] = SQ_A[156]^SQ_A[153];
                 assign SQ_B[150] = SQ_A[75]^SQ_A[155]^SQ_A[153];
                 assign SQ_B[151] = SQ_A[157]^SQ_A[154];
                 assign SQ_B[152] = SQ_A[76]^SQ_A[156]^SQ_A[154];
                 assign SQ_B[153] = SQ_A[158]^SQ_A[155];
                 assign SQ_B[154] = SQ_A[77]^SQ_A[157]^SQ_A[155];
                 assign SQ_B[155] = SQ_A[159]^SQ_A[156];
                 assign SQ_B[156] = SQ_A[78]^SQ_A[158]^SQ_A[156];
                 assign SQ_B[157] = SQ_A[160]^SQ_A[157];
                 assign SQ_B[158] = SQ_A[79]^SQ_A[159]^SQ_A[157];
                 assign SQ_B[159] = SQ_A[161]^SQ_A[158];
                 assign SQ_B[160] = SQ_A[80]^SQ_A[160]^SQ_A[158];
                 assign SQ_B[161] = SQ_A[162]^SQ_A[159];
                 assign SQ_B[162] = SQ_A[81]^SQ_A[161]^SQ_A[159];
   
  endmodule

