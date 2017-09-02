module mux2by1(input sel,i0,i1,output f);
assign f=(sel==1'b0)?i0:i1;
endmodule

module shifter(input [3:0]w,input shift,output [4:0]y);
mux2by1 m1(.sel(shift),.i1(1'b0),.i0(w[3]),.f(y[4]));
mux2by1 m2(.sel(shift),.i1(w[3]),.i0(w[2]),.f(y[3]));
mux2by1 m3(.sel(shift),.i1(w[2]),.i0(w[1]),.f(y[2]));
mux2by1 m4(.sel(shift),.i1(w[1]),.i0(w[0]),.f(y[1]));
mux2by1 m5(.sel(shift),.i1(w[0]),.i0(1'b0),.f(y[0]));
endmodule
