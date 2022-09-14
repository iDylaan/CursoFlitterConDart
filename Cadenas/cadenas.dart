import 'dart:io';

void main() {
  String? entrada = null;  // ? Operador seguro para aceptar valores nulos
  entrada = stdin.readLineSync();
  /**
   * Para entrada de datos enteros
   * String entrada = stdin.readLineSync();
   * int num = entrada as int;
   *  / Alternativa
   * int num = int.parse(entrada);
   */
  String str = 'Hola mundo';
  if(entrada != null) {
    print(calcularVocales(entrada));
  }
}

String? calcularVocales(String texto) {
  texto = texto.toLowerCase();
  int i = 0, vocales = 0;
  String msg = '';

  while(i < texto.length) {
    if(texto[i] == 'a' || texto[i] == 'e' || texto[i] == 'i' || texto[i] == 'o' || texto[i] == 'u') {
      vocales++;
    }
    i++;
  }


  vocales > 0 ? msg = 'Hay un total de $vocales vocales' : msg = 'No hay vocales';
   return msg;
}