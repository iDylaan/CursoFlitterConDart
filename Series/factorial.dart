import 'dart:math';

void main() {
  int num = 5;
  print( calcularSerie(num) );
}

dynamic calcularSerie(int n) {
  double suma = 0;
  int i = 0;

  // Invalidacion cuando n es negativo
  if(n<0) { return 'No se puede chavo'; }

 while(i <= n) {
    if(i%2 > 0) {
      suma += calcularPotencia(i) / calcularFactorial(i);
    } else {
      suma -= calcularPotencia(i) / calcularFactorial(i);
    }
    i++;
  }

  print( imprimirSerie(n) );
  return suma;
}

num calcularPotencia(int n) {
  num potencia = 0;

  // Ciclo para iterar las potencias
  potencia = pow(2, n); 

  return potencia;
}

int calcularFactorial(int n) {
  int factorial = 0;

  // Validacion con la exepcion del factorial de 0
  n<=1 ? factorial = 1 : factorial = n * (n - 1);  

  return factorial;
}

String imprimirSerie(int n) {
  String mensaje = '';
  double suma = 0;
  int i = 0;

  while(i <= n) {
    if(i%2 > 0) {
      suma += calcularPotencia(i) / calcularFactorial(i);
      mensaje += '+ 2^${i} / ${i}! = $suma \n';
    } else {
      suma -= calcularPotencia(i) / calcularFactorial(i);
      mensaje += '- 2^${i} / ${i}! = $suma \n';
    }
    i++;
  }

  return mensaje;
}