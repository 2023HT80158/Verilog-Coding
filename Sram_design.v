module SRAM1(
  input clk,
  input [7:0] data_in,
  input wr,
  input rd,
  input [2:0] addr,
  output [7:0] data_out);
  
  reg [7:0]ram[0:7];
  always @(posedge clk)
    begin
      if(wr)
        ram[addr] <= data_in;
    end
  assign data_out = rd ? ram[addr] : 8'bzzzzzzzz;
endmodule
