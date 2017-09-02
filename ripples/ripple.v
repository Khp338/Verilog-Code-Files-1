module ripple(input n,input [n:0]a,input [n:0]b,input cin,output [n:0]s,output cout);
integer i;
reg num=n+1;
reg [n:0] temp;
reg carry;
assign cout = carry;
assign s = temp;
reg c,e,f;
always @(*) begin
for(i=0;i<num;i=i+1) begin
assign c = a[i]^b[i];
assign temp[i] = cin^c;
assign e = a[i]&b[i];
assign f = c&cin;
assign carry = f|e;
end
end
endmodule
