//two input NAND gate

module nand2 (
  	input wire A, 
  	input wire B,
  	output wire Y
);
  
	assign Y = ~ (A & B);
    
endmodule