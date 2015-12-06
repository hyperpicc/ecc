//yu.zhang100@gmail.com
//double square
//April 26, 2009
//Yu Zhang
//verified: y
module squaresquare(SSQ_A,SSQ_B);
	input [162:0]SSQ_A;
	output [162:0]SSQ_B;


																													 assign SSQ_B[0] =SSQ_A[80]^SSQ_A[158]^SSQ_A[0];
                                      										 assign SSQ_B[1] =SSQ_A[81]^SSQ_A[161]^SSQ_A[159]^SSQ_A[80]^SSQ_A[160]^SSQ_A[158]^SSQ_A[41]^SSQ_A[121]^SSQ_A[119];
                                                           assign SSQ_B[2] =SSQ_A[159]^SSQ_A[160]^SSQ_A[82];
                                             							 assign SSQ_B[3] =SSQ_A[162]^SSQ_A[159]^SSQ_A[123]^SSQ_A[120]^SSQ_A[80]^SSQ_A[160]^SSQ_A[158];
                            															 assign SSQ_B[4] =SSQ_A[161]^SSQ_A[1]^SSQ_A[80]^SSQ_A[160]^SSQ_A[158]^SSQ_A[41]^SSQ_A[121]^SSQ_A[119];
                                            							 assign SSQ_B[5] =SSQ_A[81]^SSQ_A[161]^SSQ_A[42]^SSQ_A[122]^SSQ_A[120]^SSQ_A[162];
                                  												 assign SSQ_B[6] =SSQ_A[161]^SSQ_A[83]^SSQ_A[162]^SSQ_A[159]^SSQ_A[123]^SSQ_A[120]^SSQ_A[80]^SSQ_A[158];  
                                  												  
																													//SSQ_B[7] = c124*M000^20*c121^2*c81^2*c161^2*c159^2*c80^2*c160^2*c158^2*c41*c119                                
                                  												 assign SSQ_B[7] = SSQ_A[124]^SSQ_A[41]^SSQ_A[119];
 																													 assign SSQ_B[8] =SSQ_A[162]^SSQ_A[2]^SSQ_A[82]^SSQ_A[159]^SSQ_A[42]^SSQ_A[122]^SSQ_A[120]^SSQ_A[80]^SSQ_A[158]^SSQ_A[41]^SSQ_A[121]^SSQ_A[119];
                                                           assign SSQ_B[9] =SSQ_A[43]^SSQ_A[121]^SSQ_A[120];
                              														 assign SSQ_B[10] =SSQ_A[84]^SSQ_A[124]^SSQ_A[121]^SSQ_A[81]^SSQ_A[123]^SSQ_A[120];
                                      									   assign SSQ_B[11] =SSQ_A[125]^SSQ_A[42]^SSQ_A[120];
                       																		 assign SSQ_B[12] =SSQ_A[3]^SSQ_A[83]^SSQ_A[160]^SSQ_A[43]^SSQ_A[123]^SSQ_A[121]^SSQ_A[81]^SSQ_A[159]^SSQ_A[42]^SSQ_A[122]^SSQ_A[120];
                                                           assign SSQ_B[13] =SSQ_A[44]^SSQ_A[122]^SSQ_A[121];
                                     											 assign SSQ_B[14] =SSQ_A[85]^SSQ_A[82]^SSQ_A[125]^SSQ_A[122]^SSQ_A[124]^SSQ_A[121];
                                                           assign SSQ_B[15] =SSQ_A[126]^SSQ_A[43]^SSQ_A[121];
                       																		 assign SSQ_B[16] =SSQ_A[4]^SSQ_A[84]^SSQ_A[161]^SSQ_A[160]^SSQ_A[82]^SSQ_A[44]^SSQ_A[124]^SSQ_A[122]^SSQ_A[43]^SSQ_A[123]^SSQ_A[121];
                                                           assign SSQ_B[17] =SSQ_A[45]^SSQ_A[123]^SSQ_A[122];
                                            							 assign SSQ_B[18] =SSQ_A[86]^SSQ_A[83]^SSQ_A[126]^SSQ_A[123]^SSQ_A[125]^SSQ_A[122];
                                                           assign SSQ_B[19] =SSQ_A[127]^SSQ_A[44]^SSQ_A[122];
                              														 assign SSQ_B[20] =SSQ_A[5]^SSQ_A[85]^SSQ_A[162]^SSQ_A[161]^SSQ_A[83]^SSQ_A[45]^SSQ_A[125]^SSQ_A[123]^SSQ_A[44]^SSQ_A[124]^SSQ_A[122];
                                                           assign SSQ_B[21] =SSQ_A[46]^SSQ_A[124]^SSQ_A[123];
                                            							 assign SSQ_B[22] =SSQ_A[87]^SSQ_A[84]^SSQ_A[127]^SSQ_A[124]^SSQ_A[126]^SSQ_A[123];
                                                           assign SSQ_B[23] =SSQ_A[128]^SSQ_A[45]^SSQ_A[123];
                                   												 assign SSQ_B[24] =SSQ_A[6]^SSQ_A[86]^SSQ_A[162]^SSQ_A[84]^SSQ_A[46]^SSQ_A[126]^SSQ_A[124]^SSQ_A[45]^SSQ_A[125]^SSQ_A[123];
                                                           assign SSQ_B[25] =SSQ_A[47]^SSQ_A[125]^SSQ_A[124];
                                                   				 assign SSQ_B[26] =SSQ_A[88]^SSQ_A[85]^SSQ_A[128]^SSQ_A[125]^SSQ_A[127]^SSQ_A[124];
                                                           assign SSQ_B[27] =SSQ_A[129]^SSQ_A[46]^SSQ_A[124];
                                         									 assign SSQ_B[28] =SSQ_A[7]^SSQ_A[87]^SSQ_A[85]^SSQ_A[47]^SSQ_A[127]^SSQ_A[125]^SSQ_A[46]^SSQ_A[126]^SSQ_A[124];
                                                           assign SSQ_B[29] =SSQ_A[48]^SSQ_A[126]^SSQ_A[125];
                                                   				 assign SSQ_B[30] =SSQ_A[89]^SSQ_A[86]^SSQ_A[129]^SSQ_A[126]^SSQ_A[128]^SSQ_A[125];
                                                           assign SSQ_B[31] =SSQ_A[130]^SSQ_A[47]^SSQ_A[125];
                                         									 assign SSQ_B[32] =SSQ_A[8]^SSQ_A[88]^SSQ_A[86]^SSQ_A[48]^SSQ_A[128]^SSQ_A[126]^SSQ_A[47]^SSQ_A[127]^SSQ_A[125];
                                                           assign SSQ_B[33] =SSQ_A[49]^SSQ_A[127]^SSQ_A[126];
                                                   				 assign SSQ_B[34] =SSQ_A[90]^SSQ_A[87]^SSQ_A[130]^SSQ_A[127]^SSQ_A[129]^SSQ_A[126];
                                                           assign SSQ_B[35] =SSQ_A[131]^SSQ_A[48]^SSQ_A[126];
                                         									 assign SSQ_B[36] =SSQ_A[9]^SSQ_A[89]^SSQ_A[87]^SSQ_A[49]^SSQ_A[129]^SSQ_A[127]^SSQ_A[48]^SSQ_A[128]^SSQ_A[126];
                                                           assign SSQ_B[37] =SSQ_A[50]^SSQ_A[128]^SSQ_A[127];
                                                   				 assign SSQ_B[38] =SSQ_A[91]^SSQ_A[88]^SSQ_A[131]^SSQ_A[128]^SSQ_A[130]^SSQ_A[127];
                                                           assign SSQ_B[39] =SSQ_A[132]^SSQ_A[49]^SSQ_A[127];
                                        									 assign SSQ_B[40] =SSQ_A[10]^SSQ_A[90]^SSQ_A[88]^SSQ_A[50]^SSQ_A[130]^SSQ_A[128]^SSQ_A[49]^SSQ_A[129]^SSQ_A[127];
                                                           assign SSQ_B[41] =SSQ_A[51]^SSQ_A[129]^SSQ_A[128];
                                                   				 assign SSQ_B[42] =SSQ_A[92]^SSQ_A[89]^SSQ_A[132]^SSQ_A[129]^SSQ_A[131]^SSQ_A[128];
                                                           assign SSQ_B[43] =SSQ_A[133]^SSQ_A[50]^SSQ_A[128];
                                        									 assign SSQ_B[44] =SSQ_A[11]^SSQ_A[91]^SSQ_A[89]^SSQ_A[51]^SSQ_A[131]^SSQ_A[129]^SSQ_A[50]^SSQ_A[130]^SSQ_A[128];
                                                           assign SSQ_B[45] =SSQ_A[52]^SSQ_A[130]^SSQ_A[129];
                                                   				 assign SSQ_B[46] =SSQ_A[93]^SSQ_A[90]^SSQ_A[133]^SSQ_A[130]^SSQ_A[132]^SSQ_A[129];
                                                           assign SSQ_B[47] =SSQ_A[134]^SSQ_A[51]^SSQ_A[129];
                                        									 assign SSQ_B[48] =SSQ_A[12]^SSQ_A[92]^SSQ_A[90]^SSQ_A[52]^SSQ_A[132]^SSQ_A[130]^SSQ_A[51]^SSQ_A[131]^SSQ_A[129];
                                                           assign SSQ_B[49] =SSQ_A[53]^SSQ_A[131]^SSQ_A[130];
                                                   				 assign SSQ_B[50] =SSQ_A[94]^SSQ_A[91]^SSQ_A[134]^SSQ_A[131]^SSQ_A[133]^SSQ_A[130];
                                                           assign SSQ_B[51] =SSQ_A[135]^SSQ_A[52]^SSQ_A[130];
                                        									 assign SSQ_B[52] =SSQ_A[13]^SSQ_A[93]^SSQ_A[91]^SSQ_A[53]^SSQ_A[133]^SSQ_A[131]^SSQ_A[52]^SSQ_A[132]^SSQ_A[130];
                                                           assign SSQ_B[53] =SSQ_A[54]^SSQ_A[132]^SSQ_A[131];
                                                   				 assign SSQ_B[54] =SSQ_A[95]^SSQ_A[92]^SSQ_A[135]^SSQ_A[132]^SSQ_A[134]^SSQ_A[131];
                                                           assign SSQ_B[55] =SSQ_A[136]^SSQ_A[53]^SSQ_A[131];
                                        									 assign SSQ_B[56] =SSQ_A[14]^SSQ_A[94]^SSQ_A[92]^SSQ_A[54]^SSQ_A[134]^SSQ_A[132]^SSQ_A[53]^SSQ_A[133]^SSQ_A[131];
                                                           assign SSQ_B[57] =SSQ_A[55]^SSQ_A[133]^SSQ_A[132];
                                                   				 assign SSQ_B[58] =SSQ_A[96]^SSQ_A[93]^SSQ_A[136]^SSQ_A[133]^SSQ_A[135]^SSQ_A[132];
                                                           assign SSQ_B[59] =SSQ_A[137]^SSQ_A[54]^SSQ_A[132];
                                        									 assign SSQ_B[60] =SSQ_A[15]^SSQ_A[95]^SSQ_A[93]^SSQ_A[55]^SSQ_A[135]^SSQ_A[133]^SSQ_A[54]^SSQ_A[134]^SSQ_A[132];
                                                           assign SSQ_B[61] =SSQ_A[56]^SSQ_A[134]^SSQ_A[133];
                                                   				 assign SSQ_B[62] =SSQ_A[97]^SSQ_A[94]^SSQ_A[137]^SSQ_A[134]^SSQ_A[136]^SSQ_A[133];
                                                           assign SSQ_B[63] =SSQ_A[138]^SSQ_A[55]^SSQ_A[133];
                                        									 assign SSQ_B[64] =SSQ_A[16]^SSQ_A[96]^SSQ_A[94]^SSQ_A[56]^SSQ_A[136]^SSQ_A[134]^SSQ_A[55]^SSQ_A[135]^SSQ_A[133];
                                                           assign SSQ_B[65] =SSQ_A[57]^SSQ_A[135]^SSQ_A[134];
                                                   				 assign SSQ_B[66] =SSQ_A[98]^SSQ_A[95]^SSQ_A[138]^SSQ_A[135]^SSQ_A[137]^SSQ_A[134];
                                                           assign SSQ_B[67] =SSQ_A[139]^SSQ_A[56]^SSQ_A[134];
                                        									 assign SSQ_B[68] =SSQ_A[17]^SSQ_A[97]^SSQ_A[95]^SSQ_A[57]^SSQ_A[137]^SSQ_A[135]^SSQ_A[56]^SSQ_A[136]^SSQ_A[134];
                                                           assign SSQ_B[69] =SSQ_A[58]^SSQ_A[136]^SSQ_A[135];
                                                  				 assign SSQ_B[70] =SSQ_A[99]^SSQ_A[96]^SSQ_A[139]^SSQ_A[136]^SSQ_A[138]^SSQ_A[135];
                                                           assign SSQ_B[71] =SSQ_A[140]^SSQ_A[57]^SSQ_A[135];
                                        									 assign SSQ_B[72] =SSQ_A[18]^SSQ_A[98]^SSQ_A[96]^SSQ_A[58]^SSQ_A[138]^SSQ_A[136]^SSQ_A[57]^SSQ_A[137]^SSQ_A[135];
                                                           assign SSQ_B[73] =SSQ_A[59]^SSQ_A[137]^SSQ_A[136];
                                                  				 assign SSQ_B[74] =SSQ_A[100]^SSQ_A[97]^SSQ_A[140]^SSQ_A[137]^SSQ_A[139]^SSQ_A[136];
                                                           assign SSQ_B[75] =SSQ_A[141]^SSQ_A[58]^SSQ_A[136];
                                        									 assign SSQ_B[76] =SSQ_A[19]^SSQ_A[99]^SSQ_A[97]^SSQ_A[59]^SSQ_A[139]^SSQ_A[137]^SSQ_A[58]^SSQ_A[138]^SSQ_A[136];
                                                           assign SSQ_B[77] =SSQ_A[60]^SSQ_A[138]^SSQ_A[137];
                                                  				 assign SSQ_B[78] =SSQ_A[101]^SSQ_A[98]^SSQ_A[141]^SSQ_A[138]^SSQ_A[140]^SSQ_A[137];
                                                           assign SSQ_B[79] =SSQ_A[142]^SSQ_A[59]^SSQ_A[137];
                                       										 assign SSQ_B[80] =SSQ_A[20]^SSQ_A[100]^SSQ_A[98]^SSQ_A[60]^SSQ_A[140]^SSQ_A[138]^SSQ_A[59]^SSQ_A[139]^SSQ_A[137];
                                                           assign SSQ_B[81] =SSQ_A[61]^SSQ_A[139]^SSQ_A[138];
                                                  				 assign SSQ_B[82] =SSQ_A[102]^SSQ_A[99]^SSQ_A[142]^SSQ_A[139]^SSQ_A[141]^SSQ_A[138];
                                                           assign SSQ_B[83] =SSQ_A[143]^SSQ_A[60]^SSQ_A[138];
                                       										 assign SSQ_B[84] =SSQ_A[21]^SSQ_A[101]^SSQ_A[99]^SSQ_A[61]^SSQ_A[141]^SSQ_A[139]^SSQ_A[60]^SSQ_A[140]^SSQ_A[138];
                                                           assign SSQ_B[85] =SSQ_A[62]^SSQ_A[140]^SSQ_A[139];
                                                 					 assign SSQ_B[86] =SSQ_A[103]^SSQ_A[100]^SSQ_A[143]^SSQ_A[140]^SSQ_A[142]^SSQ_A[139];
                                                           assign SSQ_B[87] =SSQ_A[144]^SSQ_A[61]^SSQ_A[139];
                                       										 assign SSQ_B[88] =SSQ_A[22]^SSQ_A[102]^SSQ_A[100]^SSQ_A[62]^SSQ_A[142]^SSQ_A[140]^SSQ_A[61]^SSQ_A[141]^SSQ_A[139];
                                                           assign SSQ_B[89] =SSQ_A[63]^SSQ_A[141]^SSQ_A[140];
                                                 					 assign SSQ_B[90] =SSQ_A[104]^SSQ_A[101]^SSQ_A[144]^SSQ_A[141]^SSQ_A[143]^SSQ_A[140];
                                                           assign SSQ_B[91] =SSQ_A[145]^SSQ_A[62]^SSQ_A[140];
                                     											 assign SSQ_B[92] =SSQ_A[23]^SSQ_A[103]^SSQ_A[101]^SSQ_A[63]^SSQ_A[143]^SSQ_A[141]^SSQ_A[62]^SSQ_A[142]^SSQ_A[140];
                                                           assign SSQ_B[93] =SSQ_A[64]^SSQ_A[142]^SSQ_A[141];
                                                				   assign SSQ_B[94] =SSQ_A[105]^SSQ_A[102]^SSQ_A[145]^SSQ_A[142]^SSQ_A[144]^SSQ_A[141];
                                                           assign SSQ_B[95] =SSQ_A[146]^SSQ_A[63]^SSQ_A[141];
                                      										 assign SSQ_B[96] =SSQ_A[24]^SSQ_A[104]^SSQ_A[102]^SSQ_A[64]^SSQ_A[144]^SSQ_A[142]^SSQ_A[63]^SSQ_A[143]^SSQ_A[141];
                                                           assign SSQ_B[97] =SSQ_A[65]^SSQ_A[143]^SSQ_A[142];
                                                   				 assign SSQ_B[98] =SSQ_A[106]^SSQ_A[103]^SSQ_A[146]^SSQ_A[143]^SSQ_A[145]^SSQ_A[142];
                                                           assign SSQ_B[99] =SSQ_A[147]^SSQ_A[64]^SSQ_A[142];
                                      										 assign SSQ_B[100] =SSQ_A[25]^SSQ_A[105]^SSQ_A[103]^SSQ_A[65]^SSQ_A[145]^SSQ_A[143]^SSQ_A[64]^SSQ_A[144]^SSQ_A[142];
                                                           assign SSQ_B[101] =SSQ_A[66]^SSQ_A[144]^SSQ_A[143];
                                                 					 assign SSQ_B[102] =SSQ_A[107]^SSQ_A[104]^SSQ_A[147]^SSQ_A[144]^SSQ_A[146]^SSQ_A[143];
                                                           assign SSQ_B[103] =SSQ_A[148]^SSQ_A[65]^SSQ_A[143];
                                      										 assign SSQ_B[104] =SSQ_A[26]^SSQ_A[106]^SSQ_A[104]^SSQ_A[66]^SSQ_A[146]^SSQ_A[144]^SSQ_A[65]^SSQ_A[145]^SSQ_A[143];
                                                           assign SSQ_B[105] =SSQ_A[67]^SSQ_A[145]^SSQ_A[144];
                                                 					 assign SSQ_B[106] =SSQ_A[108]^SSQ_A[105]^SSQ_A[148]^SSQ_A[145]^SSQ_A[147]^SSQ_A[144];
                                                           assign SSQ_B[107] =SSQ_A[149]^SSQ_A[66]^SSQ_A[144];
                                      										 assign SSQ_B[108] =SSQ_A[27]^SSQ_A[107]^SSQ_A[105]^SSQ_A[67]^SSQ_A[147]^SSQ_A[145]^SSQ_A[66]^SSQ_A[146]^SSQ_A[144];
                                                           assign SSQ_B[109] =SSQ_A[68]^SSQ_A[146]^SSQ_A[145];
                                                 					 assign SSQ_B[110] =SSQ_A[109]^SSQ_A[106]^SSQ_A[149]^SSQ_A[146]^SSQ_A[148]^SSQ_A[145];
                                                           assign SSQ_B[111] =SSQ_A[150]^SSQ_A[67]^SSQ_A[145];
                                      										 assign SSQ_B[112] =SSQ_A[28]^SSQ_A[108]^SSQ_A[106]^SSQ_A[68]^SSQ_A[148]^SSQ_A[146]^SSQ_A[67]^SSQ_A[147]^SSQ_A[145];
                                                           assign SSQ_B[113] =SSQ_A[69]^SSQ_A[147]^SSQ_A[146];
                                                 					 assign SSQ_B[114] =SSQ_A[110]^SSQ_A[107]^SSQ_A[150]^SSQ_A[147]^SSQ_A[149]^SSQ_A[146];
                                                           assign SSQ_B[115] =SSQ_A[151]^SSQ_A[68]^SSQ_A[146];
                                      										 assign SSQ_B[116] =SSQ_A[29]^SSQ_A[109]^SSQ_A[107]^SSQ_A[69]^SSQ_A[149]^SSQ_A[147]^SSQ_A[68]^SSQ_A[148]^SSQ_A[146];
                                                           assign SSQ_B[117] =SSQ_A[70]^SSQ_A[148]^SSQ_A[147];
                                                 					 assign SSQ_B[118] =SSQ_A[111]^SSQ_A[108]^SSQ_A[151]^SSQ_A[148]^SSQ_A[150]^SSQ_A[147];
                                                           assign SSQ_B[119] =SSQ_A[152]^SSQ_A[69]^SSQ_A[147];
                                      										 assign SSQ_B[120] =SSQ_A[30]^SSQ_A[110]^SSQ_A[108]^SSQ_A[70]^SSQ_A[150]^SSQ_A[148]^SSQ_A[69]^SSQ_A[149]^SSQ_A[147];
                                                           assign SSQ_B[121] =SSQ_A[71]^SSQ_A[149]^SSQ_A[148];
                                                           assign SSQ_B[122] =SSQ_A[112]^SSQ_A[109]^SSQ_A[152]^SSQ_A[149]^SSQ_A[151]^SSQ_A[148];
                                                           assign SSQ_B[123] =SSQ_A[153]^SSQ_A[70]^SSQ_A[148];
                                      										 assign SSQ_B[124] =SSQ_A[31]^SSQ_A[111]^SSQ_A[109]^SSQ_A[71]^SSQ_A[151]^SSQ_A[149]^SSQ_A[70]^SSQ_A[150]^SSQ_A[148];
                                                           assign SSQ_B[125] =SSQ_A[72]^SSQ_A[150]^SSQ_A[149];
                                                 					 assign SSQ_B[126] =SSQ_A[113]^SSQ_A[110]^SSQ_A[153]^SSQ_A[150]^SSQ_A[152]^SSQ_A[149];
                                                           assign SSQ_B[127] =SSQ_A[154]^SSQ_A[71]^SSQ_A[149];
                                      						         assign SSQ_B[128] =SSQ_A[32]^SSQ_A[112]^SSQ_A[110]^SSQ_A[72]^SSQ_A[152]^SSQ_A[150]^SSQ_A[71]^SSQ_A[151]^SSQ_A[149];
                                                           assign SSQ_B[129] =SSQ_A[73]^SSQ_A[151]^SSQ_A[150];
                                                 					 assign SSQ_B[130] =SSQ_A[114]^SSQ_A[111]^SSQ_A[154]^SSQ_A[151]^SSQ_A[153]^SSQ_A[150];
                                                           assign SSQ_B[131] =SSQ_A[155]^SSQ_A[72]^SSQ_A[150];
                                      										 assign SSQ_B[132] =SSQ_A[33]^SSQ_A[113]^SSQ_A[111]^SSQ_A[73]^SSQ_A[153]^SSQ_A[151]^SSQ_A[72]^SSQ_A[152]^SSQ_A[150];
                                                           assign SSQ_B[133] =SSQ_A[74]^SSQ_A[152]^SSQ_A[151];
                                                 					 assign SSQ_B[134] =SSQ_A[115]^SSQ_A[112]^SSQ_A[155]^SSQ_A[152]^SSQ_A[154]^SSQ_A[151];
                                                           assign SSQ_B[135] =SSQ_A[156]^SSQ_A[73]^SSQ_A[151];
                                      										 assign SSQ_B[136] =SSQ_A[34]^SSQ_A[114]^SSQ_A[112]^SSQ_A[74]^SSQ_A[154]^SSQ_A[152]^SSQ_A[73]^SSQ_A[153]^SSQ_A[151];
                                                           assign SSQ_B[137] =SSQ_A[75]^SSQ_A[153]^SSQ_A[152];
                                                  			 	 assign SSQ_B[138] =SSQ_A[116]^SSQ_A[113]^SSQ_A[156]^SSQ_A[153]^SSQ_A[155]^SSQ_A[152];
                                                           assign SSQ_B[139] =SSQ_A[157]^SSQ_A[74]^SSQ_A[152];
                                      										 assign SSQ_B[140] =SSQ_A[35]^SSQ_A[115]^SSQ_A[113]^SSQ_A[75]^SSQ_A[155]^SSQ_A[153]^SSQ_A[74]^SSQ_A[154]^SSQ_A[152];
                                                           assign SSQ_B[141] =SSQ_A[76]^SSQ_A[154]^SSQ_A[153];
                                                 					 assign SSQ_B[142] =SSQ_A[117]^SSQ_A[114]^SSQ_A[157]^SSQ_A[154]^SSQ_A[156]^SSQ_A[153];
                                                           assign SSQ_B[143] =SSQ_A[158]^SSQ_A[75]^SSQ_A[153];
                                      										 assign SSQ_B[144] =SSQ_A[36]^SSQ_A[116]^SSQ_A[114]^SSQ_A[76]^SSQ_A[156]^SSQ_A[154]^SSQ_A[75]^SSQ_A[155]^SSQ_A[153];
                                                           assign SSQ_B[145] =SSQ_A[77]^SSQ_A[155]^SSQ_A[154];
                                                					 assign SSQ_B[146] =SSQ_A[118]^SSQ_A[115]^SSQ_A[158]^SSQ_A[155]^SSQ_A[157]^SSQ_A[154];
                                                           assign SSQ_B[147] =SSQ_A[159]^SSQ_A[76]^SSQ_A[154];
                                      										 assign SSQ_B[148] =SSQ_A[37]^SSQ_A[117]^SSQ_A[115]^SSQ_A[77]^SSQ_A[157]^SSQ_A[155]^SSQ_A[76]^SSQ_A[156]^SSQ_A[154];
                                                           assign SSQ_B[149] =SSQ_A[78]^SSQ_A[156]^SSQ_A[155];
                                                 					 assign SSQ_B[150] =SSQ_A[119]^SSQ_A[116]^SSQ_A[159]^SSQ_A[156]^SSQ_A[158]^SSQ_A[155];
                                                           assign SSQ_B[151] =SSQ_A[160]^SSQ_A[77]^SSQ_A[155];
                                      										 assign SSQ_B[152] =SSQ_A[38]^SSQ_A[118]^SSQ_A[116]^SSQ_A[78]^SSQ_A[158]^SSQ_A[156]^SSQ_A[77]^SSQ_A[157]^SSQ_A[155];
                                                           assign SSQ_B[153] =SSQ_A[79]^SSQ_A[157]^SSQ_A[156];
                                                 					 assign SSQ_B[154] =SSQ_A[120]^SSQ_A[117]^SSQ_A[160]^SSQ_A[157]^SSQ_A[159]^SSQ_A[156];
                                                           assign SSQ_B[155] =SSQ_A[161]^SSQ_A[78]^SSQ_A[156];
                                      										 assign SSQ_B[156] =SSQ_A[39]^SSQ_A[119]^SSQ_A[117]^SSQ_A[79]^SSQ_A[159]^SSQ_A[157]^SSQ_A[78]^SSQ_A[158]^SSQ_A[156];
                                                           assign SSQ_B[157] =SSQ_A[80]^SSQ_A[158]^SSQ_A[157];
                                                 					 assign SSQ_B[158] =SSQ_A[121]^SSQ_A[118]^SSQ_A[161]^SSQ_A[158]^SSQ_A[160]^SSQ_A[157];
                                                           assign SSQ_B[159] =SSQ_A[162]^SSQ_A[79]^SSQ_A[157];
                                      										 assign SSQ_B[160] =SSQ_A[40]^SSQ_A[120]^SSQ_A[118]^SSQ_A[80]^SSQ_A[160]^SSQ_A[158]^SSQ_A[79]^SSQ_A[159]^SSQ_A[157];
                                                           assign SSQ_B[161] =SSQ_A[81]^SSQ_A[159]^SSQ_A[158];
                                                 					 assign SSQ_B[162] =SSQ_A[122]^SSQ_A[119]^SSQ_A[162]^SSQ_A[159]^SSQ_A[161]^SSQ_A[158];
                           	endmodule