module MuxWithVector ( out, i0, i1, i2, i3, sel );

	output out;
	input i0, i1, i2, i3;
	input [1:0] sel;
	
	wire y0, y1, y2, y3;
	
	
	and (y0, i0, !sel[1], !sel[0]);
	and (y1, i1, !sel[1], sel[0]);
	and (y2, i2, sel[1], !sel[0]);
	and (y3, i3, sel[1], sel[0]);
	
	or (out, y0, y1, y2, y3);
	
endmodule