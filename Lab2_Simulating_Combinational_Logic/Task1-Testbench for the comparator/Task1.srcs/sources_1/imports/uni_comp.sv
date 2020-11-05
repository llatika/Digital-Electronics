module uni_comp(
	input A,
	input B,
	input output_en,  //when inactive, outputs are LOW
	output logic A_lt_B, // A smaller than B
	output logic A_eq_B, // A equal to B
	output logic A_bt_B  // A bigger than B
	);
	
	always_comb
	begin
	if(output_en)
	begin
		A_lt_B = (~A) & B;
		A_bt_B =A & (~B);
		A_eq_B = ~( A_lt_B | A_bt_B);
	end
	else
	begin
	A_lt_B = 1'b0;
	A_bt_B = 1'b0;
	A_eq_B = 1'b0;
	end
	end
	endmodule