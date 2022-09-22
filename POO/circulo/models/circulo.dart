class Circulo {
  double radio;
  String color;

  // Constructor
  Circulo({
    required this.radio,
    required this.color
  });

  // Metodos
  double calcularArea(double radio) {
    double pi = 3.14151692;
    double area;

    area = pi * (radio * radio);

    return area;
  }

  double calcularPerimetro(double radio) {
    double pi = 3.14151692;
    double perimetro;

    perimetro = 2 * pi * radio;

    return perimetro;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Para el Circulo $color\n' + 
    'Área: ${calcularArea(radio)}\nPerímetro: ${calcularPerimetro(radio)}';
  }
}