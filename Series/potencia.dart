import 'dart:math' as math; 
import 'dart:io' as io; 
void main(){
  int n = 5;
  print( calcularSumaPotencias(n) );
  print("Introduce un número entero: ");
  int numero = int.parse(io.stdin.readLineSync().toString());
  print( "Total: ${ calcularSumaPotencias(numero) }" );
}

/**
 * 2^0 + 2^1 + 2^2 + 2^3 + 2^4 + 2^5 + ... + 2^numero
 */

int calcularSumaPotencias(int cantidadDeSumas) {
  int i = 0;
  num suma = 0;

  // Ciclo para iterar las potencias
  while(i <= cantidadDeSumas) { 
    suma += math.pow(2, i);
    print( imprimirSuma(i, suma) );
    i++; 
  }
  return suma.toInt();
}

String imprimirSuma(index, suma) {
  String msg = '';

  // Concatenar la suma
  msg += '2^$index = ${math.pow(2, index)}  =>  $suma\n';

  return msg;
}