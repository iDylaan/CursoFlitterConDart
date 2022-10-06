import './services/service_empleado.dart';
import './models/persona.dart';

void main(List<String> args) {
  EmpleadoService empServices = EmpleadoService();
  List<Empleado> empleados = empServices.obtenerTodos();
  String mensaje = '''Nombre\tEdad\tPuesto\tSueldoH\tPerc\tDedu\tSalario\n''';
  for(Empleado e in empleados) {
    mensaje += '''${e.nombre}\t${e.edad}\t${e.puesto}\t\$${e.sueldo}\t\$${empServices.generarPercepcion(e.sueldo)}\t${empServices.generarDeduccion(e.sueldo)}\t${empServices.generarSalario(e.sueldo)}\n''';
  }
  mensaje += '\t\t\t\t${empServices.totalP()}\t${empServices.totalD()}\t${empServices.totalSalarios()}';

  print(mensaje);
}