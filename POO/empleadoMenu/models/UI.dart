import 'dart:io';
import './persona.dart';
import '../services/service_empleado.dart';

class UI {
  // Constructor
  UI() {}

  // ============== METODOS ==============

  // Metodos de datos de salida
  void bienvenida( [ String mensaje = '' ] ) => print('========| Bienvenido $mensaje |========');
  void mostrarAlerta( String mensaje ) => print( mensaje );
  void mostrarError( String error ) => print( 'ERROR! $error' );
  void mostrarAtencion( String mensaje ) => print( 'Atención... $mensaje' );

  // Metodos de datos de entrada
  int pedirInt() => int.parse(stdin.readLineSync().toString()); 
  double pedirDouble() => double.parse(stdin.readLineSync().toString()); 
  String pedirString() => stdin.readLineSync().toString(); 
}


class Menu extends UI {
  late List<String> _opcionesMenu = [];

  // Constructor
  Menu();
  Menu.Opciones(
    this._opcionesMenu
  );

  // Setter
  set opcionesMenu(List<String> opciones) => this._opcionesMenu = opciones;
  // Getter
  List<String> get opcionesMenu => this._opcionesMenu;

  // Metodos

  void mostrarMenu() {
    String menu = '';
    int i = 0;
    while(i < opcionesMenu.length) {
      menu += '${i + 1}) ${opcionesMenu[i]}\n';
      i++;
    }
    print(menu);
  }

  int validarOpcion(int opcion) {
    bool opcionNoValida;
      // Se itera hasta que el resultado sea correcto para evitar problemas en el sistema
      do { 
      // Se guarda el resultado de la condicion para validar el ciclo
        opcionNoValida = opcion < 1 || opcion > opcionesMenu.length;
        opcion = opcionNoValida ? pedirOpcionNuevamente() : opcion; 
      } while(opcionNoValida);

    return opcion;
  }

  int pedirOpcionNuevamente() {
    mostrarError('Intenta nuevamente...');
    return pedirInt();
  }
}