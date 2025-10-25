class NomeInvalidoException implements Exception {
  String error() => "Não é permitido";

  @override
  String toString() {
    return "Enrada invadalida: ${error()}";
  }
}
