// Code your design here
import enum_pkg::*;
  

module ALU_design(
  input logic [7:0] A,
  input logic [7:0] B,
  input Opcode op,
  output logic [7:0] out
);
   	
always_comb begin
  case (op)
    Add : out = A+B;
    Sub : out = A-B;
    Leftshift : out = A<<B;
    RightshiftArith : out = A>>>B;
    RightshiftLogic : out = A >>B;
    And : out = A & B;
    Or : out = A | B;
    Xor : out = A^B;
    Equal : out = (A==B) ? 1'b1:1'b0;
    default: out = 0;
  endcase
end
endmodule
    
    
  
