class Persona {
  late String _nombre;
  late int _edad;

  // Persona(this._nombre, this._edad);
  Persona();

  Persona.Todos(this._nombre, this._edad);

  String get nombre => this._nombre;
  int get edad => this._edad;

  set nombre(String nombre) => this._nombre = nombre; 
  set edad(int edad) => this._edad = edad; 

}


class Empleado extends Persona {
  late String _puesto;
  late double _sueldo;

  // Constructor default
  // Empleado():super();

  // Constructor avanzado
  Empleado():super();
  Empleado.Todos(
    String nombre, 
    int edad, 
    this._puesto, 
    this._sueldo
    ):super.Todos(nombre, edad);

  String get puesto => this._puesto;
  double get sueldo => this._sueldo;

  set puesto(String puesto) => this._puesto = puesto;
  set sueldo(double sueldo) => this._sueldo = sueldo;
}