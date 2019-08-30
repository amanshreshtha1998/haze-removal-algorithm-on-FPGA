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


module sambig_t();

reg clock;
reg Enable;
reg [9:0]corrouti1,corrouti2,corrouti3,corrouti4,corrouti5;
wire [9:0] dataout ;

sambig S0 (clock,Enable, corrouti1,corrouti2,corrouti3,corrouti4,corrouti5, dataout);

initial begin

Enable = 1'b1;
clock = 1'b0;
corrouti1 = 8'b01010101;
corrouti2 = 8'b10101010;
corrouti3 = 8'b00001111;
corrouti4 = 8'b11110000;
corrouti5 = 8'b10011001;
#10
clock = 1'b1;
#10
$finish;

end

endmodule

