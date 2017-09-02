module addsubtest;
wire [3:0] s;
wire cout;
reg m;
reg [3:0] a;
reg [3:0] b;
ripple r(.m(m),.a(a),.b(b),.s(s),.cout(cout));
initial begin
#10 a=5;b=4;m=1'b1;
#10 a=5;b=5;m=1'b1;
#10 a=9;b=4;m=1'b0;
#10 $finish;
end
initial begin
$monitor($time," a %b b %b m %b ans %b cout %b",a,b,m,s,cout);
end
endmodule
