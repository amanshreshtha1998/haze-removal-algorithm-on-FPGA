`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2019 16:07:10
// Design Name: 
// Module Name: alight_est_t
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


module alight_est_t();

reg clock;
reg Enable;
reg [7:0] r1, r2, r3, r4, r5, r6, r7, r8, r9;
wire [7:0] A, temp, min;

alight_est red_est (clock, Enable, r1, r2, r3, r4, r5, r6, r7, r8, r9, A, temp, min);

initial 
begin

r1 = 8'd0;
r2 = 8'd0;
r3 = 8'd0;
r4 = 8'd0;
r5 = 8'd0;
r6 = 8'd0;
r7 = 8'd0;
r8 = 8'd0;
r9 = 8'b0;

Enable = 1'b0;
clock = 1'b0;
#5
clock = 1'b1;
#5
Enable = 1'b1;
#5
clock = 1'b0;
#5
r1 = 8'd191;
r2 = 8'd187;
r3 = 8'd194;
r4 = 8'd185;
r5 = 8'd205;
r6 = 8'd200;
r7 = 8'd195;
r8 = 8'd190;
r9 = 8'd186;

#5
clock = 1'b1;
#10
clock = 1'b0;
#5
r1 = 8'd207;
r2 = 8'd206;
r3 = 8'd205;
r4 = 8'd204;
r5 = 8'd203;
r6 = 8'd202;
r7 = 8'd201;
r8 = 8'd198;
r9 = 8'd200;
#5
clock = 1'b1;
#10
clock = 1'b0;
#5
r1 = 8'd207;
r2 = 8'd206;
r3 = 8'd205;
r4 = 8'd204;
r5 = 8'd203;
r6 = 8'd202;
r7 = 8'd201;
r8 = 8'd195;
r9 = 8'd200;
#5
clock = 1'b1;
#10
clock = 1'b0;
#5
r1 = 8'd207;
r2 = 8'd206;
r3 = 8'd205;
r4 = 8'd204;
r5 = 8'd203;
r6 = 8'd202;
r7 = 8'd201;
r8 = 8'd199;
r9 = 8'd200;
#5
clock = 1'b1;
#10
clock = 1'b0;
#10
clock = 1'b1;
#10
clock = 1'b0;
$finish;

end

endmodule


