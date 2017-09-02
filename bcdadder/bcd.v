module bcdadd(input [3:0]a,input [3:0]b,input cin,output cout,output [3:0]sum);
reg [4:0]s;
assign sum = s[3:0];
assign cout=s[4];
always @(*) begin
s= a+b+cin;
if(s>9) begin
	s=s+6;
	end
end
endmodule
