
module adder (
  	input wire[31:0] A, 
  	input wire[31:0] B,
  	input wire S,
  	output reg[31:0] Y
);

  	always @(*)
    begin
      	case(S)
        	0 : Y = A+B;
        	1 : Y = A-B;
        endcase      
    end  
    
endmodule