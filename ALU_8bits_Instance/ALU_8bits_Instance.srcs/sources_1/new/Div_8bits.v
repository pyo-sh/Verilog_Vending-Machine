`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/10 16:25:42
// Design Name: 
// Module Name: Div_8bits
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


module Div_8bits(
    output wire [7:0] OUT,
    input wire [7:0] IN1,
    input wire [7:0] IN2
    );
    
assign  OUT = IN1 / IN2;  

endmodule
