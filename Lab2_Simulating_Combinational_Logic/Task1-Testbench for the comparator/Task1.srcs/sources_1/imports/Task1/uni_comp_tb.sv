module uni_comp_tb ( );
logic[2:0] LOG;
logic[2:0] AB_OUT=0;
uni_comp DUT(
	.A(AB_OUT[0]),
	.B(AB_OUT[1]),
	.output_en(AB_OUT[2]),
	.A_bt_B(LOG[0]),
	.A_eq_B(LOG[1]),
	.A_lt_B(LOG[2]));
initial
    begin
    #1ns;
    #50ns;
    AB_OUT = 3'b000;
    #50ns;
    AB_OUT = 3'b001;
    #50ns;
    AB_OUT = 3'b010;
    #50ns;
    AB_OUT = 3'b011;
    #50ns;
    AB_OUT = 3'b100;
    #50ns;
    AB_OUT = 3'b101;
    #200ns;
    $finish;
    end
endmodule