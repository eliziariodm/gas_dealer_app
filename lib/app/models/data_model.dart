class DataModel {
  String? tipo;
  String? nome;
  String? cor;
  double? nota;
  String? tempoMedio;
  bool? melhorPreco;
  double? preco;

  DataModel({
    this.tipo,
    this.nome,
    this.cor,
    this.nota,
    this.tempoMedio,
    this.melhorPreco,
    this.preco,
  });

  DataModel.fromJson(Map<String, dynamic> json) {
    tipo = json['tipo'];
    nome = json['nome'];
    cor = json['cor'];
    nota = json['nota'];
    tempoMedio = json['tempoMedio'];
    melhorPreco = json['melhorPreco'];
    preco = json['preco'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['tipo'] = this.tipo;
    data['nome'] = this.nome;
    data['cor'] = this.cor;
    data['nota'] = this.nota;
    data['tempoMedio'] = this.tempoMedio;
    data['melhorPreco'] = this.melhorPreco;
    data['preco'] = this.preco;
    return data;
  }
}
