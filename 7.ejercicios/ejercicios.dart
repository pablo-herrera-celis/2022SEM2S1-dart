void main() {
  //Ejercicio 1
  print("----EJERCICIO 1 ----");
  List<int> listadoEdad = [121, 12, 33, 14, 3, 202];
  //print(listadoEdad);
  listadoEdad.sort();
  var sum = listadoEdad.reduce((a, b) => a + b);
  var prom = sum / listadoEdad.length;
  //print(listadoEdad);
  print("La edad menor en el arreglo es: ${listadoEdad.first}");
  print("La edad mayor en el arreglo es: ${listadoEdad.last}");
  print("Promedio de Edad: ${prom}");

//Ejercicio 2
  print("----EJERCICIO 2 ----");
  final lists = [
    [1, 1, 2, 3, 5, 6, 13, 21, 34, 55, 89],
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
  ];
  final listafinal =
      lists.fold<Set>(lists.first.toSet(), (a, b) => a.intersection(b.toSet()));
  print("Lista con elementos comunes: ${listafinal}");

// Ejercicio 3
  print("----EJERCICIO 3 ----");
  String palindromo = "SALAS";
  if (palindromo.split("").reversed.join("") == palindromo) {
    print("La palabra ${palindromo} es un palindromo");
  } else {
    print("La palabra ${palindromo} NO es un palindromo");
  }

// Ejercicio 4
  print("----EJERCICIO 4 ----");
  var list = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  var list_pares = list.where((e) => e % 2 == 0);
  print("Esta es la lista de pares: ${list_pares}");

// Ejercicio 5
  print("----EJERCICIO 5 ----");
  Artist art = new Artist("Rojo");
  print("The artist name is: "+art.nombre);

  Engineer eng = new Engineer("Sistemas");
  print("The Engineer is: "+eng.draw());

  Doctor doc = new Doctor(4);
  print("the doctor has ${doc.experience} years of experience and "+doc.exercise());

  Athlete ath = new Athlete("Boxer");
  print("The athlete is: " +ath.box());
}

class Persona {
  String nombre;
  String? apellido;
  int? edad;
  Persona({required this.nombre, required this.apellido, required this.edad});
}

class Artist extends Persona {
  String? pintura;
  Artist(this.pintura) : super(nombre: "Pablo", apellido: "Herrera", edad: 24);
  draw() {
    return "Drawing";
  }
}

class Engineer extends Persona {
  String? carrera;
  Engineer(this.carrera)
      : super(nombre: "Wilmer", apellido: "Adolfo", edad: 24);
  draw() {
    return "Drawing";
  }

  read() {
    return "Reading";
  }
}

class Doctor extends Persona {
  int? experience;
  Doctor(this.experience)
      : super(nombre: "Juan", apellido: "Contreras", edad: 24);
  read() {
    return "Reading";
  }

  exercise() {
    return "Exercising";
  }
}

class Athlete extends Persona with Boxer {
  String? tipo;
  Athlete(this.tipo) : super(nombre: "Mario", apellido: "Cartagena", edad: 24);
}

mixin Boxer {
  int? weight;
  int? height;
  exercise() {
    return "Exercising";
  }

  box() {
    return "Boxing";
  }
}
