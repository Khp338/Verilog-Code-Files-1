/*module andreduce(input [3:0]a,b,output [3:0]d);
integer i;
reg [3:0]temp;
assign d=temp;
always @(a) begin
for(i=0;i<4;i=i+1) begin
temp[i]=a[i] && b[i];
end
end
endmodule

module invert(input [3:0]a,output [3:0]b);
integer i;
reg [3:0]temp;
assign b=temp;
always @(a) begin
for(i=0;i<4;i=i+1) begin
temp[i]= ~a[i];
end
end
endmodule

module xor4bit(input [3:0]a,b,output [3:0]c);
integer i;
reg [3:0]temp;
assign c=temp;
always @(a or b) begin
for(i=0;i<4;i=i+1) begin
temp[i]=a[i]^b[i];
end
end
endmodule

module or4bit(input [3:0]a,b,output [3:0]c);
reg [3:0]temp;
assign c=temp;
integer i;
always @(a or b) begin
for(i=0;i<4;i=i+1) begin
temp[i]=a[i]||b[i];
end
end
endmodule*/

/*module fulladder(input a,b,cin,output s,cout);
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
endmodule*/

module alu(input [3:0]opcode,input [3:0]a,b,output [3:0]c);
reg [3:0]d;
assign c=d;
integer i;
always @(*) begin

case (opcode)
1:begin
	d=a+b;
	end
2:begin
	d=a-b;
	end
3:begin
	d=a*b;
	end
4:begin
	d=a/b;
	end
5:begin
	for(i=0;i<4;i=i+1) begin
	d[i]=a[i] && b[i];
	end
	//d=a&&b;
	end
6:begin
	d=a^b;
	end
7:begin
	d= ~a;
	end
8:begin
	for(i=0;i<4;i=i+1) begin
	d[i]=a[i] || b[i];
	end
	//d=a||b;
	end
default: d=4'b0000;
endcase

end
endmodule
