// Testbench for ALU

module testbench;
  
  reg[31:0] A;
  reg[31:0] B;
  reg[3:0] CTRL;
  reg[31:0] OUT;
  
  alu DUT(A, B, CTRL, OUT);
  
  initial
    begin
	
		$dumpfile("dump.vcd"); $dumpvars;
		
        //ADD 5 and 6
      	#(1us);      
      	A=32'h05;
      	B=32'h06;
      	CTRL=4'b0010;
      	#(1us);
      	$display("A=%0d, B=%0d, CTRL=%0d, OUT=%0d",A,B,CTRL,OUT);
        
      	//Subtract 10 by 4
      	#(1us);      
      	A=32'h0A;
      	B=32'h04;
      	CTRL=4'b0110;
      	#(1us);
      	$display("A=%0d, B=%0d, CTRL=%0d, OUT=%0d",A,B,CTRL,OUT);    

    end  
  
endmodule