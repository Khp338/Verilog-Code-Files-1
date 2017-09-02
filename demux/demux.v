module Demux(input s,in,output a0,a1);
assign a0=(s==1'b0)?in:0;
assign a1=(s==1'b1)?in:0;
endmodule

module demux1by8(input in,input [2:0] sw, output [7:0] f);
wire p,q,r,t,u,v;
Demux d1(.in(in),.s(sw[2]),.a0(p),.a1(q));
Demux d2(.in(p),.s(sw[1]),.a0(r),.a1(t));
Demux d3(.in(q),.s(sw[1]),.a0(u),.a1(v));
Demux d4(.in(r),.s(sw[0]),.a0(f[0]),.a1(f[1]));
Demux d5(.in(t),.s(sw[0]),.a0(f[2]),.a1(f[3]));
Demux d6(.in(u),.s(sw[0]),.a0(f[4]),.a1(f[5]));
Demux d7(.in(v),.s(sw[0]),.a0(f[6]),.a1(f[7]));
endmodule
