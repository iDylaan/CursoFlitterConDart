import 'dart:io';

import '../../../Examenes Ruiz/operacionesCadena.dart';
import '../models/UI.dart';
import './service_empleado.dart';
import '../models/persona.dart';

class AppEmpleados {
  // Propiedades
  UI ui = UI();
  Menu menuPrincipal = Menu();
  EmpleadoService empleadosServices = EmpleadoService();


  // Metodos
  void iniciarAplicacion() {
    ui.bienvenida('al Gestor de Empleados');



    int opcion;
    do {
      menuPrincipal.opcionesMenu = [
        'Agregar',        // 1)
        'Buscar',         // 2)
        'Editar',         // 3)
        'Eliminar',       // 4)
        'Mostrar Todos',  // 5)
        'Salir'           // 6)
        ];
      ui.mostrarAlerta('¿Qué deseas hacer?');
      menuPrincipal.mostrarMenu();
      ui.mostrarAlerta('Opcion: ');
      opcion = ui.pedirInt();

      // Validacion de la opcion
      opcion = menuPrincipal.validarOpcion(opcion);



      ejecutarMenuPrincipal( opcion );



    } while (opcion != menuPrincipal.opcionesMenu.length);
  }




  void ejecutarMenuPrincipal(int opcion) {
    // mostrarAlerta('========| ${opcionesMenu[opcion - 1].toUpperCase()} |========');
    switch (opcion){
      case 1:
        ui.mostrarAlerta('Agregando Empleado...');

        ui.mostrarAlerta('Nombre: '); String nombre = ui.pedirString();
        ui.mostrarAlerta('Edad: '); int edad = ui.pedirInt();
        ui.mostrarAlerta('Puesto: '); String puesto = ui.pedirString();
        ui.mostrarAlerta('Sueldo por hora: '); double sueldoHora = ui.pedirDouble();

        empleadosServices.agregar(Empleado.Todos(nombre, edad, puesto, sueldoHora));
        break;


      case 2:
        ui.mostrarAlerta('¿A quién estás buscando?');
        ui.mostrarAlerta('Nombre: '); 
        print(empleadosServices.buscarPorNombre( ui.pedirString(), empleadosServices.empleados ));
        break;


      case 3:
      String nuevaEdicion = '';
      Menu menuEdicion = Menu();
      menuEdicion.opcionesMenu = [
        'Nombre',           // 1)
        'Edad',             // 2)
        'Puesto',           // 3)
        'Sueldo por Hora',  // 4)
        '<- Volver'         // 5)
      ];
        do {
          ui.mostrarAlerta('¿A quién deseas editar?');
          for (int i = 0; i < empleadosServices.empleados.length; i++) {
            print('${i + 1}) ${empleadosServices.empleados[i].nombre} - Edad: ${empleadosServices.empleados[i].edad}');
          }

          int noEmpleado = ui.pedirInt() - 1;
          // Validar numero de empleado
          if (noEmpleado < 0 || noEmpleado >= empleadosServices.empleados.length) {
            ui.mostrarError('Ese empleado no existe...');
            exit(0);
          }

          ui.mostrarAtencion('Haz seleccionado al empleado ${empleadosServices.empleados[noEmpleado].nombre}');

          do {
            ui.mostrarAlerta('¿Qué deseas editar?');
            menuEdicion.mostrarMenu();
            ui.mostrarAlerta('Opcion: ');
            int opcion = ui.pedirInt();

            // Validacion de la opcion
            opcion = menuPrincipal.validarOpcion( opcion );

            ejecutarMenuEdicion( opcion, empleadosServices.empleados[noEmpleado] );

            ui.mostrarAlerta('¿Deseas editar otra propiedad? (s/n)');
            nuevaEdicion = ui.pedirString();
          } while (nuevaEdicion != 's');
          opcion = 5;
        } while( opcion != 5 );
        break;


      case 4: 
        ui.mostrarAlerta('¿A quién deseas eliminar?');

        for (int i = 0; i < empleadosServices.empleados.length; i++) {
          print('${i + 1}) ${empleadosServices.empleados[i].nombre} - Edad: ${empleadosServices.empleados[i].edad}');
        }

        int noEmpleado = ui.pedirInt();
        // Validar numero de empleado
        if (noEmpleado < 1 || noEmpleado > empleadosServices.empleados.length) {
          ui.mostrarError('Ese empleado no existe...');
          exit(0);
        }

        empleadosServices.eliminarEmpleado(empleadosServices.empleados[noEmpleado].nombre);

        ui.mostrarAlerta('Se ha elimiado correctamente...');
        break;


      case 5: 
        print(empleadosServices.empleados);
        break;

      case 6:
        break;
      default:
        ui.mostrarError('Esa opcion no existe...');
        break;
    }
  }


  void ejecutarMenuEdicion(int opcion, Empleado empleado) {
    switch(opcion) {
      case 1: 
        ui.mostrarAlerta('Nombre actual: ${empleado.nombre}');
        ui.mostrarAlerta('Nuevo nombre = ');
        empleado.nombre = ui.pedirString();

        ui.mostrarAtencion('Se ha actualizado el nombre correctamente...');
        break;

      case 2: 
        ui.mostrarAlerta('Edad actual: ${empleado.edad}');
        ui.mostrarAlerta('Nueva edad = ');
        empleado.edad = ui.pedirInt();

        ui.mostrarAtencion('Se ha actualizado la edad correctamente...');
        break;

      case 3: 
        ui.mostrarAlerta('Puesto actual: ${empleado.puesto}');
        ui.mostrarAlerta('Nuevo puesto = ');
        empleado.puesto = ui.pedirString();

        ui.mostrarAtencion('Se ha actualizado el puesto correctamente...');
        break;

      case 4: 
        ui.mostrarAlerta('Puesto sueldo por hora: ${empleado.sueldo}');
        ui.mostrarAlerta('Nuevo sueldo = ');
        empleado.sueldo = ui.pedirDouble();

        ui.mostrarAtencion('Se ha actualizado el puesto correctamente...');
        break;
      default:
        break;
    }
  }
}