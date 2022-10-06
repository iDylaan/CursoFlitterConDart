void main(List<String> args) async {
  // FUTURES son lo que en JavaScript las promesas, es una funcion asincrona

  print('Antes del Future');

  final resultado = await httpsGet('htpps://api.nasa.com/aliens');
  print( resultado );

  // httpsGet('htpps://api.nasa.com/aliens')
  // .then( ( resultado ) {
  //   print( resultado.toUpperCase() ); // Future retornanod String por eso tiene metodos de Strings
  // } );

  final nombre = await getNombre( '10' );
  print( nombre );
  // getNombre( '10' ).then( print );
  // getNombre( '10' ).then( (resultado) => print(resultado) );

  print('Despues del Future');

}


Future<String> getNombre(String id) async {
  return '$id - Fernando';
}

// Future<Tipo de variable que va a devolver>
Future<String> httpsGet( String url ) {
  return Future.delayed( Duration( seconds: 3 ), () {
    return 'Hola Mundo - 3 segundos';
  } );

  // return Future.delayed( Duration( seconds: 3 ), () => return 'Hola Mundo - 3 segundos' 
  // );
}