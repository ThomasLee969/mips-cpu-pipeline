`timescale 1ns/1ps

module IDEXreg(clk,instructionin,DatabusAin,DatabusBin,immin,PCplusin,
RegDstin,RegWrin,ALUSrc1in,ALUSrc2in,ALUFunin,Signin,MemWrin,MemRdin,MemtoRegin,
RegDstout,RegWrout,ALUSrc1out,ALUSrc2out,ALUFunout,Signout,MemWrout,MemRdout,MemtoRegout,
instructionout,DatabusAout,DatabusBout,immout,PCplusout);

input clk;
input [31:0] instructionin;
input [31:0] DatabusAin;
input [31:0] DatabusBin;
input [31:0] immin;
input [31:0] PCplusin;
input [1:0] RegDstin;
input RegWrin;
input ALUSrc1in;
input ALUSrc2in;
input [5:0] ALUFunin;
input Signin;
input MemWrin;
input MemRdin;
input [1:0] MemtoRegin;
output [1:0] RegDstout;
reg [1:0] RegDstout;
output RegWrout;
reg RegWrout;
output ALUSrc1out;
reg ALUSrc1out;
output ALUSrc2out;
reg ALUSrc2out;
output [5:0] ALUFunout;
reg [5:0] ALUFunout;
output Signout;
reg Signout;
output MemWrout;
reg MemWrout;
output MemRdout;
reg MemRdout;
output [1:0] MemtoRegout;
reg [1:0] MemtoRegout;
output [31:0] instructionout;
reg [31:0] instructionout;
output [31:0] DatabusAout;
reg [31:0] DatabusAout;
output [31:0] DatabusBout;
reg [31:0] DatabusBout;
output [31:0] immout;
reg [31:0] immout;
output [31:0] PCplusout;
reg [31:0] PCplusout;

always @(posedge clk)
begin
  RegDstout <= RegDstin;
  RegWrout <= RegWrin;
  ALUSrc1out <= ALUSrc1in;
  ALUSrc2out <= ALUSrc2in;
  ALUFunout <= ALUFunin;
  Signout <= Signin;
  MemWrout <= MemWrin;
  MemRdout <= MemRdin;
  MemtoRegout <= MemtoRegin;
  instructionout <= instructionin;
  DatabusAout <= DatabusAin;
  DatabusBout <= DatabusBin;
  immout <= immin;
  PCplusout <= PCplusin;
end

endmodule
