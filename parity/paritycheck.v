module paritycheck(input [3:0]s,output check);
wire c,d;
generate
genvar i;
for(i=0;i<4;i=i+1) begin
assign c=s[0]^s[1];
assign d=s[2]^s[3];
assign check=c^d;
end
endgenerate
endmodule
