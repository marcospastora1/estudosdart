//Imc com objeto, classe e metodos

void main(){
  Human marcos = Human('Marcos', 71.5, 1.69 );
  print('Nome: ${marcos.nome}');
  print('Peso: ${marcos.peso} kg');
  print('Altura: ${marcos.altura} m');
  double imc = marcos.calcularImc();
  print('IMC: ${imc.toStringAsFixed(2)}');
  print('Classificacao: ${marcos.classificacao(imc)}');
  
  print('------');
  
  Human claudiany = Human('Claudiany', 54, 1.69);
  print('Nome: ${claudiany.nome}');
  print('Peso: ${claudiany.peso} kg');
  print('Altura: ${claudiany.altura} m');
  imc = claudiany.calcularImc();
  print('IMC: ${imc.toStringAsFixed(2)}');
  print('Classificacao: ${claudiany.classificacao(imc)}');
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
}