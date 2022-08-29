`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2022 11:36:54
// Design Name: 
// Module Name: fifo
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


module fifo(
input [7:0] di, 
input clk, rst, rd,wr,
output emt,ful,
output reg [3:0] cnt,
output reg [7:0] do
    );
    reg [7:0] ram[0:7];
    reg [2:0] rp, wp;
    assign emt = (cnt==0);
    assign full =(cnt==8);
    always@(posedge clk )
      begin : write
        if(wr&&!full)
            ram[wp]<=di;
        else if(wr&&rd)
        ram[wp]<=di;
      end
      
    always@(posedge clk) begin :read
    if (rd&&!emt)
    do<= ram[rp];
    else if (rd&&wr)
    do<=ram[rp];
    end
    
    always@(posedge clk) begin :pointer
    if(rst) begin
    wp<=0;
    rp<=0;
    end
    else  begin
    wp<=((wr&&!full)||(wr&&!full)) ? wp+1 : wp;
    rp<=((rd&&!emt)||(rd&&wr)) ? rp+1 : rp; 
    end
    end 
    
    
    always@(posedge clk) begin : counter
    if (rst) cnt<=0;
    else begin
    case ({wr,rd})
    2'b00 : cnt<=cnt;
    2'b01 : cnt<=(cnt==0) ? 0 : cnt-1;
    2'b10 : cnt<=(cnt==8) ? 8 : cnt+1;
    2'b11 : cnt<=cnt;
    default :cnt<=cnt;
    endcase
    end
end
endmodule
