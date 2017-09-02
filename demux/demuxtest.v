module Demuxtest;
reg in;
reg [2:0] sw;
wire [7:0] f;
demux1by8 d1(.in(in),.sw(sw),.f(f));
initial begin
#10 in=1'b1;sw=3'b000;
#10 in=1'b1;sw=3'b001;
#10 in=1'b1;sw=3'b010;
#10 in=1'b1;sw=3'b011;
#10 in=1'b1;sw=3'b100;
#10 in=1'b1;sw=3'b101;
#10 in=1'b1;sw=3'b110;
#10 in=1'b1;sw=3'b111;
#10 $finish;
end
initial begin
$monitor($time," in %b swit %b out %b",in,sw,f);
end
endmodule
