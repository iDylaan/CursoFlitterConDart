void main(List<String> args) {

  final superman = new Heroe('Clark Kent');
  final luthor = new Villano('Lex Luthor');
  

  print(superman.nombre);
  print(superman.poder);
  print(superman.valentia);

  print(luthor.nombre);
  print(luthor.poder);
  print(luthor.maldad);
}


abstract class Personaje {
  String? poder;
  String nombre;

  Personaje( this.nombre );

  @override
  String toString() {
    return '$nombre - $poder';
  }
}



class Heroe extends Personaje {

  int valentia = 100;

  Heroe( String nombre ): super( nombre );

}


class Villano extends Personaje {
  int maldad = 100;

  Villano ( String nombre ): super( nombre );

}