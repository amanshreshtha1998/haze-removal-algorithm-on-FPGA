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


module MAX3_t();

reg clock;
reg Enable;
reg [7:0] a, b, c;
wire [7:0] dataout ;

MAX3 max (clock,Enable, a, b, c, dataout) ;

initial begin

Enable = 1'b1;
clock = 1'b0;
a = 8'b01010101;
b = 8'b10101010;
c = 8'b00001111;
#10
clock = 1'b1;
#10
$finish;

end

endmodule
