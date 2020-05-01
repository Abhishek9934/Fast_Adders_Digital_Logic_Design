`timescale 1ns / 1ps
module carryskip32_bit(a,b,cin,sum,cout);
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

carry_skip_4bit cs(.a(a[3+i:i]),.b(b[3+i:i]),.ci(c[i]),.co(c[i+4]),.s(sum[3+i:i])); 
end
endgenerate
assign cout =c[32];
endmodule


module carry_skip_4bit(a, b, ci, co, s);
input [3:0] a,b;
input ci;
output [3:0] s;
output co;
wire [3:0] p;
wire c0;
wire bp;
 
ripple_carry_4_bit rca1 (.a(a[3:0]), .b(b[3:0]), .cin(ci), .sum(s[3:0]), .cout(c0));
generate_p p1(a,b,p,bp);
mux2X1 m0(.in0(c0),.in1(ci),.sel(bp),.out(co));
 
endmodule

 
module generate_p(a,b,p,bp);
input [3:0] a,b;
output [3:0] p;
output bp;
assign p= a^b;
assign bp= &p;
endmodule

module ripple_carry_4_bit(a, b, cin, sum, cout);
input [3:0] a,b;
input cin;
wire c1,c2,c3;
output [3:0] sum;
output cout;
 
full_adder fa0(.a(a[0]), .b(b[0]),.cin(cin), .sum(sum[0]),.cout(c1));
full_adder fa1(.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]),.cout(c2));
full_adder fa2(.a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]),.cout(c3));
full_adder fa3(.a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]),.cout(cout));
endmodule
 

module full_adder(a,b,cin,sum, cout);
input a,b,cin;
output sum, cout;
wire x,y,z;
half_adder h1(.a(a), .b(b), .sum(x), .cout(y));
half_adder h2(.a(x), .b(cin), .sum(sum), .cout(z));
or or_1(cout,z,y);
endmodule

module half_adder( a,b, sum, cout );
input a,b;
output sum, cout;
xor xor_1 (sum,a,b);
and and_1 (cout,a,b);
endmodule
 

 
module mux2X1( in0,in1,sel,out);
input in0,in1;
input sel;
output out;
assign out=(sel)?in1:in0;
endmodule

