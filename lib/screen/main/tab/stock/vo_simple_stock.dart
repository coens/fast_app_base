class SimpleStock {
  final String stockName;

  SimpleStock(this.stockName);

  //static fromJson(json) {}
  factory SimpleStock.fromJson(dynamic json){
    return SimpleStock(json['name']);
  }

}

