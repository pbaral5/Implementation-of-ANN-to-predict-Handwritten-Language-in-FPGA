`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 02:05:04 PM
// Design Name: 
// Module Name: testbench3
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


module testbench3();
parameter half_cycle = 20;

reg[127:0] data_p[39:0];
reg[127:0] data_w[39:0];
wire[21:0] dout;
//wire[19:0] s;

reg[7:0] count;
reg[127:0] p,w;
reg[7:0] b;
wire[7:0] out1;

reg clk,rst1,rst2;
wire clk2;

integer outfile;
integer outfile2;

assign #2 clk2 = clk;

mac_acc uut(clk2,rst2,p,w,b,dout,out1);

initial begin
$readmemh("digits_hex.txt",data_p);
$readmemh("weights_hex.txt",data_w);
outfile = $fopen("nodeout.txt","w");
outfile2 = $fopen("final1.txt","w");
clk = 0;
count = 0;
rst1 = 1;
rst2 = 1;
b = 11;
#145 rst1 = 0;
end

always #half_cycle clk=!clk;

always@(posedge clk) begin
if(count>7&(count[1:0]==2'b00))
$fdisplay(outfile, "%h",out1);
end

always@(posedge clk)
if(count>3)
$fdisplay(outfile2,"%h",dout);

always@(posedge clk2) begin
p = data_p[count];
w= data_w[count];

if(!rst1) begin
count = count+1;

if(count == 4)
rst2=0;

if(count == 45) begin
$fclose(outfile);
$fclose(outfile2);
$finish;
end
end
end
endmodule
