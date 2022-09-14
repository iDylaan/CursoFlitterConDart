void main() {
  List<int> lista = [3, 5, 7, 3, 2, 6, 64];

  print(imprimirLista(lista));
  print('Suma: ${sumarElementosDelArreglo(lista)}');
  print('El mayor es: ${obtenerMayor(lista)}');
  print('El menor es: ${obtenerMenor(lista)}');

  print(imprimirParesImpares(lista));
}

String imprimirParesImpares(List<int> l) {
  String msg = '';
  l.forEach((e) {
    msg += (e%2 == 0) ? '$e es par\n' : '$e es inpar\n';
   });

   return msg;
}

int obtenerMayor(List<int> l) {
  int max = 0;
  for(int i in l) {
    if(l[i] > max) {
      max = l[i];
    }
  }

  return max;
}

int obtenerMenor(List<int> l) {
  int min = sumarElementosDelArreglo(l);
  for(int i in l) {
    if(l[i] < min) {
      min = l[i];
    }
  };
  return min;
}

int sumarElementosDelArreglo(List<int> l) {
  int suma = 0;
  l.forEach((i) {
    suma += i;
   });

   return suma;
}

String imprimirLista(List<int> l) {
  String msg = '';
  int i = 0;
  while(i < l.length) {
    msg += '$i => ${l[i]}\n';
    i++;
  }

  return msg;
}