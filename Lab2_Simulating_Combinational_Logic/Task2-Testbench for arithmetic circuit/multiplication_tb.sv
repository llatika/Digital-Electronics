module multiplication_tb( );
logic[7:0] OUT;
logic[3:0] INP_A=0;
logic[3:0] INP_B=0;
uni_comp DUT(
	.A(INP_A),
	.B(INP_B));
	
initial
    begin
    #1ns;
    #50ns;
    INP_A=4'1111;
    INP_B1=4'0001;
    #50ns;
    INP_A=4'1111;
    INP_B1=4'0011;
    #50ns;
    INP_A=4'1111;
    INP_B1=4'0101;
    #50ns;
    INP_A=4'1010;
    INP_B1=4'0101;
    #200ns;
    $finish;