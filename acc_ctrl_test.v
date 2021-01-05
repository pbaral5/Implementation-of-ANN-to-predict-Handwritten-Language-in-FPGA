`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2020 04:36:54 PM
// Design Name: 
// Module Name: acc_ctrl_test
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


module acc_ctrl_test();
    parameter half_cycle = 20;
    reg clk,rst;
    wire sel,en;
    
    acc_control inst1(clk,rst,sel,en);
    
    always #half_cycle clk=!clk;
    
    initial begin
    clk=0;
    rst = 1;
    #120 rst = 0;
    end
    endmodule
