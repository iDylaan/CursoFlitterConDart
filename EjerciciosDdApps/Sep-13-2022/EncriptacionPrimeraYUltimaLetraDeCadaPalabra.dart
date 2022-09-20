import 'dart:io';

void main(List<String> args) {
  print("Introduce una oracion: ");
  String cadena = " ";
  cadena += stdin.readLineSync().toString();
  // String cadena = 'Hola mundo';
  

  print( obtenerPalabras( cadena ) );
}

String obtenerPalabras(String cadena) {
  String cadenaEncriptada = '';
  // String cadenaAux = '';
  int indexEspacio = 0;

  for(int i = 0; i < cadena.length; i++) {
    if(cadena[i] == " ") {
      cadenaEncriptada += encriptarPalabra( cadena.substring(indexEspacio, i)) + " ";
      // cadenaEncriptada += encriptarPalabra( cadenaAux ) + " ";
      indexEspacio = i;
      // cadenaAux = '';
    }
  }
      cadenaEncriptada += encriptarPalabra( cadena.substring(indexEspacio, cadena.length));

  return cadenaEncriptada;
}

String encriptarPalabra( String cadena ) {
  String palabraEncriptada = '';

  int i = 0;
    while(i < cadena.length) {
      if (i == 1) {
        palabraEncriptada += '';
      } else if ( i == (cadena.length - 1) ) {
        palabraEncriptada += '';
      } else {
        palabraEncriptada += cadena[i];
      }

      i++;
    }

  return palabraEncriptada;
}