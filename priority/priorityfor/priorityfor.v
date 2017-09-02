module priorityfor(input [7:0]d,output [2:0]q);
reg [2:0]s;
integer i;
assign q=s;
always @(d) begin
for(i=0;i<8;i=i+1) begin
	if(d[i]==1) begin
	case(i) 
	
	0:begin
	s=3'b000;
	end

	1:begin
	s[0]=1'b1;
	end

	2:begin
	s[1]=1'b1;s[0]=1'b0;
	end

	3:begin
	s[0]=1'b1;
	end

	4:begin
	s[2]=1'b1;s[1]=1'b0;s[0]=1'b0;
	end

	5:begin
	s[0]=1'b1;
	end

	6:begin
	s[1]=1'b1;s[0]=1'b0;
	end
	
	7:begin
	s[0]=1'b1;
	end

	default:begin
	s=3'b000;
	end

	endcase
	end
end
end
endmodule
