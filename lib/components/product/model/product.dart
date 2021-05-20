class Product {
  String id;
  // codigo limit 20
  String pathImg; //url
  String name; //limit 50
  String detail;
  double price; //Lista de price
  String categoryId;

  factory Product.empty() {
    return Product(
        id: "", pathImg: "", name: "", detail: "", price: 0, categoryId: "");
  }

  Product({
    required this.id,
    required this.pathImg,
    required this.name,
    required this.detail,
    required this.price,
    required this.categoryId,
  });
}
