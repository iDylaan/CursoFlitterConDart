import 'dart:io';
void main(List<String> args) {
  print("Introduce un texto: ");
  String cadena = stdin.readLineSync().toString();
  String cadenaEncriptada = encriptarCadena(cadena);

  print(cadenaEncriptada);
}

String encriptarCadena(String cadena) {
  String cadenaEncriptada = '';

  int i = 0;
  while(i < cadena.length) {
    if (i == 0) {
      cadenaEncriptada += '';
    } else if ( i == (cadena.length - 1) ) {
      cadenaEncriptada += '';
    } else {
      cadenaEncriptada += cadena[i];
    }
    
    i++;
  }
  return cadenaEncriptada;
}