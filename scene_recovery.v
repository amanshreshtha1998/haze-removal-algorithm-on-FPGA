`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2019 14:37:23
// Design Name: 
// Module Name: scene_recovery
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


module scene_recovery( clock, Ar, R, t, Jr, Jr_temp );

input clock;
input [7:0] Ar, R, t;
output [7:0] Jr;
reg Jr_flag;
output reg [15:0] Jr_temp;
reg [7:0] Ar_temp;
reg [7:0] Jr;

always @(posedge clock)
begin
Ar_temp = Ar;
end

always @(Ar or R) // because Ar, R can change at any time, I have to give this always block
begin
    if(R > Ar)
    Jr_flag = 1'b1;
    else Jr_flag = 1'b0;
end

always @(Ar or R)
begin
    if(R > Ar)
    Jr_temp = ((R-Ar)<<8)/t;
    else Jr_temp = ((Ar-R)<<8)/t;
end

always @(Jr_temp, Ar_temp)
begin
if(Jr_flag == 0)
    begin
    if(Ar_temp > Jr_temp)
        Jr = 8'b0;
    else Jr = Jr_temp - Ar_temp;
    end
else if(Jr_flag == 1)
    Jr = Jr_temp + Ar_temp;
end

endmodule
