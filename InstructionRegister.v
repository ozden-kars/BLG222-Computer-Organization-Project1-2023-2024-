`timescale 1ns / 1ps
module InstructionRegister(I,Write,LH, Clock, IROut);

input wire [7:0] I;
input wire Write;
input wire LH;
input wire Clock;
output reg [15:0] IROut;

always @ (posedge Clock) begin
    if(Write) begin
        if(LH) begin
            IROut[15:8] <= I[7:0];
        end else begin
            IROut[7:0] <= I[7:0];
        end
    end else begin
        IROut[15:0] <= IROut[15:0];
     end
end
endmodule