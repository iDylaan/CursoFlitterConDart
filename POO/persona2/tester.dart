import './service/empleado_service.dart';
import './models/estudiante.dart';
void main(List<String> args) {
  EstudianteService estudiantes = EstudianteService();
  // print( estudiante.obtenerAlumnos() );
  print( imprime(estudiantes.obtenerAlumnos()) );

  Estudiante estudiante1 = new Estudiante();
  estudiante1.id = 06;
  estudiante1.nombre = 'Mario';
  estudiante1.edad = 21;
  estudiante1.carrera = 'Administración';
  estudiante1.cuatrimestre = 'Quinto';
  estudiantes.agregar(estudiante1);
}

String imprime(List<Estudiante> lista) {
  String msg = 'ID\tNombre\tEdad\tCarrera\tCuatrimestre\n';
  for (Estudiante estudiante in lista) {
    msg += '${estudiante.id}\t${estudiante.nombre}\t${estudiante.edad}\t${estudiante.carrera}\t${estudiante.cuatrimestre}\n';
  }
  return msg;
}