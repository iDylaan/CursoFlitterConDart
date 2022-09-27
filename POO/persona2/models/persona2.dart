class Persona {
  String _nombre;   // La _ representa que va a ser una propiedad privada
  int _edad;

  Persona(this._nombre, this._edad);

  String get nombre => this._nombre;
  set nombre(String nombre) => this._nombre = nombre;

  int get edad => this._edad;
  set edad(int nombre) => this._edad = edad;


  @override
  String toString() {
    return 'Persona[nombre = ${nombre}, edad = ${edad}]';
  }
}