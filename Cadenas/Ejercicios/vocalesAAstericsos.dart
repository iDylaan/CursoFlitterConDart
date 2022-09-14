import 'dart:io';

void main() {
    final String? entrada = stdin.readLineSync();
    entrada != null ? print( encriptarVocales(entrada) ) : print('No introduciste nada...');
}

String encriptarVocales(txt) {
    int i = 0;
    String msg = '';
    while(i < txt.length) {
        if(txt[i].toLowerCase() == 'a' || txt[i].toLowerCase() == 'e' || txt[i].toLowerCase() == 'i' || txt[i].toLowerCase() == 'o' || txt[i].toLowerCase() == 'u') {
          msg += '*';
        } else {
          msg += txt[i];
        }
        i++;
    }

    return msg;
}