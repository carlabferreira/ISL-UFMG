// Definicao do que é entrada e do que é saida no circuito implementado
module circuito (
  input A,
  input B,
  input C,
  input D,
  output X,
  output Y,
  output Z
);
  // Lógica que determina as saídas com base em A, B, C e D
  assign X = (~A & ~C & D) | (A & ~C & ~D) | (~A & ~B & D) | (A & ~B & ~D) | (A & B & C & D);
  assign Y = (A & ~C & D) | (~A & C & ~D) | (~A & ~B & C) | (~B & C & ~D);
  assign Z = (B & ~C) | (A & ~B & C & D) | (~A & B & ~D);
endmodule