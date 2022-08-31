`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2022 12:41:56
// Design Name: 
// Module Name: lfsr
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


module dff(
input d,
input clk,
output reg q

);

 always@(posedge clk)   
   begin
   q<=d; 
  
  end
endmodule

module lsrf(
output [2:0]m,
input clk);
wire a,b,c;
wire d=1'b0;
wire [2:0]e;
dff d1(d,clk,a);
dff d2(a,clk,b);
dff d3(b,clk,c);
xor(d,b,c);
//assign i=d;
assign e={c,b,a};
assign m=e;
// o<={c,b,a};
endmodule
