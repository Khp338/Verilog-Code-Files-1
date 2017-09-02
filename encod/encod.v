module encoder(input [3:0] i,input en,output a0,a1);
assign a0=(i==4'b0010 | i==4'b1000 && en==1'b1)? 1:0;
assign a1=(i==4'b0100 | i==4'b1000 && en==1'b1)? 1:0;
endmodule
