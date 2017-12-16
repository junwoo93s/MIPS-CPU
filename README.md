# MIPS-CPU
In this project, the students will implement a pipeline CPU using the Xilinx design package for FPGAs. You can use any information available in previous labs if needed.
1. Pipelining
As described in lab 4
2. Circuits of the Instruction Fetch Stage
As described in lab 4
3. Circuits of the Instruction Decode Stage
As described in lab 4
4. Circuits of the Execution Stage
As described in lab 5
5. Circuits of the Memory Access Stage
As described in lab 5
6. Circuits of the Write Back Stage
As described in lab 6
In order to focus our attention on the WB stage easily, the baseline CPU shown in Figure 1 is redrawn by putting the register file on the WB stage where the execution result of an instruction is written as shown in Figure 2. The state of the art content can be read correctly in the ID stage after it is written at the end of its WB stage. Data hazards occur in the code example shown in Figure 3. One solution that you need to do is to force these instructions to wait until the register $3 is updated by the first instruction. This waiting is called a pipeline stall

Going to use MIPS code formed in binary code
For this CPU we are going to use 

Add $3, $1, $2
sub $4, $9, $3
or $5, $3, $9
xor $6, $3, $9
and $7, $3, $9

hazard occurs in $3 and line 2,3,4 and 5
fix the hazard with the stall. 
