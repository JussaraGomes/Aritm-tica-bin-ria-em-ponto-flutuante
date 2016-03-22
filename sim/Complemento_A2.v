module Complemento_A2(s_a1, s_a2, s1, s2, saida_s1, saida_s2);
input s_a1, s_a2;  		// Sinal de a1 e b1
input [10:0] s1, s2;    // Mantissa de a1 e b1
output reg [10:0] saida_s1, saida_s2; // Resultado da mantissa após o complemento

always @(s1 or s2) begin
	if(s_a1 != s_a2)
		saida_s2 = ~(s2);
	else
		saida_s2 = s2;
	
	saida_s1 = s1;
end
endmodule
