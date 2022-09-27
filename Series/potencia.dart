import 'dart:math';
void main(){
  int n = 5;
  print( calcularPotencia(n) );
}

/**
 * 2'0 + 2'1 + 2'2 + 2'3 + 2'4 + 2'5
 */

int calcularPotencia(int n) {
  int i = 0;
  num suma = 0;

  // Ciclo para iterar las potencias
  while(i <= n) { suma += pow(2, i); i++; }

  // Imprimir la suma
  print( imprimirSuma(n) );

  return suma.toInt();
}

String imprimirSuma(n) {
  String msg = '';
  int i = 0;

  // Concatenar la suma
  while(i < n) { msg += '2^$i = ${pow(n, i)}\n'; i++; }

  return msg;
}