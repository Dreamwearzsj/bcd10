`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/23 15:39:29
// Design Name: 
// Module Name: add10
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


module add10(
    input [3:0]A,
    input [3:0]B,
    input cin, 
    output cout,
    output [3:0]sum
   
    );
   reg [4:0]tempsum;
    always@(*)
    begin
        if(A+B+cin<=5'd9)
            begin
                tempsum=A+B+cin;
            end
        else
            begin
                tempsum=A+B+cin+4'd6;
            end
    end
    assign {cout,sum}=tempsum;
    

    
    
endmodule
