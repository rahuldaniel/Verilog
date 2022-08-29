`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2022 15:18:53
// Design Name: 
// Module Name: vend
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


module vend(in,rst,out,clk,cha

    );
    input [1:0]in;
    input clk,rst;
    output reg [1:0]cha;
    output reg out;
    reg[1:0] ps,ns;
    parameter s0=2'b00;
    parameter s1=2'b01;
    parameter s2=2'b10;
    
    always@(posedge clk)
    begin
        if (rst==1)
            begin
                 ps=0;
                 ns=0;
                 cha=2'b00;
                out =0;
            end
    
        else 
            ps=ns;
            
        case(ps)
        s0:
        if(in==0)
            begin 
                out=0;
                cha=2'b00;
                ns=s0;
            end
        else if(in==2'b01)
            begin
                ns=s1;
                out=0;
                cha = 2'b00;
            end
        else if(in==2'b10)
            begin
                ns=s1;
                out=0;
                cha=2'b00;
            end
          s0:
                   if(in==0)
                       begin 
                           out=0;
                           cha=2'b01;
                           ns=s0;
                       end
                   else if(in==2'b01)
                       begin
                           ns=s2;
                           out=0;
                           cha = 2'b00;
                       end
                   else if(in==2'b10)
                       begin
                           ns=s0;
                           out=1;
                           cha=2'b00;
                       end
                   s2:
                              if(in==0)
                                  begin 
                                      out=0;
                                      cha=2'b10;
                                      ns=s0;
                                  end
                              else if(in==2'b01)
                                  begin
                                      ns=s0;
                                      out=1;
                                      cha = 2'b00;
                                  end
                              else if(in==2'b10)
                                  begin
                                      ns=s0;
                                      out=1;
                                      cha=2'b01;
                                  end
                                          
        endcase
    end

endmodule
