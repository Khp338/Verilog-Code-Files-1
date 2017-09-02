module fulladder(input a,b,cin,output s,cout);
wire c,e,f;
xor(c,a,b);
xor(s,cin,c);
and(e,a,b);
and(f,c,cin);
or(cout,f,e);
endmodule

module compare(input [3:0]a,b,output v,n,z);
parameter cin=1'b1;
wire [3:0]s,carry;
wire c,d,e,f,g,p,q,r;
assign c=~b[0];
assign d=~b[1];
assign e=~b[2];
assign f=~b[3];
fulladder f1(.a(a[0]),.b(c),.cin(cin),.cout(carry[0]),.s(s[0]));
fulladder f2(.a(a[1]),.b(d),.cin(carry[0]),.cout(carry[1]),.s(s[1]));
fulladder f3(.a(a[2]),.b(e),.cin(carry[1]),.cout(carry[2]),.s(s[2]));
fulladder f4(.a(a[3]),.b(f),.cin(carry[2]),.cout(carry[3]),.s(s[3]));
assign v=carry[3]^carry[2];
assign n=s[3];
assign z=~(s[3]||s[2]||s[1]||s[0]);
endmodule
