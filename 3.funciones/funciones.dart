void main() {
  print(obtenerNombre("Juan"));
  print(obtenerApellido("Juan","Herrera"));
  print(obtenerApellidoNameParameter(apellido: "Celis"));

}
String obtenerNombre(String valor){
  return 'Mi nombre es $valor';
}

String obtenerApellido(String nombre, String apellido){
  return 'Mi nombre es $nombre $apellido';
}

String obtenerApellidoNameParameter({String? nombre, required String apellido, int edad =25}){
  return 'Mi nombre es $nombre $apellido';
}

String obtenerApellidoDos(String nombre, [String? apellido]){
  return 'Mi nombre es $nombre $apellido';
}

var miFuncionAnonima = (String valor){
  return "El valor es $valor";
};