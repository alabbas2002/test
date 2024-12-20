class ProductsModel {
  final String title;
  final String image;
  final double price;

  ProductsModel({
    required this.title,
    required this.image,
    required this.price,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      title: json['title'],
      image: json['image'],
      price: json['price'].toDouble(),
    );
  }
  // factory ProductsModel.fromJson(Map<String, dynamic> json) {
  //   return ProductsModel(
  //     title: json['title'],
  //     image: json['image'],
  //     price: json['price'].toDouble(),
  //   );
  // }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'image': image,
      'price': price,
    };
  }
}
