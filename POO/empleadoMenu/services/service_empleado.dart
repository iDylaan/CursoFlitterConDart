import '../models/persona.dart';
import '../models/UI.dart';

class EmpleadoService {
  List<Empleado> empleados = [];
  UI ui = UI();

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

  void eliminarEmpleado(Empleado empleado) {
    empleados.remove(empleado);
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
  double totalSalarios() {
    double total = 0.0; // Toal de percepciones
    for(Empleado e in empleados) {
      total += generarSalario(e.sueldo);
    }

    return total;
  }


  String generarReporteSalarios() {
    String reporte = '';

    reporte += 

    reporte += '''
+---------------------+-------------------+---------------------+-----------------+--------------+-------------+----------------------+
| Nombre del empleado | Edad del empleado | Puesto del empleado | Sueldo por Hora |  Percepción  |  Deducción  | Salario por Quincena | 
+---------------------+-------------------+---------------------+-----------------+--------------+-------------+----------------------+
''';

    for (Empleado empleado in empleados) {
      reporte += '|${ui.incorporarTexto(empleado.nombre, '                    ')}|';
      reporte += '${ui.incorporarTexto(empleado.edad.toString(), '                  ')}|';
      reporte += '${ui.incorporarTexto(empleado.puesto, '                    ')}|';
      reporte += '${ui.incorporarTexto('\$${empleado.sueldo}', '                ')}|';
      reporte += '${ui.incorporarTexto('\$${generarPercepcion(empleado.sueldo)}', '             ')}|';
      reporte += '${ui.incorporarTexto('\$${generarDeduccion(empleado.sueldo)}', '            ')}|';
      reporte += '${ui.incorporarTexto('\$${generarSalario(empleado.sueldo)}', '                     ')}|\n';
    }

    reporte += '+---------------------+-------------------+---------------------+-----------------+--------------+-------------+----------------------+\n';
    reporte += '                                                                          ' +
    'TOTALES | ${ui.incorporarTexto('\$${totalP()}', '            ')}| '+
    '${ui.incorporarTexto('\$${totalD()}', '           ')}| ' +
    '${ui.incorporarTexto('\$${totalSalarios()}', '                    ')}|\n';

    return reporte;
  }


  @override
  String toString() {
    String reporteEmpleados = 'Total de empleados: ${empleados.length}\n';

    for (Empleado e in empleados) {
      reporteEmpleados += '====| ${e.nombre} |====\n';
      reporteEmpleados += 'Edad: ${e.edad}\n';
      reporteEmpleados += 'Puesto: ${e.puesto}\n';
      reporteEmpleados += 'Sueldo por hora: ${e.sueldo}\n';
    }

    return reporteEmpleados;
  }
}