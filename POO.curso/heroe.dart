void main(List<String> args) {
  final wolverine = new Heroe('Logan', 'Regeración');

  print(wolverine);
}



class Heroe {
  String? nombre;
  String? poder;

  Heroe(String nombre, String poder) {
    this.nombre = nombre;
    this.poder = poder;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'nombre: ${this.nombre}, poder: ${this.poder}';
  }
}