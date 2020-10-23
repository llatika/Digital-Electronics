module mylogic_tb ( );

logic d;
logic[2:0] abe = 0; //vector of a,b &e

mylogic DUT(
	.a(abe[2]),
	.b(abe[1]),
	.e(abe[0]),
	.data(d));
	
initial
begin
#1ns;
#50ns;
abe = 3'b101;
#50ns;
abe = 3'b111;
#50ns;
abe = 3'b100;
#50ns;
abe = 3'b000;
#200ns;
$finish;
end
endmodule