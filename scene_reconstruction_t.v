`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2019 15:07:23
// Design Name: 
// Module Name: scene_reconstruction_t
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


module scene_reconstruction_t( );

reg clock;
reg [7:0] Ar, R, t;
wire [7:0] Jr;
wire [15:0] Jr_temp;

scene_recovery recover ( clock, Ar, R, t, Jr, Jr_temp );

initial 
begin

clock = 1'b0;
#5 
clock = 1'b1;

Ar = 8'd190;
R = 8'd176;
t = 8'd160;

#5 

Ar = 8'd190;
R = 8'd210;
t = 8'd160;

#5

$finish;

end

endmodule
