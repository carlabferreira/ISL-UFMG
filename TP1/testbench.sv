//Modulo de teste dos 5 dias especificados
module testbench;

  // Declaração de sinais de entrada e saída
  reg A, B, C, D;
  wire X, Y, Z;
  
  // Instanciando o DUT
   circuito DUT (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .X(X),
    .Y(Y),
    .Z(Z)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    
    A = 1'b0;
    B = 1'b0;
    C = 1'b1;
    D = 1'b0;
    #10;
    $display("DIA 1 (0010): %b %b %b", Z, Y, X);
    
    
    A = 1'b1;
    B = 1'b0;
    C = 1'b1;
    D = 1'b1;
    #10;
    $display("DIA 2 (1011): %b %b %b", Z, Y, X);
    
    A = 1'b1;
    B = 1'b1;
    C = 1'b1;
    D = 1'b1;
    #10;
    $display("DIA 3 (1111): %b %b %b", Z, Y, X);
    
    A = 1'b1;
    B = 1'b0;
    C = 1'b1;
    D = 1'b0;
    #10;
    $display("DIA 4 (1010): %b %b %b", Z, Y, X);
    
    A = 1'b1;
    B = 1'b1;
    C = 1'b0;
    D = 1'b0;
    #10;
    $display("DIA 5 (1100): %b %b %b", Z, Y, X);
    
  end

endmodule
