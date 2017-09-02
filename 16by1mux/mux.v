module mux(input [3:0]in,input [1:0]s,output out);
reg temp;
assign out=temp;
always @(*) begin
case(s)
2'b00:begin
	temp=in[0];
	end
2'b01:begin
	temp=in[1];
	end
2'b10:begin
	temp=in[2];
	end
2'b11:begin
	temp=in[3];
	end
default:begin
	temp=0'b0;
	end
endcase
end
endmodule

/*module mux16(input [15:0]i,input [3:0]sw,output f);
wire [3:0]o;
mux m1(.in(i[3:0]),.s(sw[1:0]),.out(o[0]));
mux m2(.in(i[7:4]),.s(sw[1:0]),.out(o[1]));
mux m3(.in(i[11:8]),.s(sw[1:0]),.out(o[2]));
mux m4(.in(i[15:12]),.s(sw[1:0]),.out(o[3]));
mux m5(.in(o),.s(sw[3:2]),.out(f));
endmodule*/

module mux16();
task muxtask;
output f;
wire [3:0]o;
input [15:0]i;
input [3:0]sw;
begin
mux m1(.in(i[3:0]),.s(sw[1:0]),.out(o[0]));
mux m2(.in(i[7:4]),.s(sw[1:0]),.out(o[1]));
mux m3(.in(i[11:8]),.s(sw[1:0]),.out(o[2]));
mux m4(.in(i[15:12]),.s(sw[1:0]),.out(o[3]));
mux m5(.in(o),.s(sw[3:2]),.out(f));
end
endtask
endmodule
