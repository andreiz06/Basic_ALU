`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2026 01:27:25 PM
// Design Name: 
// Module Name: ALU
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



module ALU
(
    input logic [7:0] data0,
    input logic [7:0] data1,
    input logic [3:0] instruction,
    output logic [7:0] result,
    output logic carry_flag,
    output logic zero_flag
);

// SHIFT LEFT, SHIFT RIGHT, ADD, SUB, AND, OR, XOR
logic [7:0] shift_left;
logic [7:0] shift_right;
logic [7:0] add;
logic [7:0] sub;
logic [7:0] and_out;
logic [7:0] or_out;
logic [7:0] xor_out;

assign shift_left = data0<<data1;
assign shift_right = data0>>data1;
assign {carry_flag, add} = data0 + data1;
assign {carry_flag, sub} = data0 - data1;
assign and_out = data0 & data1;
assign or_out = data0 | data1;
assign xor_out = data0 ^ data1;

// SPECIAL MODULE

logic special_out;
special_module special_module
(
    .in0(data0),
    .in1(data1),
    .out(special_out)
);
logic [7:0] special_out8b;
assign special_out8b = {8'b0000_0000, special_out};

//MUXES
logic [7:0] mux1_out;
logic [7:0] mux2_out;
MUX4 MUX4_1
(
    .in0(shift_left),
    .in1(shift_right),
    .in2(add),
    .in3(sub),
    .sel(instruction[3:2]),
    .out(mux1_out)
);

MUX4 MUX4_2
(
    .in0(and_out),
    .in1(or_out),
    .in2(xor_out),
    .in3(special_out8b),
    .sel(instruction[3:2]),
    .out(mux2_out)
);

MUX4 MUX4_3
(
    .in0(mux1_out),
    .in1(mux2_out),
    .in2(1),
    .in3(special_out8b),
    .sel(instruction[1:0]),
    .out(result)
);

// ZERO FLAG

assign zero_flag = (result == 0);

endmodule
