`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 09:50:38 PM
// Design Name: 
// Module Name: adder18
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


module adder18(
input signed[17:0] a,
input signed[17:0] b,
output signed[18:0] s
    );
    assign s=a+b;
endmodule
