import 'dart:io';

// ignore: camel_case_types
class console_utils {
  static String perguntar(String texto) {
    print(texto);

    return dadoString();
  }

  static String dadoString() {
    return stdin.readLineSync() ?? "";
  }

  static double leituraMedidas(String texto) {
    print(texto);

    return adquirirDouble();
  }

  static double adquirirDouble() {
    var value = double.parse(dadoString());
    return value;
  }

  static String apresentarDados(String nome, double imc) {
   var  message = "$nome, seu imc é de ${imc.toStringAsFixed(0)}";

    return message;
  }
}
