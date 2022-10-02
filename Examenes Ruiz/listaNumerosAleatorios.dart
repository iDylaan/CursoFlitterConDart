/**
 * Realizar una lista que almacene de manera aleatoria
 * numero del 1 al 10 sin repetirse
 */

import 'dart:math';
import 'dart:io';

void main() {
  print("Cantidad: ");
  // Lectura por telcado de una cantidad entera
  int cantidad = int.parse(stdin.readLineSync().toString());
  // Generamos una lista con la cantidad que recibimos por teclado pasandolo como parámetro
  List<int> numeros = generarNumeros(cantidad);
  // Imprimimos nuestra lista
  print(numeros);

  // Generar una suma de sus elementos de la suma
  int suma = 0;
  numeros.forEach((numero) => suma += numero);
  print('\nSuma: $suma');

  // Generar un mensaje identificando los numeros pares e impares
  String msg = '';
  numeros.forEach((numero) => msg += numero%2 > 0 ? '$numero es impar\n' : '$numero es par\n' );
  print('\nPares e Imprares\n$msg');

  // Ordenando la lista ascendentemente
  numeros.sort((a, b) => a.compareTo(b));
  print('\nAscendentemente\n$numeros');

  // Ordenando la lista descendentemente
  numeros.sort((a, b) => b.compareTo(a));
  print('\nDescendentemente\n$numeros');




  // ============| Forma alternativa de generar una lista con numeros aleatorios |==========================
  // List<int> numeros2 = List.generate(cantidad, (int index) => index + 1);
  // numeros2.shuffle();
  // print(numeros2);
}

/**
 * Funcion que retorna una lista de numeros aleatorios sin repetirse entre si mismos
 * recibiendo la cantidad de numeros deseados por parametro
 */
List<int> generarNumeros(int cantidad) {
  // Generamos una lista auxiliar para almacenar los numeros generador y retornarla posteriormente
  List<int> aux = [];

  /**
   * Iteraremos por cada numero hasta llegar a la cantidad que se nos solicitó.
   * Por cada iteración añadiremos a nuestra lista auxiliar un numero aleatorio
   * que sea distinto a todos los que tenga almacenados nuestra lista auxiliar
   * al principio la lista siempre va a estar vacía, pero eventualmente se llenará
   * de numeros por lo que es importante pasar los numeros que llevamos como parametro
   * para verificar en la funcion "generarAleatorio()" que no se repitan los numeros.
   */
  for ( int i = 0; i < cantidad; i++ ) {
    aux.add( generarAleatorio(cantidad, aux) );
  }

  // Retornamos nuestra lista auxiliar con todos los numeros ya creados
  return aux;
}

/**
 * Esta funcion retorna un numero entero, ese número entero es filtrado
 * y verificado para que retorne unicamente un numero que no exista en la lista
 * que está recibiendo como parámetro.
 */
int generarAleatorio(int cantidad, List<int> numeros) {
  // Objeto "random" de la clase "Random", clase obtenida de la librería "dart:math"
  Random random = new Random();
  // Generamos un numero aleatorio con un método de la clase Random ".nextInt(numero entero que ayuda a delimitar el rango de donde será generado el número aleatorio)"
  int numero = random.nextInt(cantidad) + 1; // Se suma uno para empezar nuestra serie desde 1 y no desde 0

  /**
   * Se verifica con una condición y un metodo de las listas ".contains(valor a evaluar)"
   * que retorna un verdadero o un falso si encuentra dentro de la lista el valor
   * que estamos pasando por parámetro, la condicional dice que si devuelve un true
   * significa que es verdad que no encontró un numero dentro de la lista
   * por lo que retornamos ese número al no ser repetido.
   * Si la condición devuelve un falso significa que es falso que la lista no contiene
   * el número que generamos por lo que volvemos a llamar a la función con la lista que recibimos
   * por parametro y la cantidad
   */

  // ==========================| Operador Ternario |==========================
  return !numeros.contains( numero ) ? numero : generarAleatorio(cantidad, numeros);


  // ==========================| Forma tradicional |==========================
  // if( !numeros.contains( numero ) ) {
  //   return numero;
  // } else {
  //   return generarAleatorio(cantidad, numeros);
  // }

}