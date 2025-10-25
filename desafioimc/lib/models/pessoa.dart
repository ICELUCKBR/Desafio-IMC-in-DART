class Pessoa {
  String _nome = "";
  late double _peso;
  late double _altura;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  double gerarIMC() {
    var imc = _peso / (_altura * _altura);

    if (imc <= 16) {
      print("Magreza grave, procure um medico");
    } else if (imc > 16 && imc <= 17) {
      print("Magreza moderada, agente uma consulta com seu nutricionista");
    } else if (imc > 17 && imc < 18.5) {
      print("Magreza leve, agente uma consulta com seu nutricionista");
    } else if (imc > 18.5 && imc < 25) {
      print("Saudável, Continue com o bom trabalho");
    } else if (imc > 25 && imc < 30) {
      print("Sobrepeso, agente uma consulta com seu nutricionista");
    } else if (imc > 30 && imc < 35) {
      print("Obesidade Grau I");
    } else if (imc > 35 && imc < 40) {
      print("Obesidade Grau II - Severa");
    } else if (imc > 40) {
      print("Obesidade Grau III - Mórbida");
    }
    return imc;
  }
}
