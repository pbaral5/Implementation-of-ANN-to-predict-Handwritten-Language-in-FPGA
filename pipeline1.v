`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 11:01:17 AM
// Design Name: 
// Module Name: pipeline
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


module pipeline1(
input clk,
input [127:0] pixels,
input[127:0] weights,
output[19:0] sumout
    );
    
reg[127:0] pix;
reg[127:0] wei;
wire[19:0] sum;
reg[19:0] sumout;
reg[255:0] p1;

wire[255:0] p;
wire[135:0] s1;
wire[71:0] s2;
wire[37:0] s3;

always @(posedge clk) begin
pix<=pixels;
wei<=weights;
p1<=p;
sumout<=sum;
end


genvar i;
generate
for(i=0;i<=15;i=i+1)
    mult multiply(pix[(127-8*i):(127-8*i-7)],wei[(127-8*i):(127-8*i-7)],
                    p[(255-16*i):(255-16*i-15)]);
endgenerate
genvar k;
generate
for(k=0;k<=7;k=k+1)
    adder add(p1[(255-16*2*k):(255-16*2*k-15)],p1[(255-16*(2*k+1)):(255-16*(2*k+1)-15)],
                s1[(135-17*k):(135-17*k-16)]);
endgenerate
adder17 add1(s1[135:119],s1[118:102],s2[71:54]);
adder17 add2(s1[101:85],s1[84:68],s2[53:36]);
adder17 add3(s1[67:51],s1[50:34],s2[35:18]);
adder17 add4(s1[33:17],s1[16:0],s2[17:0]);

adder18 add5(s2[71:54],s2[53:36],s3[37:19]);
adder18 add6(s2[35:18],s2[17:0],s3[18:0]);

adder19 add7(s3[37:19],s3[18:0],sum);

endmodule

