//two input OR gate

module or2 (
  	input wire A, 
  	input wire B,
  	output wire Y
);
  
	assign Y = A | B;
    
endmodule