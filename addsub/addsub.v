module fulladder(input a,b,cin,output s,cout);
wire c,e,f;
xor(c,a,b);
xor(s,cin,c);
and(e,a,b);
and(f,c,cin);
or(cout,f,e);
endmodule

module ripple(input m,input [3:0] a,input [3:0] b,output [3:0] s, output cout);
wire p,q,r;
wire x,y,z,w;
assign x=b[0]^m; 
assign y=b[1]^m; 
assign z=b[2]^m; 
assign w=b[3]^m;
fulladder f1(.cin(m),.a(a[0]),.b(x),.s(s[0]),.cout(p));
fulladder f2(.cin(p),.a(a[1]),.b(y),.s(s[1]),.cout(q));
fulladder f3(.cin(q),.a(a[2]),.b(z),.s(s[2]),.cout(r));
fulladder f4(.cin(r),.a(a[3]),.b(w),.s(s[3]),.cout(cout));
endmodule
