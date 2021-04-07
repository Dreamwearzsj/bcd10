`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/23 16:41:18
// Design Name: 
// Module Name: test
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


module test();
reg [3:0]A,B;
reg cin;
wire [3:0]sum;
wire cout;
initial 
begin
    #10 A=2;B=3;cin=0;
    #10 A=2;B=3;cin=1;
    #10 A=6;B=3;cin=1;
    #10 A=8;B=3;cin=0;
    #10 A=9;B=3;cin=1;
     #10 A=8;B=9;cin=0;
    #10 A=9;B=9;cin=1;
end
add10 s(A,B,cin,cout,sum);
endmodule
