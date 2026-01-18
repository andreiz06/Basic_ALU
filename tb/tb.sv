`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2026 01:35:38 PM
// Design Name: 
// Module Name: tb
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


module tb;

  // DUT signals
  logic [7:0] data0;
  logic [7:0] data1;
  logic [3:0] instruction;
  logic [7:0] result;
  logic carry_flag;
  logic zero_flag;

  // Instantiate ALU
  ALU DUT 
  (
    .data0(data0),
    .data1(data1),
    .instruction(instruction),
    .result(result),
    .carry_flag(carry_flag),
    .zero_flag(zero_flag)
  );

  initial 
  begin
    // Run all tests
    data0 = 100;
    data1 = 50;
    instruction = 4'b0000; // test for shift left
    #10;
    instruction = 4'b0100; // test for shift right
    #10;
    instruction = 4'b1000; // test for add
    #10;
    instruction = 4'b1100; // test for sub
    #10;
    instruction = 4'b0001; // test for and
    #10;
    instruction = 4'b0101; // test for or
    #10;
    instruction = 4'b1001; // test for xor
    #10;
    instruction = 4'b1101; // test for special module
    #10;
    $stop(); // End simulation
  end

endmodule