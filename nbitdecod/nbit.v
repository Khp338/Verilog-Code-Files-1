module decodnbit(input [n-1:0]a,output [2**n-1:0]d);
parameter n=4;
reg place;
reg [2**n-1:0]x;
assign d=x;
integer i;
always @(*) begin
for(i=n-1;i>=0;i=i-1) begin

//place= (a[i]==1'b1)?place+2**i:0;
if(a[i]==1'b1) begin
	place = place+2**i;
	end
end
assign x[place]=1;

end
endmodule
