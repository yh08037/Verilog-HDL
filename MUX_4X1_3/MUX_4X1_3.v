
module MUX_4X1_3 ( out, i0, i1, i2, i3, s1, s0 );

	output out;
	reg out;
	input i0, i1, i2, i3;
	input s1, s0;
	
	always 
		begin
			if ( s1 == 0 && s0 == 0 )
				begin out = i0; end
			else if ( s1 == 0 && s0 == 1 ) 
				begin out = i1; end
			else if ( s1 == 1 && s0 == 0 )
				begin out = i2; end
			else if ( s1 == 1 && s0 == 1 )
				begin out = i3; end
		end
		
endmodule