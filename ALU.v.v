`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2022 14:40:19
// Design Name: 
// Module Name: top
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


module alu(
    input clk,
    input [3:0]a,
    input [3:0]b,
    input [2:0]c,

    output reg [3:0]o
    );
    always@(clk)
    begin
    case(c)
    3'b000 : o =o;
    3'b001 : o =a+b;
    3'b010 : o =a-b;
    3'b011 : o =a&b;
    3'b100 : o =a|b;
    3'b101 : o =a^b;
    3'b110 : o = ~a;
    3'b111 : o = ~b;
    endcase
    end
endmodule
