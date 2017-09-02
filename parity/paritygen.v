module paritygen(input [2:0]s,output p,output [3:0]f);
genvar i;
wire r;
assign f[2:0]=s[2:0];
assign f[3]=p;
generate
for(i=0;i<3;i=i+1) begin
	assign r=s[0]^s[1];
	assign p=s[2]^r;
end
endgenerate
endmodule
