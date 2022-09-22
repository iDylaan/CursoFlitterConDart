import 'models/persona.dart';
void main(List<String> args) {
  Persona persona1 = new Persona(nombre: 'Daniel', edad: 21);

  persona1.sNombre = 'Mario';
  persona1.sEdad = 19;

  print(persona1);
}