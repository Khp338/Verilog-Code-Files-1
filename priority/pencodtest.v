module pencodtest;
wire q0,q1,q2;
reg [7:0] d;
pencod p(.d(d),.q0(q0),.q1(q1),.q2(q2));
initial begin
#10 d=8'b00000001;
#10 d=8'b0000001x;
#10 d=8'b000001xx;
#10 d=8'b00001xxx;
#10 d=8'b0001xxxx;
#10 d=8'b001xxxxx;
#10 d=8'b01xxxxxx;
#10 d=8'b1xxxxxxx;
#10 $finish;
end
initial begin
$monitor($time," in %b out %b%b%b",d,q2,q1,q0);
end
endmodule
