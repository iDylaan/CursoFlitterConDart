class Persona {
  // Propiedades
  late String _nombre;
  late int _edad;

  // Contructor
  Persona();
  Persona.Todos(this._nombre, this._edad);

  // Getters
  String get nombre => this._nombre;
  int get edad => this._edad;

  // Setters
  set nombre(String nombre) => this._nombre = nombre; 
  set edad(int edad) => this._edad = edad; 

}


class Empleado extends Persona {
  // Propiedades
  late String _puesto;
  late double _sueldo;

  // Constructor 
  Empleado():super();
  Empleado.Todos(
    String nombre, 
    int edad, 
    this._puesto, 
    this._sueldo
    ):super.Todos(nombre, edad);

  // Getters
  String get puesto => this._puesto;
  double get sueldo => this._sueldo;
  // Setters
  set puesto(String puesto) => this._puesto = puesto;
  set sueldo(double sueldo) => this._sueldo = sueldo;


  @override
  String toString() {
    return '====| ${nombre} |====\n' +
           'Edad: ${edad}\n' +
           'Puesto: ${puesto}\n' +
           'Sueldo por hora: ${sueldo}\n';
  }
}