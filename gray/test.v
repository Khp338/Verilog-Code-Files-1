module graytest;
parameter n=7;
reg [n-1:0]a;
wire [n-1:0]b;
grayTObin g(.a(a),.b(b));
initial begin
#10 a=7'b1101010;
#10 a=7'b1001101;
#10 $finish;
end
initial begin
$monitor($time," in %b out %b",a,b);
end
endmodule

