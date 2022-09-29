/**
 * Realizar una lista que almacene de manera aleatoria
 * numero del 1 al 10 sin repetirse
 */

import 'dart:math';
import 'dart:io';

void main() {
  print("Cantidad: ");
  int cantidad = int.parse(stdin.readLineSync().toString());
  // List<int> numeros2 = List.generate(cantidad, (int index) => index + 1);
  // numeros2.shuffle();
  // print(numeros2);
  List<int> numeros = generarNumeros(cantidad);
  // Lis
  imprimirNumerosAscendentemente(numeros);
  imprimirNumerosDescendentemente(numeros);
  print(numeros);

  // print(numeros);

  // int suma = 0;
  // numeros.forEach((numero) => suma += numero);
  // print(suma);

  // String msg = '';
  // numeros.forEach((numero) => msg += numero%2 > 0 ? '$numero es impar\n' : '$numero es par\n' );
  // print(msg);

  // numeros.sort((a, b) => a.compareTo(b));
  // print(numeros);
  // numeros.sort((a, b) => b.compareTo(a));
  // print(numeros);
}

List<int> imprimirNumerosAscendentemente(List<int> numeros) {
  List<int> aux = numeros;
  aux.sort((a, b) => a.compareTo(b));
  return aux;
}
List<int> imprimirNumerosDescendentemente(List<int> numeros) {
  List<int> aux = numeros;
  aux.sort((a, b) => b.compareTo(a));
  return aux;
}

List<int> generarNumeros(int cantidad) {
  List<int> aux = [];

  for ( int i = 0; i < cantidad; i++ ) {
    aux.add( generarAleatorio(cantidad, aux) );
  }

  return aux;
}

int generarAleatorio(int cantidad, List<int> numeros) {
  Random random = new Random();
  int numero = random.nextInt(cantidad) + 1;

  if( !numeros.contains( numero ) ) {
    return numero;
  } else {
    return generarAleatorio(cantidad, numeros);
  }

}