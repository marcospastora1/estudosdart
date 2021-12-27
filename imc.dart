//Imc com objeto, classe e metodos

void main(){
  Human marcos = Human('Marcos', 71.5, 1.69 );
  marcos.exibirDados();
  
  print('------');
  
  Human claudiany = Human('Claudiany', 54, 1.69);
  claudiany.exibirDados();
}

//classe que representa uma pessoa
class Human {
  //construtor
  Human(this._nome, this._peso, this._altura){
    print('$nome foi cadastrado(a)');
  }

  //atributos privados
  String _nome;
  double _peso;
  double _altura;

  //getter e setter nome
  set nome(String nome) { //settar o atributo privado numa variavel
    _nome = nome;
  }
  
  String get nome { //pegar a variavel criada e retornar a variavel privada
    return _nome;
  }

   //getter e setter peso
  set peso(double peso){ //settar o atributo privado numa variavel
    this._peso = peso;
  }

  double get peso { //pegar a variavel criada e retornar a variavel privada
    return _peso;
  }

  //getter e setter altura
  set altura(double altura){ //settar o atributo privado numa variavel
    this._altura = altura;
  }

  double get altura{ //pegar a variavel criada e retornar a variavel privada
    return _altura;
  }

  //metodo para calcular IMC
  double calcularImc(){
    double imc = peso / (altura * altura);
    return imc;
  }
  
  //metodo para classificar o IMC
  String classificacao(imc){
    if(imc < 18.5){
      return 'Abaixo do peso';
    }else if (imc < 24.9){
      return 'Peso normal';
    }else if (imc < 29.9){
      return 'Sobrepeso';
    }else if (imc < 34.9){
      return 'Obesidade grau I';
    }else if (imc < 39.9){
      return 'Obesidade grau II';
    }else{
      return 'Obesidade grau III';
    }
  }

  //metodo para exibir dados do usuario
  void exibirDados(){
    print('Nome: $nome');
    print('Peso: $peso kg');
    print('Altura: $altura m');
    double imc = calcularImc();
    print('IMC: ${imc.toStringAsFixed(2)}');
    print('Classificacao: ${classificacao(imc)}');
  }
}