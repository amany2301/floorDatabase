class Product {
  int? id;
  String? categoryName;

  Product(
      {
        this.id,
        this.categoryName,});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['categoryName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['categoryName'] = categoryName;
    return data;
  }
}