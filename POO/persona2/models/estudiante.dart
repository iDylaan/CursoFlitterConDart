import './persona2.dart';

class Estudiante extends Persona {
  // PROPIEDADES
  int _id;
  String _carrera;
  String _cuatrimestre;

  // CONSTRUCTOR
  Estudiante([
    String nombre = 'Sin nombre',
    int edad = 0,
    int this._id = 0,
    String this._carrera = 'Sin carrera',
    String this._cuatrimestre = 'Sin cuatrimestre']
  ):super(nombre,edad);

  // SETTERS AND GETTERS
  set id(int id) => this._id = id;
  set carrera(String carrera) => this._carrera = carrera;
  set cuatrimestre(String cuatrimestre) => this._cuatrimestre = cuatrimestre;

  int get id => this._id;
  String get carrera => this._carrera;
  String get cuatrimestre => this._cuatrimestre;

  @override
  // super. => invoca metodos o propiedades de su clase padre
  String toString() {
    return '''
    Estudiante[${super.toString()}
    id = $id
    carrera = $carrera
    cuatrimestre = $cuatrimestre]''';
  }
}