`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2022 16:17:37
// Design Name: 
// Module Name: FSM1
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


module FSM1(
input clk,
input clr,
input din,
output reg dout,
output reg [2:0] present_state

    );
    reg [2:0] next_state;
    parameter s0=3'b000;
    parameter s1=3'b001;
    parameter s2=3'b010;
    parameter s3=3'b011;
    parameter s4=3'b100;
    
    always@(posedge clk or posedge clr)
    begin 
        if  (clr==1)
            present_state<=s0;
        else
            present_state<=next_state;
        end
        
always@(*)
begin 
    case(present_state)
        s0:if (din==1)
            next_state<=s1;
           else 
            next_state<=s0;
        s1:if (din==1)
            next_state<=s2;
           else 
            next_state<=s0;
        s2:if (din==0)
            next_state<=s3;
           else 
            next_state<=s2;
        s3:if (din==1)
            next_state<=s4;
           else 
            next_state<=s0;
        s4:if (din==1)
            next_state<=s2;
           else 
            next_state<=s0;
        default : next_state<=s0;
     endcase
   end
     
     always@(*)
     begin 
        if (clr) 
            dout =0;
        else if  (present_state==s4)
            dout =1;
        else 
            dout =0;
     end
endmodule
