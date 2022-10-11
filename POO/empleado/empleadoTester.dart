import './services/service_empleado.dart';
import './models/persona.dart';
import 'dart:io';

void main(List<String> args) {
  EmpleadoService empServices = EmpleadoService();

  String empleadoNuevo;
  do {
    print("Nombre: ");
    String nombre = stdin.readLineSync().toString();
    print("Edad: ");
    int edad = int.parse(stdin.readLineSync().toString());
    print("Puesto: ");
    String puesto = stdin.readLineSync().toString();
    print("Salario por hora: ");
    double salarioH = double.parse(stdin.readLineSync().toString());

    empServices.agregar(Empleado.Todos(nombre, edad, puesto, salarioH));

    print("Deseas agregar otro empleado? (s/n)");
    empleadoNuevo = stdin.readLineSync().toString();
  } while(empleadoNuevo == 's');

  print('Empleados actuales\n${empServices.obtenerTodos()}');


  print("A quien deseas modificar?");
  String nombreBusqueda = stdin.readLineSync().toString();
  int indexEmpleado = empServices.obtenerIndice(nombreBusqueda);
  if(indexEmpleado == -1) {
    print('Ese empleado no existe...');
  } else {
    print("Nuevo Nombre: ");
    String nombre = stdin.readLineSync().toString();
    empServices.empleados[indexEmpleado].nombre = nombre;
    print("Nuevo Edad: ");
    int edad = int.parse(stdin.readLineSync().toString());
    empServices.empleados[indexEmpleado].edad = edad;
    print("Nuevo Puesto: ");
    String puesto = stdin.readLineSync().toString();
    empServices.empleados[indexEmpleado].puesto = puesto;
    print("Nuevo Salario por hora: ");
    double salarioH = double.parse(stdin.readLineSync().toString());
    empServices.empleados[indexEmpleado].sueldo = salarioH;
    
    print("Empleado actualizado correctamente...");
  }
  print('Empleados actuales\n${empServices.obtenerTodos()}');



  // String mensaje = '''Nombre\tEdad\tPuesto\tSueldoH\tPerc\tDedu\tSalario\n''';
  // for(Empleado e in empleados) {
  //   mensaje += '''${e.nombre}\t${e.edad}\t${e.puesto}\t\$${e.sueldo}\t\$${empServices.generarPercepcion(e.sueldo)}\t${empServices.generarDeduccion(e.sueldo)}\t${empServices.generarSalario(e.sueldo)}\n''';
  // }
  // mensaje += '\t\t\t\t${empServices.totalP()}\t${empServices.totalD()}\t${empServices.totalSalarios()}';

  // print(mensaje);
}