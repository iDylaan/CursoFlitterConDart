class Persona {
  String nombre;
  int edad;
  // Constructor
  Persona({
    required this.nombre,
    required this.edad
  }); 

  // Persona(this.nombre, this.edad);

/*
  Persona(String nombre, int edad) {
    this.nombre = nombre;
    this.edad = edad;
  }
*/

  // Metodos
  String datosCompletos() {
    return 'Nombre: ${this.nombre}\nEdad: ${this.edad}';
  }

  // Setters and Getters
  set sNombre(String nombre) => this.nombre = nombre;
  set sEdad(int edad) => this.edad = edad;

  String get gNombre => this.nombre;
  int get gEdad => this.edad;


  // void set sNombre(String nombre) {
  //   this.nombre = nombre;
  // }

  // set sEdad(int edad) {
  //   this.edad = edad;
  // }

  // String get gNombre {
  //   return this.nombre;
  // }

  // int get gEdad {
  //   return this.edad;
  // }

  @override
  String toString() {
    // TODO: implement toString
    return 'Nombre: ${this.nombre}\nEdad: ${this.edad}';
  }
}