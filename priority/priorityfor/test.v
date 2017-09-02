module test;
wire [2:0]q;
reg [7:0] d;
priorityfor p(.d(d),.q(q));
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
$monitor($time," in %b out %b",d,q);
end
endmodule
