import 'dart:io';
import 'models/circulo.dart';

void main() {
  print('Introduce el radio de un circulo: ');
  double radio = double.parse(stdin.readLineSync().toString());
  Circulo circulo = new Circulo(radio: radio, color: 'Morado');

  print(circulo);
}