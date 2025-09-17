//4 to 1 mux

module mux4to1 (
  	input wire[31:0] A, 
  	input wire[31:0] B,
  	input wire[31:0] C, 
  	input wire[31:0] D,
  	input wire[1:0] S,
  	output reg[31:0] Y
);

  	always @(*)
    begin
      	case(S)
        	0 : Y = A;
        	1 : Y = B;
           	2 : Y = C;
        	3 : Y = D;
        endcase      
    end  
    
endmodule