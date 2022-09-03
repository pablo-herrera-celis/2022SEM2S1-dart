void main() {
  try {
    String elNombre = obtenerNombre("german");
    print(elNombre);
  } on FormatException catch (e) {
    print("Se presento una excepcion FormatException = $e");
  } on Exception catch (e) {
    print("Se presenta una exception = $e");
  } catch (e) {
    print("Se presento una excepcion");
  } finally {
    print("Este es el finally");
  }
}

String obtenerNombre(String nombre) {
  if (nombre == 'german') {
    throw FormatException("Este nombre no esta permitido");
  }
  if (nombre == 'Miguel') {
    throw Exception("Este nombre no esta permitido");
  }
  return "Mi nombre es $nombre";
}
