`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2020 01:45:18 PM
// Design Name: 
// Module Name: ipwrapper
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


module ip(
input[21:0] dout,
output [7:0] out
    );
wire sign;
reg a,b,ovr;
wire[8:0] addr; 
//reg[21:0] dout;
//reg d;
//d = dout[21];
 //sign = dout[21];
//always @(*) begin
 assign sign = dout[21];
 assign addr = dout[13:5];
//if(dout[21] == 0)
always @(*) begin
if(dout[21] == 0)
ovr = |(dout[20:14]);
else
ovr = (~(&(dout[20:14])))||(~(|(dout[13:5])));
//assign ovr = (sign)?((~(&(dout[20:14])))||(~(|(dout[13:5])))):(|(dout[20:14]));
end
sigmoid_0 u4(addr,sign,ovr,out);
//else begin
// a = ~(&(dout[20:14]));
 //b = ~(|(dout[13:5]));
 //assign ovr = a || b;
endmodule