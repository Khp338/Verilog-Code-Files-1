module bcdtest;
wire cout;
wire [3:0] sum;
reg cin;
reg [3:0]a;
reg [3:0]b;
bcdadd b1(.a(a),.b(b),.cout(cout),.sum(sum),.cin(cin));
initial begin
#10 a=4;b=5;cin=1'b0;
#10 a=6;b=7;cin=1'b0;
#10 a=8;b=8;cin=1'b1;
#10 $finish;
end
initial begin
$monitor($time," in %b %b carry %b sum %b cout %b num %b%d",a,b,cin,sum,cout,cout,sum);
end
endmodule
