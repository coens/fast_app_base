class SimpleStock {
  final String name;

  SimpleStock(this.name);

  //static fromJson(json) {}
  factory SimpleStock.fromJson(dynamic json){
    return SimpleStock(json['name']);
  }

  @override
  String toString() {
    return name;
  }

}

