`timescale 1ns / 1ps

 module CLA(a,b,cin,cout,sum);
 input [3:0]a,b;
 output [3:0]sum;
 input cin;
 output cout;
 wire [3:0]G,P,C;
 assign G = a&b;
 assign P = a^b;
 assign cout=G[3]+ (P[3]&G[2]) + (P[3]&P[2]&G[1]) +  (P[3]&P[2]&P[1]&G[0]) + (P[3]&P[2]&P[1]&P[0]&cin);
 assign C[3]=G[2] + (P[2]&G[1]) + (P[2]&P[1]&G[0]) +  (P[2]&P[1]&P[0]&cin);
 assign C[2]=G[1] + (P[1]&G[0]) + (P[1]&P[0]&cin);
 assign C[1]=G[0] + (P[0]&cin);
 assign C[0]=cin;
 assign sum= {cout,P^C};
endmodule
module carrylookahead32bit(a,b,cin,sum,cout);
input [31:0]a;
input [31:0]b;
input cin;
output cout;
output [31:0]sum;
wire [32:0]c;
assign c[0]=cin;
genvar i;
generate
for(i=0;i<32;i=i+4)
begin

CLA ca(.a(a[3+i:i]),.b(b[3+i:i]),.cin(c[i]),.cout(c[i+4]),.sum(sum[3+i:i])); 
end
endgenerate
assign cout =c[32];
endmodule





