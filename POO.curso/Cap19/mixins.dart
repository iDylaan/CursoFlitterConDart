abstract class Animal { }


abstract class Mamifero extends Animal { }
abstract class Ave extends Animal { }
abstract class Pez extends Animal { }


abstract class Volador {
  void volar() => print('Volando...');
}
abstract class Caminante {
  void caminar() => print('Caminando...');
}
abstract class Nanador {
  void nadar() => print('Nadando...');
}

// MAMIFEROS
class Delfin extends Mamifero with Nanador {}
class Murcielago extends Mamifero with Caminante, Volador {}
class Gato extends Mamifero with Caminante {}

// Aves
class Paloma extends Ave with Volador, Caminante {}
class Pato extends Ave with Caminante, Volador, Nanador {}

// Peces
class Tiburon extends Pez with Nanador {}
class PezVolador extends Pez with Nanador, Volador {}

void main(List<String> args) {

  final delfin = new Delfin();
  delfin.nadar();

  final murcielago = new Murcielago();
  murcielago.caminar();
  murcielago.volar();

  final gato = new Gato();
  gato.caminar();

  final paloma = new Paloma();
  paloma.caminar();
  paloma.volar();

  final pato = new Pato();
  pato.caminar();
  pato.volar();
  pato.nadar();

  final tiburon = new Tiburon();
  tiburon.nadar();

  final pezVolador = new PezVolador();
  pezVolador.nadar();
  pezVolador.volar();

}