module test;
wire v,n,z;
reg [3:0]a,b;
compare c(.a(a),.b(b),.v(v),.n(n),.z(z));
initial begin
#10 a=4'b1101;b=4'b1010;
#10 $finish;
end
initial begin
$monitor($time," a %b b %b vnz %b%b%b",a,b,v,n,z);
end
endmodule
