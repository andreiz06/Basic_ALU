`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2025 03:18:21 PM
// Design Name: 
// Module Name: mux
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



module MUX4
(
    input logic [7:0]  in0,
    input logic [7:0]  in1,
    input logic [7:0]  in2,
    input logic [7:0]  in3,
    input logic [1:0]  sel,
    output logic [7:0] out
);

always_comb
begin
    case(sel)
    0: out = in0;
    1: out = in1;
    2: out = in2;
    3: out = in3;
    default: out = in0;
    endcase
end
endmodule
