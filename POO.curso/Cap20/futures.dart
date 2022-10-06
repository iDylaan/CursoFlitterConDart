void main(List<String> args) {
  // FUTURES son lo que en JavaScript las promesas, es una funcion asincrona

  print('Antes del Future');

  httpsGet('htpps://api.nasa.com/aliens')
  .then( ( resultado ) {
    print( resultado.toUpperCase() ); // Future retornanod String por eso tiene metodos de Strings
  } );

  print('Despues del Future');

}

// Future<Tipo de variable que va a devolver>
Future<String> httpsGet( String url ) {
  return Future.delayed( Duration( seconds: 3 ), () {
    return 'Hola Mundo - 3 segundos';
  } );

  // return Future.delayed( Duration( seconds: 3 ), () => return 'Hola Mundo - 3 segundos' 
  // );
}