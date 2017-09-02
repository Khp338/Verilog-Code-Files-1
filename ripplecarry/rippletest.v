module rippletest;
wire [3:0] s;
wire cout;
reg cin;
reg [3:0] a;
reg [3:0] b;
ripple r(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
//fulladder f(.a(a),.b(b),.cin(cin),.cout(cout),.s(s));
initial begin
#10 a=4'b1101;b=4'b1011;cin=1'b1;
/*#10 a=1'b0;b=1'b0;cin=1'b0;
#10 a=1'b0;b=1'b0;cin=1'b1;
#10 a=1'b0;b=1'b1;cin=1'b0;
#10 a=1'b0;b=1'b1;cin=1'b1;
#10 a=1'b1;b=1'b0;cin=1'b0;
#10 a=1'b1;b=1'b0;cin=1'b1;
#10 a=1'b1;b=1'b1;cin=1'b0;
#10 a=1'b1;b=1'b1;cin=1'b1;*/
#10 $finish;
end
initial begin
$monitor($time," in %b %b cin %b sum %b cout %b",a,b,cin,s,cout);
end
endmodule
