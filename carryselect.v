`timescale 1ns / 1ps
module fulladder
        (    a,b,cin,
           sum,carry
            );
            input  a;
            input b;
            input cin;
output sum;
output carry;            

assign sum = a ^ b ^ cin;
assign carry = (a & b) | (cin & b) | (a & cin);

endmodule



module multiplexer2
        (    i0,i1,sel,
             bitout
            );
input i0;
input i1;
input sel;
output reg bitout;

always@(i0,i1,sel)
begin
if(sel == 0)
    bitout = i0;
else
    bitout = i1; 
end

endmodule



module carryselect_32_bit (   a,b,
             cin,
           sum,
           cout
            );
            input [31:0] a;
            input [31:0] b;
            input cin;
            output [31:0] sum;
            output cout;
        

wire [31:0] temp0,temp1;
wire [32:0]carry0,carry1;
assign carry0[0]=0;
assign carry1[0]=1;
genvar i;

generate for(i=0;i<32;i=i+1)
begin
fulladder fa0(a[i],b[i],carry0[i],temp0[i],carry0[i+1]); 
fulladder fa1(a[i],b[i],carry1[i],temp1[i],carry1[i+1]);   
 multiplexer2 mux_sum(temp0[i],temp1[i],cin,sum[i]);
end
endgenerate


multiplexer2 mux_carry(carry0[32],carry1[32],cin,cout);

endmodule 
