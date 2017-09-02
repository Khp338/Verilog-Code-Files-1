module test;
wire agreat,bgreat,aeb;
reg [3:0]a;
reg [3:0]b;
comparator ci(.agreat(agreat),.bgreat(bgreat),.aeb(aeb),.a(a),.b(b));
initial begin
#10 a=4'b1110;b=4'b0111;
#10 a=4'b0001;b=4'b0100;
#10 a=4'b0011;b=4'b0011;
#10 $finish;
end
initial begin 
$monitor($time," %b %b compare a>b a<b a=b %b %b %b",a,b,agreat,bgreat,aeb);
end
endmodule
