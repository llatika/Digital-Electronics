module multiplication(

input [3:0] A
input [3:0] B

output [7:0] C

logic B1= {4{B[0]}}
logic B2= {4{B[1]}}
logic B3= {4{B[2]}}
logic B4= {4{B[3]}}


logic [3:0] output1_UNSIGNED
logic [3:0] output2_UNSIGNED
logic [3:0] output3_UNSIGNED
logic [3:0] output4_UNSIGNED

assign output1_UNSIGNED=A*B1
assign output2_UNSIGNED=A*B2
assign output3_UNSIGNED=A*B3
assign output4_UNSIGNED=A*B4


logic [3:0] extend_value = 4'0000 

logic extension1 = {extend_value,output1_UNSIGNED};
logic extension2 = {extend_value,output2_UNSIGNED};
logic extension3 = {extend_value,output3_UNSIGNED};
logic extension4 = {extend_value,output4_UNSIGNED};

logic shift1 = extension1 << 3
logic shift2 = extension2 << 2
logic shift3 = extension3 << 1


);

always_comb
begin
C = shift1 + shift2 + shift3 + extension4
end
end
endmodule
