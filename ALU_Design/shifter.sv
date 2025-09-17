//Barrel Shifter

module shifter (
  	input wire[4:0] A, 
  	input wire[31:0] B,
  	input wire[1:0] CTRL,
  	output reg[31:0] Y
);

  	always @(*)
    begin
      case(CTRL)
        	0 : Y = B << A; //Logic left shift
        	1 : Y = B >> A; //Logic right shift
        	2 : Y = $signed(B) >> A; //Arithmetic right shift
        	3 : Y = B; //No shift
        endcase      
    end  
    
endmodule