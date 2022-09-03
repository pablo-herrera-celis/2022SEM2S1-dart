void main() {
  Persona objetoPersona =
      new Persona(nombre: "Juan", apellido: "Perez", edad: 40);
  Padre objetoPadre = new Padre(2);
  print(objetoPadre.apellido);

  var objetoTaxy = Taxy();
  objetoTaxy.placa = "123";
  print(objetoTaxy.tipoVehiculo());
  print(objetoTaxy.placa);

  if (objetoTaxy is Taxy) {
    print("Si es un tipo taxi");
  } else {
    print("NO, Si es de tipo taxy");
  }
}

class Persona {
  String nombre;
  String? apellido;
  int? edad;
  Persona({required this.nombre, required this.apellido, required this.edad});
  Persona.completo(this.nombre);
}

class Padre extends Persona {
  int hijos;
  // Padre(this.hijos) : super(nombre: "German", apellido: "Perez", edad: 44);
  Padre(this.hijos) : super.completo("German");
}

abstract class Vehiculo {
  late String placa;

  bool vehiculoEncendido();
}

class Taxy extends Vehiculo with Terrestre, Acuatico {
  @override
  bool vehiculoEncendido() {
    return true;
  }
}

mixin Terrestre {
  int? llantas;
  int? kilometraje;

  tipoVehiculo() {
    return "Terrestre";
  }
}
mixin Acuatico {
  int? motores;
  tipoVehiculo() {
    return "Acuatico";
  }
}
