import 'package:desafioimc/models/console_utils.dart';
import 'package:desafioimc/models/expections/name_invalidation.dart';
import 'package:desafioimc/models/pessoa.dart';

void execute(){
  var pessoa = Pessoa();

//INICIAL _____________________
  print("Calculadora IMC");

  print("Insira os dados indicados para que seja realizado o calculo.");

//Tratamento e aquisição de dados sobre o  Nome______________________
  String? nome;

  do {
    try {
      nome = console_utils.perguntar("Digite seu nome:");
      if (nome.trim() == "") {
        throw NomeInvalidoException();
      }
    } catch (NomeInvalidoException) {
      print(NomeInvalidoException);
    }
  } while (nome == "");

  pessoa.setNome(nome ?? "");

//Tratamento e aquisição de dados sobre o  PESO______________________
  double peso = 0.0;

  do {
    try {
      peso = console_utils.leituraMedidas("Qual seu peso?");
      if (peso <= 0.0) {
        throw NomeInvalidoException();
      }
    } catch (e) {
      print("Insira um valor");
    }
  } while (peso <= 0.0);

  pessoa.setPeso(peso);

//Tratamento e aquisição de dados sobre o  Altura______________________
  double altura;

  do {
    altura = console_utils.leituraMedidas("Qual sua altura?");
    try {
      if (altura <= 0.0) {
        throw NomeInvalidoException();
      }
    } catch (e) {
      print("Insira um valor");
    }
  } while (altura <= 0.0);

//Converte 100.0 for 1.00
  if (altura > 100.0) {
    altura = altura / 100.0;
  }
  pessoa.setAltura(altura);

//Finaliza gerando o calculo e demonstrando os resultados.
  var imcResolve = pessoa.gerarIMC();

  print(console_utils.apresentarDados(pessoa.getNome(), imcResolve));

}