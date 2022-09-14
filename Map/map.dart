void main() {
  // Objeto persona de tipo Map

  /**
   * Map es objeto que almacena datos con sintaxis
   * <tipo de dato>llave: <tipo de datos>valor
   * donde el tipo de dato puede variar dependiendo de como declaremos el Map
   * Por default se genera con ambas partes de tipo <dynamic>
   * Ej.-
   */
  Map persona = {
    'nombre': 'Daniel',
    'edad': 21,
    'soltero': false,
    true: false,
    1: 100,
    2: 50.34
  };

  print( persona ); // {nombre: Daniel, edad: 21, soltero: false, true: false, 1: 100, 2: 50.34}

  // Imprimir un pasando su llave
  print( persona['nombre'] );  // 'Daniel'
  print( persona['soltero'] );  // false
  // Si la llave es un tipo de dato en especifico se debe mandar a llamar con el mismo tipo de dato ej.-
  print( persona[true] ); // false
  print( persona[1] ); // 100
  print( persona[2] ); // 50.34

  // Para agregar un elemento 
  persona.addAll( { 3: 'Brandon' } ); // {nombre: Daniel, edad: 21, soltero: false, true: false, 1: 100, 2: 50.34, 3: Brandon}
  print( persona );

  // objeto Map tipeado
  // Tipo de dato para llave y valor
  // < llave,  valor>
  Map<String, String> persona2 = {
    'persona': 'Daniel'
  };

  persona2.addAll( { 'empresa': 'UTN' } );

  print( persona2 ); //{persona: Daniel, empresa: UTN}
}