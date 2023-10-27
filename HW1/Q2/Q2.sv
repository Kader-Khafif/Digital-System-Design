

/*********************************
** 	TCES 330 		**
**	Kader khafif		**
** 	Homework 1		**
** 				**
**				**
*********************************/


// The module Q2 describe the circuit
// in Figure 3a of homework 1, using 
// behavior description

module Q2(F, A, B);
 input A, B; // Imput A and B
 output F; // Output F
//behavior description 
  assign F = (~A | B) & ~(~A & B) & (~B ^ A);

endmodule

// Testbench
module Q2_testbench();
 logic F, a, b;
 
 Q2 DUT( .A(a), .B(b), .F(F)); 
 
 initial begin
// Value assigned to the imput according to the
// the change described in Figure 3b
	a= 0; b= 1; #3;
	a= 1; b= 0; #3;
	a= 1; b= 1; #2;
	a= 0; b= 1; #3;
	a= 1; b= 0; #1;
	a= 0; b= 0; #4;


end
endmodule
