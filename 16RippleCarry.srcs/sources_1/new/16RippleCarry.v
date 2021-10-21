`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2021 04:30:38 PM
// Design Name: 
// Module Name: 16RippleCarry
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


module RippleCarry16(X, Y, cin, sum, cout);
    input [15:0] X, Y;
    input cin;
    output [15:0] sum;
    output cout;
    wire [2:0] carry;

    RippleCarry s1(X[3:0], Y[3:0], cin, sum[3:0], carry[0]);
    RippleCarry s2(X[7:4], Y[7:4], carry[0], sum[7:4], carry[1]);
    RippleCarry s3(X[11:8], Y[11:8], carry[1], sum[11:8], carry[2]);
    RippleCarry s4(X[15:12], Y[15:12], carry[2], sum[15:12], cout);
    
endmodule
