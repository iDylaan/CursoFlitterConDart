void main(List<String> args) {
  final perro = new Perro();
  final gato = new Gato();

  sonidoAnimal(perro);
  sonidoAnimal(gato);
}


void sonidoAnimal( Animal animal ) {
  animal.emitirSonido();
}

// Sirve para que otras clases puedan implementar lo que tenemos en nuetra clase abstracta
abstract class Animal {

  int? patas;

  Animal();

  void emitirSonido();

}

class Perro implements Animal {

  int? patas;

  void emitirSonido() => print('Guauu');

}


class Gato implements Animal {
  int? patas;
  int? cola;

  void emitirSonido() => print('Miauuuu');
}