`timescale 1ns / 1ps

module ling(sum,cout,a,b,h0);
output [3:0] sum; 
output cout; 
input [3:0] a;
input [3:0] b; 
input h0; 
wire [3:0] t;
wire [3:0] g;
wire [4:1] h;
assign g[3:0]=a[3:0] & b[3:0];
assign t[3:0]=a[3:0] | b[3:0]; 
assign h[1]=g[0] | (h0&t[0]); 
assign h[2]=(g[1] | g[0] | (t[0]&h0));
assign h[3]=g[2] | g[1] | (g[0]&t[1]) | (t[0]&t[1]&h0);
assign h[4]=g[3] | g[2] | (g[1]&t[2]) | (g[0]&t[1]&t[2]) | (t[0]&t[1]&t[2]&h0);
assign cout=h[4] & t[3]; 
assign sum[0]=(t[0] ^ h[1]) | (h0 & t[0] & g[0]); 
assign sum[3:1]=(t[3:1] ^ h[4:2]) | (h[3:1] & t[2:0] & g[3:1]);
endmodule
module lingadder32_bit(a,b,cin,sum,cout);
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

ling la(.a(a[3+i:i]),.b(b[3+i:i]),.h0(c[i]),.cout(c[i+4]),.sum(sum[3+i:i])); 
end
endgenerate
assign cout =c[32];
endmodule


