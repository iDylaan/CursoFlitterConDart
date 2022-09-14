void main() {
  List x = [];
  List lista = [3, 5, 4, 3, 9, -23, 4, false, 'Juan', true];
  List<int> w = [3, 5, 4];

  // Acceder a sus elementos
  print(w[1]);

  // Apregar un elemento al arreglo
  w.add(7);

  print(x);
  print(lista);
  print(w);

  // while
  int i = 0;
  while(i < w.length) {
    print('Ciclo While\n${w[i++]}');
  }

  // For in
  for(int elemento in w) {
    print('For in\n $elemento');
  }

  //For each
  w.forEach((element) { 
    print('For Each\n$element');
    });
    
}