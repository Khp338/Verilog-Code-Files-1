module gray(input [n-1:0]a,output [n-1:0]b);
parameter n=7;
integer i;
assign b[n-1]=a[n-1]; //assign MSB
reg [n-2:0]temp;
assign b[n-2:0]=temp;
always @(a) begin
for(i=n-2;i>=0;i=i-1) begin
	temp[i]=a[i]+a[i+1];
end
end
endmodule
