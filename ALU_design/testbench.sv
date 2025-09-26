// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
import enum_pkg::*;
module Alu_tb();
  logic [7:0]A;
  logic [7:0]B;
  logic [7:0]out;
  Opcode op;
  
  ALU_design uut(.A(A),.B(B), .out(out), .op(op));
  
  
  task run_test(input [7:0]a_in, input [7:0]b_in, input Opcode op_in, input [7:0] expected);
    begin
      A= a_in;
      B= b_in;
      op = op_in;
      #1;
      if(out !== expected)
        begin
          $display(" Test failed A = %0b, B= %0b, expected = %0b got out = %ob", A, B, expected, out);
        end
      else begin
        $display(" Test passed A= %b, B= %0b, expected = %0b, got out = %0b", A, B, expected, out);
      end
    end
  endtask
  
  initial begin
    $display(" start ALU testbench -------------------");
    //Runtest
    
    run_test(10, 5, Add, 15);
    run_test(10, 5, Sub, 5);
    
    run_test(8'h0F, 8'hF0, And, 8'h00);
    run_test(8'h0F, 8'hF0, Or,  8'hFF);
    run_test(8'hAA, 8'h55, Xor, 8'hFF);
    run_test(8'd10, 8'd2, Leftshift, 8'd40);
    run_test(8'd128, 8'd1, RightshiftLogic, 8'd64);
    run_test(8'd128, 8'd1, RightshiftArith, 8'd192); // signed behavior
    run_test(8'd50, 8'd50, Equal, 8'd1);
    run_test(8'd25, 8'd30, Equal, 8'd0);
    
    $finish;
  end
endmodule 
