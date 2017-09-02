module decoder(input i0,i1,en,output [3:0] a);
assign a[0]=(i1==1'b0 && i0==1'b0 && en==1'b1)? 1:0;
assign a[1]=(i1==1'b0 && i0==1'b1 && en==1'b1)? 1:0;
assign a[2]=(i1==1'b1 && i0==1'b0 && en==1'b1)? 1:0;
assign a[3]=(i1==1'b1 && i0==1'b1 && en==1'b1)? 1:0;
endmodule

module decoder4s(input [3:0] in,output [15:0] out);
wire [3:0] p;
parameter enable=1'b1;
decoder d1(.i0(in[2]),.i1(in[3]),.en(enable),.a(p));
decoder d2(.i0(in[0]),.i1(in[1]),.en(p[0]),.a(out[3:0]));
decoder d3(.i0(in[0]),.i1(in[1]),.en(p[1]),.a(out[7:4]));
decoder d4(.i0(in[0]),.i1(in[1]),.en(p[2]),.a(out[11:8]));
decoder d5(.i0(in[0]),.i1(in[1]),.en(p[3]),.a(out[15:12]));
endmodule
