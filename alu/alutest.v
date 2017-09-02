/*module testand;
wire [3:0]d;
reg [3:0]a,b;
andreduce a1(.a(a),.b(b),.d(d));
initial begin
#10 a=4'b1101;b=4'b1100;
#10 $finish;
end
initial begin
$monitor($time," a %b b %b out %b",a,b,d);
end
endmodule

module testinv;
wire [3:0]b;
reg [3:0]a;
invert i(.a(a),.b(b));
initial begin
#10 a=4'b1010;
#10 a=4'b0011;
#10 $finish;
end
initial begin
$monitor($time," in %b out %b",a,b);
end
endmodule

module testxor;
wire [3:0]c;
reg [3:0]a,b;
xor4bit x(.a(a),.b(b),.c(c));
initial begin
#10 a=4'b0101;b=4'b0100;
#10 a=4'b1111;b=4'b0100;
#10 $finish;
end
initial begin
$monitor($time," in %b %b out %b",a,b,c);
end
endmodule

module testor;
wire [3:0]c;
reg [3:0]a,b;
or4bit o(.a(a),.b(b),.c(c));
initial begin
#10 a=4'b0110;b=4'b1000;
#10 a=4'b0101;b=4'b1010;
#10 $finish;
end
initial begin
$monitor($time," a %b b %b out %b",a,b,c);
end
endmodule

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
#10 a=4;b=9;m=1'b1;
#10 $finish;
end
initial begin
$monitor($time," a %b b %b m %b ans %b cout %b",a,b,m,s,cout);
end
endmodule*/

module alutest;
wire [3:0]c;
reg [3:0]a,b;
reg [3:0]opcode;
alu a1(.opcode(opcode),.a(a),.b(b),.c(c));
initial begin
#10 a=4;b=3;opcode=1;
#10 a=4;b=3;opcode=2;
#10 a=4;b=3;opcode=3;
#10 a=4;b=2;opcode=4;
#10 a=4'b1110;b=4'b1100;opcode=5;
#10 a=4'b0110;b=4'b0010;opcode=6;
#10 a=4;b=4;opcode=7;
#10 a=4;b=3;opcode=8;
#10 $finish;
end
initial begin
$monitor($time," a %b b %b opcode %d out %b",a,b,opcode,c);
end
endmodule
