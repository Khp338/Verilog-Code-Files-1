module comparator(input [3:0]a,b,output agreat,bgreat,aeb);
wire [3:0]e;
assign e[3]=~(a[3]^b[3]);
assign e[2]=~(a[2]^b[2]);
assign e[1]=~(a[1]^b[1]);
assign e[0]=~(a[0]^b[0]);
assign agreat=a[3]& ~b[3] | a[2]&(~b[2])&e[3] | e[3]&e[2]&a[1]& ~b[1] | e[1]&e[2]&e[3]&a[0]&~b[0];
assign bgreat=b[3]& ~a[3] | b[2]&(~a[2])&e[3] | e[3]&e[2]&b[1]& ~a[1] | e[1]&e[2]&e[3]&b[0]&~a[0];
assign aeb= ~(agreat|bgreat);
endmodule
