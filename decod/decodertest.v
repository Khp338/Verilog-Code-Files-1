module decodertest;
//wire [3:0] a;
//reg i0,i1,en;
wire [15:0] out;
reg [3:0] in;
decoder4s de(.in(in),.out(out));
initial begin
#10 in=4'b0000;
#10 in=4'b0001;
#10 in=4'b0010;
#10 in=4'b0011;
#10 in=4'b0100;
#10 in=4'b0101;
#10 in=4'b0110;
#10 in=4'b0111;
#10 in=4'b1000;
#10 in=4'b1001;
#10 in=4'b1010;
#10 in=4'b1011;
#10 in=4'b1100;
#10 in=4'b1101;
#10 in=4'b1110;
#10 in=4'b1111;
end
/*decoder d(.i1(i1),.i0(i0),.a(a),.en(en));
initial begin
#10 i1=1'b0;i0=1'b0;en=1'b1;
#10 i1=1'b0;i0=1'b1;en=1'b1;
#10 i1=1'b1;i0=1'b0;en=1'b1;
#10 i1=1'b1;i0=1'b1;en=1'b0;
#10 $finish;
end*/
initial begin
$monitor($time," in %b out %b",in,out);
end
endmodule
