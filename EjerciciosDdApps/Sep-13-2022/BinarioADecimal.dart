import 'dart:io';
import 'dart:math';
void main(List<String> args) {
  print("Binario a decimal\nnumero binario: ");
  String binario = stdin.readLineSync().toString(); // Entrada de datos binarios

  print( '$binario => ${transformarBinarioADecimal( binario )}' );
}

int transformarBinarioADecimal( String binario ) {
  int decimal = 0;
  int i = binario.length - 1;
  int aux = 0;

  while( i >= 0 ) {
    // Validar el numero binario por posicion
    // Suma el valor binario equivalente a la posicion donde se encuentra un 1
    // decimal += binario[i] == "1" ? obtenerPotencia( i ) : 0;
    decimal += binario[i] == "1" ? pow(2, aux).toInt() : 0;

    print( '${binario[i]} 2^$aux = ${pow(2, aux).toInt()}' );

    aux++;
    i--;
  }

  return decimal;
}

// int obtenerPotencia(int index) {
//   int potencia = 1;
//   for ( int i = 0; i < index; i++ ) { potencia *= 2; }
//   return potencia;
// }