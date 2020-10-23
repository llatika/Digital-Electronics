module uni_comp_tb ( );
logic d,e,f;
logic[2:0] AB_OUT = 0;
uni_comp DUT(
	.A(AB_OUT[0]),
	.B(AB_OUT[1]),
	.output_en(AB_OUT[2]),
	.A_bt_B(d),
	.A_eq_B(e),
	.A_lt_B(f));
initial
begin
#1ns;
#50ns;
ABOUT = 3'b111;
#50ns;
ABOUT = 3'b110;
#50ns;
ABOUT = 3'b101;
#50ns;
ABOUT = 3'b011;
#200ns;
$finish;
end
endmodule