`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 09:48:34 PM
// Design Name: 
// Module Name: adder17
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


module adder17(
input signed[16:0] a,
input signed[16:0] b,
output signed[17:0] s
    );
    assign s=a+b;
endmodule
