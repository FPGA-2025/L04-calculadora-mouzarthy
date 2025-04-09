module calculadora(
  input   [7:0] entrada_A,
  input   [7:0] entrada_B,
  input   [2:0] codigo,
  output  [7:0] saida
);

wire [7:0] zerar, mostrar_a, mostrar_b, somar, subtrair;

assign zerar      = ( codigo == 3'b000 ) ? 0 : 0;
assign mostrar_a  = ( codigo == 3'b001 ) ? entrada_A : 0;
assign mostrar_b  = ( codigo == 3'b010 ) ? entrada_B : 0;
assign somar      = ( codigo == 3'b011 ) ? entrada_A + entrada_B : 0;
assign subtrair   = ( codigo == 3'b100 ) ? entrada_A - entrada_B : 0;

assign saida = ( zerar | mostrar_a | mostrar_b | somar | subtrair );

endmodule
