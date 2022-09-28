  /**
  * Ralizar una lista que almacene de manera aleatoria
  * numeros del 1 al 10 sin repetirse.
  */

import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  // Variables
  print("Introduce una cantidad");
  int cantidad = int.parse(stdin.readLineSync().toString());

  List<int> numeros = generarNumerosAleatoriosNoRepetidos(cantidad);

  print(numeros);
}

List<int> generarNumerosAleatoriosNoRepetidos(int cantidad) {
  List<int> auxNumeros = [];

  for (int i = 0; i < cantidad; i++) {
    auxNumeros.add(generarAleatorio(auxNumeros, cantidad));
  }

  return auxNumeros;
}

int generarAleatorio(List<int> numeros, int cantidad) {
  Random random = new Random();
  int numero = random.nextInt(cantidad) + 1;

  if(!numeros.contains(numero)) {
    return numero;
  } else {
    return (generarAleatorio(numeros, cantidad));
  }
}