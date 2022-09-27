import '../models/estudiante.dart';

class EstudianteService {
  List<Estudiante> lista = [];

  EstudianteService() {
    lista.add( Estudiante('Daniel', 21, 01, 'Informática', 'Cuarto') );
    lista.add( Estudiante('Julian', 18, 02, 'Telemática', 'Tercero') );
    lista.add( Estudiante('Mitzy', 23, 03, 'Administración', 'Primero') );
    lista.add( Estudiante('Laura', 22, 04, 'Pedagogía', 'Segundo') );
    
    Estudiante e1 = Estudiante('', 0, 00, '', '');
    e1.nombre = 'Fernando';
    e1.edad = 26;
    e1.id = 04;
    e1.carrera = 'Informática';
    e1.cuatrimestre = 'Noveno';
    lista.add(e1);

    lista.add(Estudiante());
  }

  List<Estudiante> obtenerAlumnos() {
    return lista;
  }

  agregar(Estudiante estudiante) {
    lista.add(estudiante);
  }
  
}