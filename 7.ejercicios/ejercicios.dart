void main() {
  List<int>listadoEdad =  [121, 12, 33, 14, 3, 202];
  print(listadoEdad);
  listadoEdad.sort();
  var sum = listadoEdad.reduce((a, b) => a + b);
  var prom = sum/listadoEdad.length;
  print(listadoEdad);
  print(listadoEdad.first);
  print(listadoEdad.last);
  print(prom);

  final lists = [
    [1,1,2,3,5,6,13,21,34,55,89],
    [1,2,3,4,5,6,7,8,9,10,11,12,13]
  ];
  final listafinal = lists.fold<Set>(lists.first.toSet(), (a,b) => a.intersection(b.toSet()));
  print(listafinal);
}

