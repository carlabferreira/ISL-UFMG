module testbench;
    reg clk;       // Sinal de clock
    reg reset;     // Sinal de reset
    wire [3:0] out; // Saída do contador de 4 bits

    // Instanciando o módulo do contador
    contador_sequencial DUT(
        .clk(clk),
        .reset(reset),
        .out(out)
    );
  
    always begin //Inicializando o clock de 1 segundo
        #5 clk = ~clk; //a cada 0.5 seg
    end

    initial begin // Inicializações
        $dumpfile("dump.vcd");
        $dumpvars;
        clk = 1;
        reset = 1; //para começar do zero antes dos testes, e não ficar um valor X indeterminado
      	#1;
      	reset = 0;
      
      	//TESTES
        #49;// Liga o contador por 5 segundos
      	reset = 1; //Aciona o reset por 1 segundo
      	$display("reset = 1");
      	#10;
      	reset = 0;
      	#120 //deixa o contador por 12 segundos
        $finish; // Finaliza a simulação
    end
      
	always @(posedge clk) begin
        case(out)
            4'b0000: $display("ZERO");
            4'b0001: $display("UM");
            4'b0010: $display("DOIS");
            4'b0011: $display("TRÊS");
            4'b0100: $display("QUATRO");
            4'b0101: $display("CINCO");
            4'b0110: $display("SEIS");
            4'b0111: $display("SETE");
            4'b1000: $display("OITO");
            4'b1001: $display("NOVE");
            default: $display("Fora do intervalo de contagem");
        endcase
    end
  
endmodule
