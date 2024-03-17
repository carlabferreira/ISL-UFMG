module contador_sequencial(
    input wire clk,     // Sinal de clock
    input wire reset,   // Sinal de reset
    output reg [3:0] out // Saída do contador de 4 bits
);

// Definindo parâmetros para os valores máximos do contador e para o estado de reinício
parameter MAX_COUNT = 4'b1001; // Valor máximo (9 em binário)

always @(posedge clk or posedge reset) begin
    // Se o sinal de reset estiver ativo, redefine o contador para o estado de reinício
    if (reset) begin
        out <= 4'b0000;
    end 
  	else begin
        // Se não estiver em estado de reset, incrementa o contador
        if (out == MAX_COUNT) begin
            // Se o contador atingir o valor máximo, reinicia para zero
            out <= 4'b0000;
        end 
      	else begin
            // Incrementa o contador normalmente
            out <= out + 1;
        end
    end
end

endmodule