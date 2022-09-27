import 'dart:math' as math;

class Cuadrado {
  double lado;

  // Setters and Getters

  double get area {
    return this.lado * this.lado;
  }

  set area (double valor) {
    this.lado = math.sqrt(valor);
  }

  // Constructor
  Cuadrado( double lado ):
    this.lado = lado;

  double calcularArea() {
    return  this.lado * this.lado;
  }
}