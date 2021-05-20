class Product {
  String id;
  // codigo limit 20
  String code;
  String pathImg;
  String name; //limit 50
  String detail;
  List<Price> prices;
  String categoryId;

  factory Product.empty() {
    return Product(
        id: "",
        code: "",
        pathImg: "",
        name: "",
        detail: "",
        prices: [],
        categoryId: "");
  }

  Product({
    required this.id,
    required this.code,
    required this.pathImg,
    required this.name,
    required this.detail,
    required this.prices,
    required this.categoryId,
  });
}

class Price {
  String id;
  String name;
  double price;

  Price({required this.id, required this.name,required this.price});
}
