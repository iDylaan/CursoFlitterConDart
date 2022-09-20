import 'dart:io';

void main() {
  print("Introduce un texto: ");
  String txt = stdin.readLineSync().toString();
  print( validarPalindromo(txt) );
}

String validarPalindromo(String txt) {
  int i = 0;
  int j = txt.length - 1;
  String txtInverso = '';
  String msg = '';
  while(j >= 0) {
    txtInverso += txt[j].toLowerCase();
    j--;
  }

  while(i < txt.length) {
    if(txtInverso[i].toLowerCase() == txt[i]) {
      msg = 'Es palindromo';
    } else {
      msg = 'No es palindromo';
    }
    i++;
  }

  /**
   * Otra forma de comparar cadenas
   * 
   * if(txt.compareTo(Inv) == 0) {
   *  return 'Es palindromo';
   * } else {
   *  return 'No es palindromo';
   * }
   */

  return msg;
}