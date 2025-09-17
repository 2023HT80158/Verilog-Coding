//2 to 1 mux

module mux2to1 (
  	input wire[31:0] A, 
  	input wire[31:0] B,
  	input wire S,
  	output reg[31:0] Y
);

  	always @(*)
    begin
      	case(S)
        	0 : Y = A;
        	1 : Y = B;
        endcase      
    end  
    
endmodule