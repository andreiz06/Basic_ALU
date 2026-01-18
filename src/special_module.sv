`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2026 01:34:12 PM
// Design Name: 
// Module Name: special_module
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



module special_module
(
    input logic  [7:0] in0,
    input logic  [7:0] in1,
    output logic       out
);
assign out = (in0[7] == in1[7] && in0[0] == in1[0]);
endmodule
