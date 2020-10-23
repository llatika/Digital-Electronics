module mylogic (
	input a, b, e,
	output logic data
	);
always_comb
begin
if(e)
data = a & b;
else
data = a | b;
end
endmodule