
/*********************************
**	TCES 330 		**
**	Kader khafif		**
** 	HW 1			**
** 				**
**				**
*********************************/


// The module Q1 describe the circuit
// in Figure 2 of homework 1, using 
// structural representation

module Q1(F, G, A, B, C ,D, E); 
 input A, B, C ,D, E; // system input list
 output F, G; // system output list
 
// gate instantiation
 nand (N, B,C);
 and (M, A, N);
 or (L, C, E);
 nand (K, N, C);
 and (J, M, ~N);
 nand (I, ~N, D);
 xor (F, J, I, ~L);
 and (G, ~D, ~E, L, K);

endmodule

// Testbench
module Q1_testbench();
 logic A, B, C ,D, E;
 logic F, G;
 
 Q1 DUT( .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G) ); 
 
 initial begin
   integer k;
// Using a for loop to assign values to each inputs
   for (k=0; k<32; k++) begin
     {A,B,C,D,E} = k; 
     #5;

     //$display ($time,,,"%b \t %b \t %b \t %b", A, B, C, D, E, F, G); 
end
/*
E = 0; D = 0; C = 0; B = 0; A = 0; #5;
E = 1; D = 0; C = 0; B = 0; A = 0; #5;
E = 0; D = 1; C = 0; B = 0; A = 0; #5;
E = 1; D = 1; C = 0; B = 0; A = 0; #5;

E = 0; D = 0; C = 1; B = 0; A = 0; #5;
E = 1; D = 0; C = 1; B = 0; A = 0; #5;
E = 0; D = 1; C = 1; B = 0; A = 0; #5;
E = 1; D = 1; C = 1; B = 0; A = 0; #5;

E = 0; D = 0; C = 0; B = 1; A = 0; #5;
E = 1; D = 0; C = 0; B = 1; A = 0; #5;
E = 0; D = 1; C = 0; B = 1; A = 0; #5;
E = 1; D = 1; C = 0; B = 1; A = 0; #5;

E = 0; D = 0; C = 1; B = 1; A = 0; #5;
E = 1; D = 0; C = 1; B = 1; A = 0; #5;
E = 0; D = 1; C = 1; B = 1; A = 0; #5;
E = 1; D = 1; C = 1; B = 1; A = 0; #5;

E = 0; D = 0; C = 0; B = 0; A = 1; #5;
E = 1; D = 0; C = 0; B = 0; A = 1; #5;
E = 0; D = 1; C = 0; B = 0; A = 1; #5;
E = 1; D = 1; C = 0; B = 0; A = 1; #5;

E = 0; D = 0; C = 1; B = 0; A = 1; #5;
E = 1; D = 0; C = 1; B = 0; A = 1; #5;
E = 0; D = 1; C = 1; B = 0; A = 1; #5;
E = 1; D = 1; C = 1; B = 0; A = 1; #5;

E = 0; D = 0; C = 0; B = 1; A = 1; #5;
E = 1; D = 0; C = 0; B = 1; A = 1; #5;
E = 0; D = 1; C = 0; B = 1; A = 1; #5;
E = 1; D = 1; C = 0; B = 1; A = 1; #5;

E = 0; D = 0; C = 1; B = 1; A = 1; #5;
E = 1; D = 0; C = 1; B = 1; A = 1; #5;
E = 0; D = 1; C = 1; B = 1; A = 1; #5;
E = 1; D = 1; C = 1; B = 1; A = 1; #5;
*/
end
endmodule
