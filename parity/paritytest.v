module paritytest;
wire p;
reg [2:0]s;
wire [3:0]f;
wire c;
paritygen p1(.s(s),.p(p),.f(f));
initial begin
#10 s=3'b000;
#10 s=3'b001;
#10 s=3'b010;
#10 s=3'b011;
#10 s=3'b100;
#10 s=3'b101;
#10 s=3'b110;
#10 s=3'b111;
#10 $finish;
end
paritycheck c1(.s(f),.check(c));
initial begin
$monitor($time," s %b p %b f %b check %b",s,p,f,c);
end
endmodule
