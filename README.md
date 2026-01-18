# SystemVerilog ALU Project

This project implements an 8-bit ALU with the following operations:
- Shift Left
- Shift Right
- Add
- Subtract
- AND, OR, XOR
- A special function based on bit comparison

## Structure

- `src/`: All SystemVerilog modules + Testbench
- `README.md`: This file

## Simulation
- You can run the testbench in Vivado.

## Expected outputs:
- data0 = 150
- data1 = 50

| Operation | Result (binary) | Result (decimal) |
| :--- | :--- | :--- |
| 100 >> 50 | 00000000 | 0 |
| 50 >> 100 | 00000000 | 0 |
| 100 << 50 | 00000000 | 0 |
| 50 << 100 | 00000000 | 0 |
| 100 + 50 | 10010110 | 150 |
| 100 - 50 | 00110010 | 50 |
| 100 \| 50 | 01110110 | 118 |
| 100 & 50 | 00100000 | 32 |
| 100 ^ 50 | 01010110 | 86 |
| 100 sp 50 | 00000001 | 1 |

- The `carry_flag` should be 0 constantly.
