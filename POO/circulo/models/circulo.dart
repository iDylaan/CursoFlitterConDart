class Circulo {
  double pi = 3.141592;
  double radio;
  String color;

  // Constructor
  Circulo({
    required this.radio,
    required this.color
  });

  // Metodos
  double calcularArea(double radio) => pi * (radio * radio); 

  double calcularPerimetro(double radio) => 2 * pi * radio; 

  @override
  String toString() {
    return 'Para el Circulo $color\n' + 
    'Área: ${calcularArea(radio)}\nPerímetro: ${calcularPerimetro(radio)}';
  }
}