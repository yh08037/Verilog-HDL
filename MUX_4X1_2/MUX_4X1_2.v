
module MUX_4X1_2 ( out, i0, i1, i2, i3, s1, s0 );
	
	output out;
	input i0, i1, i2, i3;
	input s1, s0;
	
	assign out = i0&&!s1&&!s0 || i1&&!s1&&s0 || i2&&s1&&!s0 || i3&&s1&&s0;
	
endmodule