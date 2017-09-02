module encodtest;
wire a0,a1;
reg [3:0] i;
reg en;
encoder e(.i(i),.en(en),.a0(a0),.a1(a1));
initial begin
#10 i=4'b0000;en=1'b1;
#10 i=4'b0001;en=1'b1;
#10 i=4'b0010;en=1'b1;
#10 i=4'b0100;en=1'b1;
#10 i=4'b1000;en=1'b1;
#10 $finish;
end
initial begin
$monitor($time," in %b out %b%b",i,a1,a0);
end
endmodule
