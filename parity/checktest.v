module paritychecktest;
wire check;
reg [3:0]s;
paritycheck p2(.s(s),.check(check));
initial begin
#10 s=4'b0000;
#10 s=4'b0001;
#10 s=4'b0010;
#10 s=4'b0011;
#10 s=4'b0100;
#10 s=4'b0101;
#10 s=4'b0110;
#10 s=4'b0111;
#10 s=4'b1000;
#10 s=4'b1001;
#10 s=4'b1010;
#10 s=4'b1011;
#10 s=4'b1100;
#10 s=4'b1101;
#10 s=4'b1110;
#10 s=4'b1111;
#10 $finish;
end
initial begin
$monitor($time," s %b check %b",s,check);
end
endmodule
