`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2019 15:26:28
// Design Name: 
// Module Name: alight_est
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


module alight_est( clock, Enable, r1, r2, r3, r4, r5, r6, r7, r8, r9, A, temp, min );

input clock;
input Enable;
input [7:0] r1, r2, r3, r4, r5, r6, r7, r8, r9;
output [7:0] A, temp;
output [7:0] min;
reg [7:0] temp, A;

always @(posedge Enable)
begin
temp = 8'd180;
end

MIN9 channel_min (clock, Enable, r1, r2, r3, r4, r5, r6, r7, r8, r9, min);

always @(posedge clock)
begin
 
    if(min > temp)
        A = min;
    else A = temp;
    temp = A;
end

endmodule
