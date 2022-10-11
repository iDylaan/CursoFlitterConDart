import '../models/persona.dart';

class EmpleadoService {
  List<Empleado> empleados = [];

  EmpleadoService() {
    // Empleado emp1 = Empleado.Todos('Daniel', 21, 'Dev', 50);
    // Empleado emp2 = Empleado.Todos('Eduardo', 30, 'Analist', 30);
    // Empleado emp3 = Empleado();
    // emp3.nombre = 'Mario';
    // emp3.edad = 40;
    // emp3.puesto = 'Manager';
    // emp3.sueldo = 90.5;

    // empleados.add(emp1);
    // empleados.add(emp2);
    // empleados.add(emp3);
  }

  List<Empleado> obtenerTodos() {
    return empleados;
  }

  void agregar(Empleado emp) {
    empleados.add(emp);
  }

  int obtenerIndice(String nombre) {
    int index = 0;
    for(int i = 0; i < empleados.length; i++) {
      if(empleados[index].nombre.compareTo(nombre) == 0) {
        index = i;
      } else {
        index = -1;
      }
    }
    return index;
  }


  Empleado buscarPorNombre(String nombre) {
    Empleado emp = Empleado();
    for(Empleado e in empleados) {
      if(e.nombre.compareTo(nombre) == 0) {
        emp = e;
      }
    }

    return emp;
  }

  void eliminar(String nombre) {
    empleados.remove(nombre);
  }

  double generarPercepcion(double sueldoHora) =>  sueldoHora * 8 * 13;

  double totalP() {
    double totalP = 0.0; // Toal de percepciones
    for(Empleado e in empleados) {
      totalP += generarPercepcion(e.sueldo);
    }

    return totalP;
  }

  double generarDeduccion(double sueldo) => sueldo - (sueldo * 0.16);

  double totalD() {
    double totalD = 0.0; // Toal de percepciones
    for(Empleado e in empleados) {
      totalD += generarDeduccion(e.sueldo);
    }

    return totalD;
  }

  double generarSalario(double sueldo) => generarPercepcion(sueldo) - generarDeduccion(sueldo);

  double totalSalarios( ) {
    double total = 0.0; // Toal de percepciones
    for(Empleado e in empleados) {
      total += generarSalario(e.sueldo);
    }

    return total;
  }
}