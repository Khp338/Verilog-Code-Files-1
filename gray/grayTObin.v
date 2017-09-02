module grayTObin(input [n-1:0]a,output [n-1:0]b);
parameter n=7;
integer i;
reg [n-2:0]temp;
assign b[n-1]=a[n-1]; //assign MSB
assign b[n-2:0]=temp;
always @(a or b) begin
for(i=n-2;i>=0;i=i-1) begin
	if(a[i]==1) begin
		temp[i]=~b[i+1];
	end
	else	begin
		temp[i]=b[i+1];
	end
	//temp[i]=(a[i]==1)(~temp[i+1]) : temp[i+1];
end
end
endmodule
