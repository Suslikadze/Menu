`timescale 1ns / 1ps
module value_ROM(
    input [9:0] input_value, 
    input en,
    input trigger,
    output [7:0] exit_value
);

