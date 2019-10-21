`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2019 15:37:17
// Design Name: 
// Module Name: MIN9
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MAX3(clock,Enable, a, b, c, dataout) ;
input clock;
input Enable;
input [7:0] a, b, c;
output [7:0] dataout ;
reg [7:0] values[1:3];
integer i,ADDR,temp=1;
always @(posedge clock) begin
if (Enable) begin
values[1]= a;
values[2]= b;
values[3]= c;
end
for (i = 1; i < 3; i=i+1) begin
if (values[i] < values[i+1] )
ADDR = i+1;  
else
ADDR = i;
if (values[temp] <  values[ADDR])
temp = ADDR;
end
end
assign dataout = values[temp];
endmodule 
