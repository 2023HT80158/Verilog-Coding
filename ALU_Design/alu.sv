//ALU

module alu (
  	input wire[31:0] A, 
  	input wire[31:0] B,
  	input wire[3:0] CTRL,
  	output reg[31:0] Y
);
  
  wire[31:0] muxin4_1;
  wire[31:0] muxin4_2;
  wire[31:0] muxin4_3;
  wire[31:0] muxin4_4;
  wire[31:0] muxin2_1;
  wire[31:0] muxin2_2;
  wire[31:0] muxin2_3;
  wire[31:0] muxin2_4;
  
  adder adder_I(A, B, CTRL[2], muxin4_3);
  	
  and_gate and_I31(A[31], B[31], muxin2_1[31]);
  and_gate and_I30(A[30], B[30], muxin2_1[30]);
  and_gate and_I29(A[29], B[29], muxin2_1[29]);
  and_gate and_I28(A[28], B[28], muxin2_1[28]);
  and_gate and_I27(A[27], B[27], muxin2_1[27]);
  and_gate and_I26(A[26], B[26], muxin2_1[26]);
  and_gate and_I25(A[25], B[25], muxin2_1[25]);
  and_gate and_I24(A[24], B[24], muxin2_1[24]);
  and_gate and_I23(A[23], B[23], muxin2_1[23]);
  and_gate and_I22(A[22], B[22], muxin2_1[22]);
  and_gate and_I21(A[21], B[21], muxin2_1[21]);
  and_gate and_I20(A[20], B[20], muxin2_1[20]);
  and_gate and_I19(A[19], B[19], muxin2_1[19]);
  and_gate and_I18(A[18], B[18], muxin2_1[18]);
  and_gate and_I17(A[17], B[17], muxin2_1[17]);
  and_gate and_I16(A[16], B[16], muxin2_1[16]);
  and_gate and_I15(A[15], B[15], muxin2_1[15]);
  and_gate and_I14(A[14], B[14], muxin2_1[14]);
  and_gate and_I13(A[13], B[13], muxin2_1[13]);
  and_gate and_I12(A[12], B[12], muxin2_1[12]);
  and_gate and_I11(A[11], B[11], muxin2_1[11]);
  and_gate and_I10(A[10], B[10], muxin2_1[10]);
  and_gate and_I9(A[9], B[9], muxin2_1[9]);
  and_gate and_I8(A[8], B[8], muxin2_1[8]);
  and_gate and_I7(A[7], B[7], muxin2_1[7]);
  and_gate and_I6(A[6], B[6], muxin2_1[6]);
  and_gate and_I5(A[5], B[5], muxin2_1[5]);
  and_gate and_I4(A[4], B[4], muxin2_1[4]);
  and_gate and_I3(A[3], B[3], muxin2_1[3]);
  and_gate and_I2(A[2], B[2], muxin2_1[2]);
  and_gate and_I1(A[1], B[1], muxin2_1[1]);
  and_gate and_I0(A[0], B[0], muxin2_1[0]);
  
  or_gate or_I31(A[31], B[31], muxin2_2[31]);
  or_gate or_I30(A[30], B[30], muxin2_2[30]);
  or_gate or_I29(A[29], B[29], muxin2_2[29]);
  or_gate or_I28(A[28], B[28], muxin2_2[28]);
  or_gate or_I27(A[27], B[27], muxin2_2[27]);
  or_gate or_I26(A[26], B[26], muxin2_2[26]);
  or_gate or_I25(A[25], B[25], muxin2_2[25]);
  or_gate or_I24(A[24], B[24], muxin2_2[24]);
  or_gate or_I23(A[23], B[23], muxin2_2[23]);
  or_gate or_I22(A[22], B[22], muxin2_2[22]);
  or_gate or_I21(A[21], B[21], muxin2_2[21]);
  or_gate or_I20(A[20], B[20], muxin2_2[20]);
  or_gate or_I19(A[19], B[19], muxin2_2[19]);
  or_gate or_I18(A[18], B[18], muxin2_2[18]);
  or_gate or_I17(A[17], B[17], muxin2_2[17]);
  or_gate or_I16(A[16], B[16], muxin2_2[16]);
  or_gate or_I15(A[15], B[15], muxin2_2[15]);
  or_gate or_I14(A[14], B[14], muxin2_2[14]);
  or_gate or_I13(A[13], B[13], muxin2_2[13]);
  or_gate or_I12(A[12], B[12], muxin2_2[12]);
  or_gate or_I11(A[11], B[11], muxin2_2[11]);
  or_gate or_I10(A[10], B[10], muxin2_2[10]);
  or_gate or_I9(A[9], B[9], muxin2_2[9]);
  or_gate or_I8(A[8], B[8], muxin2_2[8]);
  or_gate or_I7(A[7], B[7], muxin2_2[7]);
  or_gate or_I6(A[6], B[6], muxin2_2[6]);
  or_gate or_I5(A[5], B[5], muxin2_2[5]);
  or_gate or_I4(A[4], B[4], muxin2_2[4]);
  or_gate or_I3(A[3], B[3], muxin2_2[3]);
  or_gate or_I2(A[2], B[2], muxin2_2[2]);
  or_gate or_I1(A[1], B[1], muxin2_2[1]);
  or_gate or_I0(A[0], B[0], muxin2_2[0]);
 
  xor_gate xor_I31(A[31], B[31], muxin2_3[31]);
  xor_gate xor_I30(A[30], B[30], muxin2_3[30]);
  xor_gate xor_I29(A[29], B[29], muxin2_3[29]);
  xor_gate xor_I28(A[28], B[28], muxin2_3[28]);
  xor_gate xor_I27(A[27], B[27], muxin2_3[27]);
  xor_gate xor_I26(A[26], B[26], muxin2_3[26]);
  xor_gate xor_I25(A[25], B[25], muxin2_3[25]);
  xor_gate xor_I24(A[24], B[24], muxin2_3[24]);
  xor_gate xor_I23(A[23], B[23], muxin2_3[23]);
  xor_gate xor_I22(A[22], B[22], muxin2_3[22]);
  xor_gate xor_I21(A[21], B[21], muxin2_3[21]);
  xor_gate xor_I20(A[20], B[20], muxin2_3[20]);
  xor_gate xor_I19(A[19], B[19], muxin2_3[19]);
  xor_gate xor_I18(A[18], B[18], muxin2_3[18]);
  xor_gate xor_I17(A[17], B[17], muxin2_3[17]);
  xor_gate xor_I16(A[16], B[16], muxin2_3[16]);
  xor_gate xor_I15(A[15], B[15], muxin2_3[15]);
  xor_gate xor_I14(A[14], B[14], muxin2_3[14]);
  xor_gate xor_I13(A[13], B[13], muxin2_3[13]);
  xor_gate xor_I12(A[12], B[12], muxin2_3[12]);
  xor_gate xor_I11(A[11], B[11], muxin2_3[11]);
  xor_gate xor_I10(A[10], B[10], muxin2_3[10]);
  xor_gate xor_I9(A[9], B[9], muxin2_3[9]);
  xor_gate xor_I8(A[8], B[8], muxin2_3[8]);
  xor_gate xor_I7(A[7], B[7], muxin2_3[7]);
  xor_gate xor_I6(A[6], B[6], muxin2_3[6]);
  xor_gate xor_I5(A[5], B[5], muxin2_3[5]);
  xor_gate xor_I4(A[4], B[4], muxin2_3[4]);
  xor_gate xor_I3(A[3], B[3], muxin2_3[3]);
  xor_gate xor_I2(A[2], B[2], muxin2_3[2]);
  xor_gate xor_I1(A[1], B[1], muxin2_3[1]);
  xor_gate xor_I0(A[0], B[0], muxin2_3[0]);
 
  nand_gate nand_I31(A[31], B[31], muxin2_4[31]);
  nand_gate nand_I30(A[30], B[30], muxin2_4[30]);
  nand_gate nand_I29(A[29], B[29], muxin2_4[29]);
  nand_gate nand_I28(A[28], B[28], muxin2_4[28]);
  nand_gate nand_I27(A[27], B[27], muxin2_4[27]);
  nand_gate nand_I26(A[26], B[26], muxin2_4[26]);
  nand_gate nand_I25(A[25], B[25], muxin2_4[25]);
  nand_gate nand_I24(A[24], B[24], muxin2_4[24]);
  nand_gate nand_I23(A[23], B[23], muxin2_4[23]);
  nand_gate nand_I22(A[22], B[22], muxin2_4[22]);
  nand_gate nand_I21(A[21], B[21], muxin2_4[21]);
  nand_gate nand_I20(A[20], B[20], muxin2_4[20]);
  nand_gate nand_I19(A[19], B[19], muxin2_4[19]);
  nand_gate nand_I18(A[18], B[18], muxin2_4[18]);
  nand_gate nand_I17(A[17], B[17], muxin2_4[17]);
  nand_gate nand_I16(A[16], B[16], muxin2_4[16]);
  nand_gate nand_I15(A[15], B[15], muxin2_4[15]);
  nand_gate nand_I14(A[14], B[14], muxin2_4[14]);
  nand_gate nand_I13(A[13], B[13], muxin2_4[13]);
  nand_gate nand_I12(A[12], B[12], muxin2_4[12]);
  nand_gate nand_I11(A[11], B[11], muxin2_4[11]);
  nand_gate nand_I10(A[10], B[10], muxin2_4[10]);
  nand_gate nand_I9(A[9], B[9], muxin2_4[9]);
  nand_gate nand_I8(A[8], B[8], muxin2_4[8]);
  nand_gate nand_I7(A[7], B[7], muxin2_4[7]);
  nand_gate nand_I6(A[6], B[6], muxin2_4[6]);
  nand_gate nand_I5(A[5], B[5], muxin2_4[5]);
  nand_gate nand_I4(A[4], B[4], muxin2_4[4]);
  nand_gate nand_I3(A[3], B[3], muxin2_4[3]);
  nand_gate nand_I2(A[2], B[2], muxin2_4[2]);
  nand_gate nand_I1(A[1], B[1], muxin2_4[1]);
  nand_gate nand_I0(A[0], B[0], muxin2_4[0]);
  
  mux2x1_32bit mux2to1_I1(muxin2_1, muxin2_2, CTRL[2], muxin4_1);
  mux2x1_32bit mux2to1_I2(muxin2_3, muxin2_4, CTRL[2], muxin4_2);
  
  barrel_shifter shifter_I(A[4:0], B, {CTRL[2],CTRL[3]}, muxin4_4);
  
  mux4x1_32bit mux4to1_I1(muxin4_1, muxin4_2, muxin4_3, muxin4_4, CTRL[1:0], Y);
     
endmodule