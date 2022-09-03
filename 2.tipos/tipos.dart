void main() {
  int var1 = 15;
  double var2 = 2.0;
  var var3 = var1;
  var var4 = var2;
  var var5 = var1;
  var var6 = var2;
  //print(var3);
  //print(var4.ceil());
  //print(var6.floor());
  //print(var2.abs());

  String text1 = "Pepe tiene ${var1} manzanas";
  print(text1);
  String text2 = "Tiene una altura de ${var2}";
  print(text2);
  String text3 = "El nombre es " + " Pablo";
  String text4 = "El nombre es " " Pablo";
  print(text4 + "\n" + text3);
  String text5 = "Le quitaron $var1 manzanas";
  print(text5);
  String text6 = '''CREATE TABLE persona(
    nombre varchar(20),
    edad integer
  );''';
  print(text6);
  String text8 = r"Le queda solo $var1 minutos";
  print(text8);
  /////////////////////////LIST
  var list1 = ["Gato", "Perro", "Oso"];
  var list2 = ["Gato", 123, true];
  List<String> list3 = ["Conejo", "Zorro", "Jirafa"];
  print(list1);
  list1.clear();
  var list;
  var list4 = ["Paco", ...list2, ...?list];
  print(list1);
  print(list4);
  print(list4.reversed);
  var set1 = {"Gato", "Perro", "Oso", ...list3};
  print(set1);
  set1.add("Juanito");
  print(set1);

  var map1 = {'red': 'rojo', 'green': 'verde', 'blue': 'azul'};
  print(map1);
  map1['black'] = "negro";
  print(map1);

  //NULL safety
  List <String>? listado10 = null;
  List <String?> listado11 = ["uno","dos",null];


}
