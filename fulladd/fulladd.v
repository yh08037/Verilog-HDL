module fulladd (sum, c_out, a, b, c_in);

	output sum, c_out;
	input a, b, c_in;
	
	wire s1, c1, c2;
	
	// instantination of primiitve
	xor (s1, a, b);
	and (c1, a, b);
	
	xor (sum, s1, c_in);
	and (c2, s1, c_in);
	
	xor (c_out, c2, c1);
	
endmodule