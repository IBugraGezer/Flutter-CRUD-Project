class Product {
  int id;
  String name;
  String description;
  double unitPrice;

  Product({this.name, this.description, this.unitPrice});

  Product.withId({this.id, this.name, this.description, this.unitPrice});

  Map<String, dynamic> toMap() {
    var dataMap = Map<String, dynamic>();
    dataMap['name'] = name;
    dataMap['description'] = description;
    dataMap['unitPrice'] = unitPrice;
    if (id != null) {
      dataMap['id'] = id;
    }
    return dataMap;
  }

  Product.fromMap(dynamic o) {
    print(o["unitPrice"]);
    this.id = o["id"];
    this.name = o["name"];

    this.description = o["description"];
    if (unitPrice is int) {
      this.unitPrice = o["unitPrice"].toDouble();
    }
  }
}
