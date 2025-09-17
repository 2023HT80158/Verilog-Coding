4-Stage Pipelined RISC Processor Design:

STATEMENT: Given that the sequence of instructions to be executed by the processor is guaranteed to be free from pipeline hazards,
design a 4 – stage (Instruction Fetch; Decode and read operand; execute; write back) pipelined RISC processor that can execute 
following register to – register instructions with a throughput of one instruction per clock –cycle: ADD , Barrel shifter, XOR, NOR.
The adder and barrel shifter, ALU designed in assignment-1 should be used here.

Overview:
This processor is a 4-stage pipelined RISC processor executing the following register-to-register instructions: 
ADD, SHIFT (Barrel Shifter), XOR, and NOR. It supports a throughput of one instruction per clock cycle, assuming no hazards due to the 
specific ordering of instructions.
