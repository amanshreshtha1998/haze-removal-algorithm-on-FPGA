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


module MIN9(clock,Enable, pixel_1, pixel_2, pixel_3, pixel_4,x, pixel_6, pixel_7, pixel_8, pixel_9, dataout) ;
input clock;
input Enable;
input [7:0] pixel_1, pixel_2, pixel_3, pixel_4, x, pixel_6, pixel_7, pixel_8, pixel_9;
output [7:0] dataout ;
reg [7:0] pixel_values[1:9];
integer i,ADDR,temp=1;
always @(posedge clock) begin
if (Enable) begin
pixel_values[1]= pixel_1;
pixel_values[2]= pixel_2;
pixel_values[3]= pixel_3;
pixel_values[4]= pixel_4;
pixel_values[5]= x;
pixel_values[6]= pixel_6;
pixel_values[7]= pixel_7;
pixel_values[8]= pixel_8;
pixel_values[9]= pixel_9;
end
for (i = 1; i < 9; i=i+1) begin
if (pixel_values[i] > pixel_values[i+1] )
ADDR = i+1;  //integer ko reg ki tarah data assign karte hai, like reg variable
else
ADDR = i;
if (pixel_values[temp] >  pixel_values[ADDR])
temp = ADDR;
end
end
assign dataout = pixel_values[temp];
endmodule 
