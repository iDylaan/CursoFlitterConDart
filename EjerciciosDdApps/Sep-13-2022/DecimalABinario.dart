import 'dart:io';
void main(List<String> args) {
  print('Decimal a Binario\nnumero decimal: ');
  int decimal = int.parse( stdin.readLineSync().toString() );

  print('$decimal => ${convertirDecimalABinario( decimal )}');
}

int convertirDecimalABinario( int decimal ) {
  String binario = '';  

  do {
    binario += decimal%2 > 0 ? '0' : '1';
    print('$decimal / 2 = ${(decimal / 2)} -> $binario');
    decimal = (decimal / 2).truncate();
  } while( decimal != 0 );

  return int.parse(binario);
}