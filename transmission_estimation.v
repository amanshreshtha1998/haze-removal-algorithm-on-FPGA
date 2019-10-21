`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2019 09:29:06
// Design Name: 
// Module Name: transmission_estimation
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


module transmission_estimation(clock, Enable, r1, r2, r3, r4, r5, r6, r7, r8, r9,
g1, g2, g3, g4, g5, g6, g7, g8, g9, b1, b2, b3, b4, b5, b6, b7, b8, b9, t);

input clock;
input Enable;
input [7:0] r1, r2, r3, r4, r5, r6, r7, r8, r9;
input [7:0] g1, g2, g3, g4, g5, g6, g7, g8, g9; 
input [7:0] b1, b2, b3, b4, b5, b6, b7, b8, b9;
output [7:0] t ;

wire [7:0] r_min;
wire [7:0] g_min;
wire [7:0] b_min; 
wire [7:0] BC; 
wire [7:0] DC;
wire [7:0] DC_neg;
wire [7:0] three_BC;

MIN9 r_min9 (clock, Enable, r1, r2, r3, r4, r5, r6, r7, r8, r9, r_min);

MIN9 g_min9 (clock, Enable, g1, g2, g3, g4, g5, g6, g7, g8, g9, g_min);

MIN9 b_min9 (clock, Enable, b1, b2, b3, b4, b5, b6, b7, b8, b9, b_min);

MAX3 max3_x (clock, Enable, r5, g5, b5, BC);

MIN3 min3 (clock, Enable, r_min, g_min, b_min, DC);
// ~ is bitwise negation

assign DC_neg = ~DC;

assign three_BC = BC + {BC[6:0],1'b0};

assign t = (DC_neg > three_BC) ? DC_neg : three_BC;

endmodule

