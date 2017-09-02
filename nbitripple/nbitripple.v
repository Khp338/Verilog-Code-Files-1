module fulladder(input a,b,cin,output s,cout);
wire c,e,f;
xor(c,a,b);
xor(s,cin,c);
and(e,a,b);
and(f,c,cin);
or(cout,f,e);
endmodule

module nbitadd(s,c,a,b,cin);
parameter bit=7;
input cin;
input [bit-1:0]a;
input [bit-1:0]b;
output [bit-1:0]s;
output [bit-1:0]c;
generate
	genvar i;
	fulladder f0(.cin(cin),.a(a[0]),.b(b[0]),.s(s[0]),.cout(c[0]));
	for(i=1;i<bit;i=i+1) begin
	fulladder fi(.cin(c[i-1]),.a(a[i]),.b(b[i]),.s(s[i]),.cout(c[i]));
	end
endgenerate
endmodule
