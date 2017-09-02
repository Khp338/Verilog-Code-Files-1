module test;
wire [4:0]y;
reg shift;
reg [3:0]w;
shifter s(.w(w),.shift(shift),.y(y));
initial begin
#10 shift=1'b1;w=4'b0110;
#10 shift=1'b0;w=4'b1010;
#10 $finish;
end
initial begin
$monitor($time," shift %b in %b out %b",shift,w,y);
end
endmodule
