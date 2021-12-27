//Crie uma classe para representar uma pessoa, com os atributos privados de nome, data de nascimento e altura. Crie os métodos públicos para calcular a idade da pessoa e imprimir todos os seus dados.

class Pessoa {

  Pessoa(this._nome, this._nascimento, this._altura){
    print('$nome foi cadastrado');
  }

  String _nome;
  DateTime _nascimento;
  double _altura;

  String get nome {
    return _nome;
  }

  set nome(String nome){
    _nome = nome;
  }

  DateTime get nascimento {
    return _nascimento;
  }

  set nascimento(DateTime nascimento){
    _nascimento = nascimento;
  }

  double get altura {
    return _altura;
  }

  set altura(double altura){
    _altura = altura;
  }
  
  int idade(){
    return DateTime.now().year - nascimento.year;
  }

  void mostrarDados(){
    print('Nome: $nome');
    print('Nascimento: ${nascimento.day}/${nascimento.month}/${nascimento.year}');
    print('Idade: ${idade()}');
    print('Altura: $altura m');
  }
}

void main(){
  Pessoa p1 = Pessoa('Marcos', DateTime(1996, 09, 28), 1.69 );
  p1.mostrarDados();
}