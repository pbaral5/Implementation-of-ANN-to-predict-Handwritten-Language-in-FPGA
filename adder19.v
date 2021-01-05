`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 09:51:47 PM
// Design Name: 
// Module Name: adder19
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


module adder19(
input signed[18:0] a,
input signed[18:0] b,
output signed[19:0] s
    );
    assign s=a+b;
endmodule
