void main() {
  saludar();

  const nombre = 'Daniel';
  
  saludarConNombre( nombre ); //Hola Daniel!
  saludarConParametroOpcional(); //Hola Sin nombre!
  saludarParametrosOpcionalesHibridos( nombre ); // Sin mensaje Daniel
  saludarParametrosOpcionalesHibridos( nombre, 'Hola' ); // Hola Daniel

  final String nombre2 = 'Daniel2';
  saludar2(mensaje: 'bienvenido', nombre: nombre2);
}


void saludar() {
  print('Hola!\nDesde la funcion Saludar()');
}

void saludarConNombre( String name ) {
  print('Hola $name!');
}

// En caso de no recibir un parametro se declara que valor se le va a dar
void saludarConParametroOpcional([ String nombre = "Sin nombre" ]) { 
  print('Hola $nombre!');
}

// Caso anterior de forma hibrida
void saludarParametrosOpcionalesHibridos( String nombre, [ String mensaje = 'Sin mensaje'] ) {
  print('$mensaje $nombre');
}

void saludar2({ 
  required String nombre, // required revoca que los parametros sean obligatorios para mandarse a llamar
  required String mensaje 
  }) {
  print('Hola $nombre $mensaje');
}