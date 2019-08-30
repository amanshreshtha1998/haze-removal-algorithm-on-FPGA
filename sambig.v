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


module sambig(clock,Enable, corrouti1,corrouti2,corrouti3,corrouti4,corrouti5, dataout) ;
input clock;
input Enable;
input [9:0]corrouti1,corrouti2,corrouti3,corrouti4,corrouti5;
output [9:0] dataout ;
reg [9:0] r1[1:5];
integer i,ADDR,temp=1;
always @(posedge clock) begin
if (Enable) begin
r1[1]= corrouti1;
r1[2]= corrouti2;
r1[3]= corrouti3;
r1[4]= corrouti4;
r1[5]= corrouti5;
end
for (i = 1; i < 4; i=i+1) begin
if (r1[i] < r1[i+1] )
ADDR = i+1;  //integer ko reg ki tarah data assign karte hai, like reg variable
else
ADDR = i;
if (r1[temp]< r1[ADDR])
temp = ADDR;
end
end
assign dataout = r1[temp];
endmodule 
