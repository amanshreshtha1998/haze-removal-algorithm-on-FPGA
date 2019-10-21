`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2019 17:19:32
// Design Name: 
// Module Name: sambig_t
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


module MIN9_t();

reg clock;
reg Enable;
reg [7:0] pixel_1, pixel_2, pixel_3, pixel_4, x, pixel_6, pixel_7, pixel_8, pixel_9;
wire [7:0] dataout ;

MIN9 min (clock,Enable, pixel_1, pixel_2, pixel_3, pixel_4, x, pixel_6, pixel_7, pixel_8, pixel_9, dataout) ;

initial begin

Enable = 1'b1;
clock = 1'b0;
pixel_1 = 8'b01010101;
pixel_2 = 8'b10101010;
pixel_3 = 8'b00001111;
pixel_4 = 8'b11110000;
x = 8'b10011001;
pixel_6 = 8'b00000001;
pixel_7 = 8'b00110011;
pixel_8 = 8'b10001100;
pixel_9 = 8'b01000001;
#10
clock = 1'b1;
#10
$finish;

end

endmodule
