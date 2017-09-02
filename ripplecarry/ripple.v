module fulladder(input a,b,cin,output s,cout);
wire c,e,f;
xor(c,a,b);
xor(s,cin,c);
and(e,a,b);
and(f,c,cin);
or(cout,f,e);
endmodule

module ripple(input [3:0] a,input [3:0] b,input cin,output [3:0] s, output cout);
wire p,q,r;
fulladder f1(.cin(cin),.a(a[0]),.b(b[0]),.s(s[0]),.cout(p));
fulladder f2(.cin(p),.a(a[1]),.b(b[1]),.s(s[1]),.cout(q));
fulladder f3(.cin(q),.a(a[2]),.b(b[2]),.s(s[2]),.cout(r));
fulladder f4(.cin(r),.a(a[3]),.b(b[3]),.s(s[3]),.cout(cout));
endmodule
