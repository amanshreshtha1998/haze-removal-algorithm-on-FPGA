`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2019 15:32:57
// Design Name: 
// Module Name: division_t
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


module division_t();

reg [7:0] a,b;
wire [15:0] out;

division div ( a, b, out );

initial
begin
#5
a = 8'd100;
b = 8'd200;
#5
a = 8'd14;
b = 8'd160;
#5
$finish;

end

endmodule
