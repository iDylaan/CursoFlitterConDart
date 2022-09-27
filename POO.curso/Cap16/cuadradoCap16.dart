import './cuadrado.dart';
void main() {
  final cuadrado = new Cuadrado( 5 );

  cuadrado.area = 25;

  print('Area: ${ cuadrado.calcularArea() }');

  print('Lado: ${ cuadrado.lado }');
  print('Area get: ${ cuadrado.area }');

}