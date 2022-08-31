`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2022 17:17:52
// Design Name: 
// Module Name: lfsr2
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


module lfsr2(
input rst,
input clk,
output reg [4:0]o
    );
    wire fb;
    assign fb = ~(o[1]^o[3]);
    always@(posedge clk or posedge rst)
    begin
    if(rst==1'b1)
    o<=5'b00000;
    else
    assign o = {o[3:0], fb};
    end
  //  assign fb =  ;
    
endmodule
