module nbittest;
parameter bits=7;
wire [bits-1:0]s;
wire [bits-1:0]c;
reg cin;
reg [bits-1:0]a;
reg [bits-1:0]b;

/*generate
	genvar i;
	fulladder f0(.cin(cin),.a(a[0]),.b(b[0]),.s(s[0]),.cout(c[0]));
	for(i=1;i<bits;i=i+1) begin
	fulladder fi(.cin(c[i-1]),.a(a[i]),.b(b[i]),.s(s[i]),.cout(c[i]));
	end
endgenerate*/
nbitadd n(.cin(cin),.s(s),.a(a),.b(b),.c(c));
initial begin
#10 a=7'b1011011;b=7'b0101011;cin=1'b0;
#10 $finish;
end
initial begin
$monitor($time," a %b b %b cin %b sum %b cout %b",a,b,cin,s,c);
end
endmodule
