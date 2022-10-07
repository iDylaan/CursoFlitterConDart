import '../models/persona.dart';

class EmpleadoService {
  List<Empleado> empleados = [];

  EmpleadoService() {}

  List<Empleado> obtenerTodos() {
    return empleados;
  }

  void agregar(Empleado emp) {
    empleados.add(emp);
  }


  String buscarPorNombre(String nombre, List<Empleado> empleadosAux) {
    String reporte = '';
    int encontrados = 0;
    for(Empleado empleado in empleadosAux) {
        if ( empleado.nombre.compareTo(nombre) == 0 ) {
          reporte += empleado.toString();
          encontrados++;
        }
    }

    return encontrados == 0 ? 'No se encontró ningún resultado' : 'Encontrados $encontrados\n$reporte';
  }

  void eliminarEmpleado(String nombre) {
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


  @override
  String toString() {
    String reporteEmpleados = '';

    for (Empleado e in empleados) {
      reporteEmpleados += '====| ${e.nombre} |====\n';
      reporteEmpleados += 'Edad: ${e.edad}\n';
      reporteEmpleados += 'Puesto: ${e.puesto}\n';
      reporteEmpleados += 'Sueldo por hora: ${e.sueldo}\n';
    }

    return reporteEmpleados;
  }
}