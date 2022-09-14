void main() {
   List numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  
  // VALIDOS tambien para declarar
  // var 
  // final
  // const

  /**
   *  El simbolo "?" es conocido como operador seguro
   *  se utiliza en la declaracion de variables para definir
   *  que esa variable peude aceptar nulos "null".
   */

  const List? numerosEjemplo = null;

  // .add Agrega un elemento al final del arreglo
  numeros.add(11); // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11] 

  print( numeros[0] ); // numeros[0] = 1

  /**
   * Evita el desbordamiento de los arreglos
   * Que es el desbordamiento en un arreglo?
   * Cuando mandas a llamar un valor que excedio 
   * la capacidad del erreglo ej.- numeros[100] 
   * Esto como resultado nos va a retornar un error!.
   */

  print( numeros );

  // Ejemplo de arreglo tipado

  /**
   * VALIDOS
   * Cualquier tipo de variable para declarar el tipo especifico del arreglo
   * double
   * int
   * String
   * bool
   * dynamic
   */

  List<dynamic> arregloDinamico = [1, 2, true, false, "Daniel", 22.25];

  arregloDinamico.add("Ejemplo con Dart"); // [1, 2, true, false, "Daniel", 22.25, "Ejemplo con Dart"]

  print( arregloDinamico ); 


  final masNumeros = List.generate( 100, (int index) => 10 );

  print( masNumeros ); // 100 veces el numero 10

  final numerosDelUnoAl99 = List.generate(100, (int index) => index);

  print( numerosDelUnoAl99 ); // arreglo del 0 al 99 (100 elementos)
  
}