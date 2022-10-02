/**
 * Convertir la Lista de cadenas a operaciones funcionales
 */
void main(List<String> args) {
  List<String> operaciones = [
    '23+124', '3426+64532',
    '124-46', '34986-1256',
    '872/46', '32438/2345',
    '38*321', '3232*85722',
    '490%32', '98734%2317'];

  /**
   * Generamos un reporte por cada operacion que haya en la lista
   * para ello iteramos en la lista con el operador .forEach y por
   * cada operacion dentro de la lista la va a mandar a desencriptar
   * como parametro de la funcion, a eso se le va a concatenar al reporte
   * para obtener un reporte de operacion por cada operacion
   * que se encuentre en la lista
   */
  String reporte = '';
  operaciones.forEach((operacion) => reporte += desencriptarOperacion(operacion));
  print(reporte);
}

String desencriptarOperacion(String operacion) {
  // Generamos una variable para almacenar la ubicación donde se encuentra el operador
  int posicionOperador = 0;

  /**
   * Iteramos sobre la cadena para encontrar el operador
   */
  for (int i = 0; i < operacion.length; i++) {
    if(operacion[i] == '+' || operacion[i] == '-' || operacion[i] == '/' || operacion[i] == '*' || operacion[i] == '%') {
      posicionOperador = i; // Almacenamos donde está ubicado el operador 
    }
  }

  // =====================| Obtención de números dentro de la operacion |=====================
  /**
   * Para extraer los numeros dentro de la cadena nos vamos a apoyar de la ubicación
   * de donde se encuentra el operador, para ellos vamos a recorrer por partes
   * la cadena "operacion", comenzando desde el indice 0 hasta antes de donde se encuentra
   * el operador, para el segundo numero substraemos desde donde se encuentra el operador 
   * sumando un posicion para omitir al operador hasta antes de donde 
   * llega el tamaño nuestra operacion con operacion.length
   */

  String numeroString1 = operacion.substring(0, posicionOperador);
  String numeroString2 = operacion.substring((posicionOperador + 1), operacion.length);


  // =====================| Convertimos numeros de String a enteros |=====================
  int numero1 = int.parse(numeroString1);
  int numero2 = int.parse(numeroString2);


  // Generamos un reporte individual para almacenar la operacion
  String reporte = '';
  // Generamos una variable donde se va a almacenar el resultado de la operación
  var resultado;

  /**
   * Filtramos donde se encuentra el operador para
   * filtrar la operacion correspondiente a su simbolo operador
   */
  switch(operacion[posicionOperador]) {
    case '+':
    // Realizamos la operacion correspondiente
    resultado = numero1 + numero2;
    // Concatenamos la operacion y el resultado al reporte
    reporte += '$numero1 + $numero2 = $resultado\n';
      break;
    case '-':
    resultado = numero1 - numero2;
    reporte += '$numero1 - $numero2 = $resultado\n';
      break;
    case '/':
    resultado = numero1 / numero2;
    reporte += '$numero1 / $numero2 = $resultado\n';
      break;
    case '*':
    resultado = numero1 * numero2;
    reporte += '$numero1 * $numero2 = $resultado\n';
      break;
    case '%':
    resultado = numero1 % numero2;
    reporte += '$numero1 % $numero2 = $resultado\n';
      break;
    default:
    reporte += 'El operador ${operacion[posicionOperador]} no está considerado\n';
      break;
  }

  // Retornamos el reporte generado
  return reporte;
}