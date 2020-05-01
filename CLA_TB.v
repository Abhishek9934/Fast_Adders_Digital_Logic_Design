`timescale 1ns / 1ps
module CLA_tb;
  reg cin;
  reg [31:0] a;
  reg [31:0] b;
  wire [31:0] sum;
  wire cout;

carrylookahead32bit uut
  (
    .a(a),
    .b(b),
    .sum(sum),
    .cin(cin),
    .cout(cout)
 
  );

 initial begin
$display($time, " << Starting the Simulation >>");
     a=0; b=0; cin=0;
#100 a= 32'b00000000000111110000000000011111; b=32'b0000000000011000000000000011111; cin=1'b0;
#100 a= 32'b00000000000111110000000000011111; b=32'b0000000000000000001111100001100; cin=1'b0;
#100 a= 32'b11000110000111110000000000011111; b=32'b0000000000000000011111110001100; cin=1'b1;
#100 a= 32'b11111111110000000000011111111111; b=32'b0000000000000000111110000000000; cin=1'b1;
end
 
endmodule
