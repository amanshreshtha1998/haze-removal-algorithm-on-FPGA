`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2019 15:18:46
// Design Name: 
// Module Name: atmospheric_light_estimation
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


module atmospheric_light_estimation(
clock, Enable, r1, r2, r3, r4, r5, r6, r7, r8, r9,
g1, g2, g3, g4, g5, g6, g7, g8, g9, b1, b2, b3, b4, b5, b6, b7, b8, b9, Ar, Ag, Ab );

input clock;
input Enable;
input [7:0] r1, r2, r3, r4, r5, r6, r7, r8, r9;
input [7:0] g1, g2, g3, g4, g5, g6, g7, g8, g9;
input [7:0] b1, b2, b3, b4, b5, b6, b7, b8, b9;
output [7:0] Ar, Ag, Ab;

alight_est alight_red (clock, Enable, r1, r2, r3, r4, r5, r6, r7, r8, r9, Ar);
alight_est alight_blue (clock, Enable, b1, b2, b3, b4, b5, b6, b7, b8, b9, Ab);
alight_est alight_green (clock, Enable, g1, g2, g3, g4, g5, g6, g7, g8, g9, Ag);

endmodule
